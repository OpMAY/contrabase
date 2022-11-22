package com.mapper;

import com.model.service.alarm.AlarmType;
import com.model.service.alarm.EmployeeAlarm;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface EmployeeAlarmMapper {
    ArrayList<EmployeeAlarm> getAllAlarmsByType(@Param("employee_no") int employee_no, @Param("type") AlarmType type);

    void insertAlarm(EmployeeAlarm alarm);

    void updateReadStatus(@Param("employee_no") int employee_no, @Param("type") AlarmType type);

    void deleteAlarm(int no);

    void deleteAllAlarms(@Param("employee_no") int employee_no, @Param("type") AlarmType type);
}
