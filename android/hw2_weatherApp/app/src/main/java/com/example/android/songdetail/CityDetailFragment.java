/*
 * Copyright (C) 2017 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.example.android.songdetail;


import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.fragment.app.Fragment;

import com.example.android.songdetail.content.CityUtils;

import com.example.android.songdetail.datamodel.*;
import com.example.android.songdetail.network.*;

import java.util.HashMap;
import java.util.List;

/**
 * A simple {@link Fragment} subclass that displays the song
 * detail based on the song selected from a list.
 */
public class CityDetailFragment extends Fragment {

    // Song includes the song title and detail.
    public String city;

    private TextView feedback;

    IpmaWeatherClient client = new IpmaWeatherClient();
    private HashMap<String, City> cities;
    private HashMap<Integer, WeatherType> weatherDescriptions;

    public CityDetailFragment() {
        // Required empty public constructor
    }

    private void callWeatherForecastForACityStep1(String city) {

        feedback.append("\nGetting forecast for: " + city); feedback.append("\n");

        // call the remote api, passing an (anonymous) listener to get back the results
        client.retrieveWeatherConditionsDescriptions(new WeatherTypesResultsObserver() {
            @Override
            public void receiveWeatherTypesList(HashMap<Integer, WeatherType> descriptorsCollection) {
                CityDetailFragment.this.weatherDescriptions = descriptorsCollection;
                callWeatherForecastForACityStep2( city);
            }
            @Override
            public void onFailure(Throwable cause) {
                feedback.append("Failed to get weather conditions!");
            }
        });

    }

    private void callWeatherForecastForACityStep2(String city) {
        client.retrieveCitiesList(new CityResultsObserver() {

            @Override
            public void receiveCitiesList(HashMap<String, City> citiesCollection) {
                CityDetailFragment.this.cities = citiesCollection;
                City cityFound = cities.get(city);
                if( null != cityFound) {
                    int locationId = cityFound.getGlobalIdLocal();
                    callWeatherForecastForACityStep3(locationId);
                } else {
                    feedback.append("unknown city: " + city);
                }
            }

            @Override
            public void onFailure(Throwable cause) {
                feedback.append("Failed to get cities list!");
            }
        });
    }

    private void callWeatherForecastForACityStep3(int localId) {
        client.retrieveForecastForCity(localId, new ForecastForACityResultsObserver() {
            @Override
            public void receiveForecastList(List<Weather> forecast) {
                for (Weather day : forecast) {
                    feedback.append(day.toString());
                    feedback.append("\t");
                }
            }
            @Override
            public void onFailure(Throwable cause) {
                feedback.append( "Failed to get forecast for 5 days");
            }
        });

    }

    /**
     * This method loads the content specified by the fragment arguments.
     *
     * @param savedInstanceState Bundle with recent saved state.
     */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments().containsKey(CityUtils.CITY_ID_KEY)) {
            // Load the content specified by the fragment arguments.
            city = CityUtils.CITY_ITEMS.get(getArguments()
                    .getInt(CityUtils.CITY_ID_KEY)).city_name;
        }
    }

    /**
     * This method inflates the fragment's view and shows the song
     * detail information.
     *
     * @param inflater LayoutInflater object to inflate views
     * @param container ViewGroup that the fragment's UI should be attached to
     * @param savedInstanceState Bundle containing previous state
     * @return Fragment view
     */
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.city_detail,
                container, false);

        // Show the detail information in a TextView.
        feedback = rootView.findViewById(R.id.city_detail);
        if (city != null) {
            callWeatherForecastForACityStep1(city);
        }

        return rootView;
    }

    /**
     * This method sets up a bundle for the arguments to pass
     * to a new instance of this fragment.
     *
     * @param selectedCity Integer position of selected song in song list
     * @return fragment
     */
    public static CityDetailFragment newInstance (int selectedCity) {
        CityDetailFragment fragment = new CityDetailFragment();
        // Set the bundle arguments for the fragment.
        Bundle arguments = new Bundle();
        arguments.putInt(CityUtils.CITY_ID_KEY, selectedCity);
        fragment.setArguments(arguments);
        return fragment;
    }
}
