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

package com.example.android.songdetail.content;

import java.util.ArrayList;
import java.util.List;

/**
 * Helper class for providing sample song content.
 */

public class CityUtils {

    // An ArrayList of Songs
    public static final List<CityInfo> CITY_ITEMS = new ArrayList<>();

    // The ID for the index into song titles.
    public static final String CITY_ID_KEY = "item_id";

    // The number of songs.
    private static final int COUNT = 7;

    /**
     * A Song item represents a song title, and song details.
     */
    public static class CityInfo {
        public final String city_name;
        public final String details;

        private CityInfo(String content, String details) {
            this.city_name = content;
            this.details = details;
        }
    }

    /**
     * Add an item to the array.
     *
     * @param item Each song
     */
    private static void addItem(CityInfo item) {
        CITY_ITEMS.add(item);
    }

    static {
        // Fill the array with songs.
        for (int i = 0; i < COUNT; i++) {
            addItem(createCityAtPosition(i));
        }
    }

    /**
     * Manually creates each song title and song detail.
     *
     * @param position Position of the song in the list.
     * @return
     */
    private static CityInfo createCityAtPosition(int position) {
        String newTitle;
        String newDetail;
        switch (position) {
            case 0:
                newTitle = "Aveiro";
                newDetail = "";
                break;
            case 1:
                newTitle = "Santarém";
                newDetail = "";
                break;
            case 2:
                newTitle = "Porto";
                newDetail="";
                break;
            case 3:
                newTitle = "Lisboa";
                newDetail="";
                break;
            case 4:
                newTitle = "Braga";
                newDetail="";
                break;
            case 5:
                newTitle = "Faro";
                newDetail="";
                break;
            default:
                newTitle = "Aveiro";
                newDetail="";
                break;
        }
        return new CityInfo(newTitle, newDetail);
    }
}