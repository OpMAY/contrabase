package com.dao;

import com.mapper.EmployeeAlarmMapper;
import com.model.service.alarm.AlarmType;
import com.model.service.alarm.EmployeeAlarm;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class EmployeeAlarmDao {
    private final EmployeeAlarmMapper mapper;

    private EmployeeAlarmDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(EmployeeAlarmMapper.class);
    }

    public ArrayList<EmployeeAlarm> getAllAlarmsByType(int employee_no, AlarmType type) {
        return mapper.getAllAlarmsByType(employee_no, type);
    }

    public void insertAlarm(EmployeeAlarm alarm) {
        mapper.insertAlarm(alarm);
    }

    public void updateReadStatus(int employee_no, AlarmType type) {
        mapper.updateReadStatus(employee_no, type);
    }

    public void deleteAlarm(int no) {
        mapper.deleteAlarm(no);
    }

    public void deleteAllAlarms(int employee_no, AlarmType type) {
        mapper.deleteAllAlarms(employee_no, type);
    }
}
