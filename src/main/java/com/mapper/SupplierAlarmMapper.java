package com.mapper;

import com.api.lunarsoft.alarm.Alarm;
import com.model.service.alarm.AlarmType;
import com.model.service.alarm.SupplierAlarm;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface SupplierAlarmMapper {
    ArrayList<SupplierAlarm> getAllAlarmsByType(@Param("supplier_no") int supplier_no, @Param("type") AlarmType type);

    void insertAlarm(SupplierAlarm alarm);

    void updateReadStatus(@Param("supplier_no") int supplier_no, @Param("type") AlarmType type);

    void deleteAlarm(int no);

    void deleteAllAlarms(@Param("supplier_no") int supplier_no, @Param("type") AlarmType type);
}
