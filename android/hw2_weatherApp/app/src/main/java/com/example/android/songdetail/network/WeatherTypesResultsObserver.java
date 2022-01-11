package com.example.android.songdetail.network;

import java.util.HashMap;

import com.example.android.songdetail.datamodel.WeatherType;

public interface WeatherTypesResultsObserver {
    public void receiveWeatherTypesList(HashMap<Integer, WeatherType> descriptorsCollection);
    public void onFailure(Throwable cause);
}
