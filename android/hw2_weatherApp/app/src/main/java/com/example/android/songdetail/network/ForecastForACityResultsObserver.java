package com.example.android.songdetail.network;

import java.util.HashMap;
import java.util.List;

import com.example.android.songdetail.datamodel.Weather;
import com.example.android.songdetail.datamodel.WeatherType;

public interface ForecastForACityResultsObserver {
    public void receiveForecastList(List<Weather> forecast);
    public void onFailure(Throwable cause);
}
