package com.example.android.songdetail.network;

import java.util.HashMap;

import com.example.android.songdetail.datamodel.City;

public interface  CityResultsObserver {
    public void receiveCitiesList(HashMap<String, City> citiesCollection);
    public void onFailure(Throwable cause);
}
