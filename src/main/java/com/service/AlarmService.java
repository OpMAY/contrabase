package com.service;


import com.dao.EmployeeAlarmDao;
import com.dao.SupplierAlarmDao;
import com.model.ControllerEnum;
import com.model.service.alarm.AlarmType;
import com.model.service.alarm.EmployeeAlarm;
import com.model.service.alarm.SupplierAlarm;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Slf4j
@RequiredArgsConstructor
public class AlarmService {
    private final EmployeeAlarmDao employeeAlarmDao;
    private final SupplierAlarmDao supplierAlarmDao;

    /**
     * @param no   employee_no or supplier_no
     * @param type AlarmType WORK, SERVICE
     */
    public <T> ArrayList<T> getAllAlarmsByType(ControllerEnum user_type, int no, AlarmType type) {
        if (user_type == ControllerEnum.USER) {
            log.info("WORK");
            ArrayList<EmployeeAlarm> alarms = employeeAlarmDao.getAllAlarmsByType(no, type);
            return (ArrayList<T>) alarms;
        } else {
            ArrayList<SupplierAlarm> alarms = supplierAlarmDao.getAllAlarmsByType(no, type);
            return (ArrayList<T>) new ArrayList<SupplierAlarm>();
        }
    }
}
