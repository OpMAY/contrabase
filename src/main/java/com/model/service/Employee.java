package com.model.service;

import com.model.User;
import com.model.common.MFile;
import com.model.service.employee.Place;
import lombok.Data;

import java.util.ArrayList;

@Data
public class Employee {
    private int no;
    private int user_no;
    private String car_code;
    private MFile driver_license;
    private MFile transport_license;
    private int point;
    private Place work_places;
    private VEHICLE_TYPE vehicle_type;
    private boolean new_work_alarm;
    private boolean emergency_work_alarm;
    private boolean report_alarm;
    private boolean marketing_alarm;
    private String marketing_agree_date;

    private User user;
}
