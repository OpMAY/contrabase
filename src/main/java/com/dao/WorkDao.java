package com.dao;

import com.mapper.AlarmMapper;
import com.mapper.WorkMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class WorkDao {
    private final WorkMapper mapper;
    private WorkDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WorkMapper.class);
    }
}
