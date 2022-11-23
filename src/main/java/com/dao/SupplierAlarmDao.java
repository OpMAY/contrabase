package com.dao;

import com.mapper.SupplierAlarmMapper;
import com.model.service.alarm.AlarmType;
import com.model.service.alarm.SupplierAlarm;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Slf4j
public class SupplierAlarmDao {
    private final SupplierAlarmMapper mapper;
    private SupplierAlarmDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(SupplierAlarmMapper.class);
    }

    public ArrayList<SupplierAlarm> getAllAlarmsByType(int supplier_no, AlarmType type) {
        return mapper.getAllAlarmsByType(supplier_no, type);
    }

    public void insertAlarm(SupplierAlarm alarm) {
        mapper.insertAlarm(alarm);
    }

    public void updateReadStatus(int supplier_no, AlarmType type) {
        mapper.updateReadStatus(supplier_no, type);
    }

    public void deleteAlarm(int no) {
        mapper.deleteAlarm(no);
    }

    public void deleteAllAlarms(int supplier_no, AlarmType type) {
        mapper.deleteAllAlarms(supplier_no, type);
    }
}
