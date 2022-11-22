package com.model.service.work;

import com.model.common.Time;
import com.model.service.VEHICLE_TYPE;
import lombok.Data;

import java.util.ArrayList;

@Data
public class Work extends Time {
    private int no;
    private int supplier_no;
    private String name;
    private VEHICLE_TYPE vehicle_type;
    private ArrayList<String> work_dates;
    private String start_place;
    private Double start_place_x;
    private Double start_place_y;
    private String end_place;
    private Double end_place_x;
    private Double end_place_y;
    private Double distance;
    private String corp_name;
    private String corp_manager;
    private PARKING_INFO parking_info;
    private DISHING_INFO dishing_info;
    private ArrayList<String> hashtag;
    private String start_time;
    private String end_time;
    private WORK_CONDITION work_condition;
    private int budget;
    private String details;
    private String notice;
    private boolean is_emergency;

    private ArrayList<WorkApplyStock> stocks;
    private boolean is_like;
    private int stock_left;
}
