package com.dao;

import com.mapper.AlarmMapper;
import com.mapper.EmployeeMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class EmployeeDao {
    private final EmployeeMapper mapper;
    private EmployeeDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(EmployeeMapper.class);
    }
}
