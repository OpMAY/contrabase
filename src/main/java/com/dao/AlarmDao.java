package com.dao;

import com.mapper.AlarmMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class AlarmDao {
    private final AlarmMapper mapper;
    private AlarmDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(AlarmMapper.class);
    }
}
