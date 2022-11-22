package com.dao;

import com.mapper.EmployeeAlarmMapper;
import com.mapper.SupplierAlarmMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class SupplierAlarmDao {
    private final SupplierAlarmMapper mapper;
    private SupplierAlarmDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(SupplierAlarmMapper.class);
    }
}
