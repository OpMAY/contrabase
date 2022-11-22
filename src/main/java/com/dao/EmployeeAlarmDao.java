package com.dao;

import com.mapper.EmployeeAlarmMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class EmployeeAlarmDao {
    private final EmployeeAlarmMapper mapper;
    private EmployeeAlarmDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(EmployeeAlarmMapper.class);
    }
}
