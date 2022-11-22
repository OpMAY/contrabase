package com.dao;

import com.mapper.PointRequestMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class PointRequestDao {
    private final PointRequestMapper mapper;
    private PointRequestDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(PointRequestMapper.class);
    }
}
