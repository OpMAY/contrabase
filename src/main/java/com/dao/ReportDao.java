package com.dao;

import com.mapper.ReportMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class ReportDao {
    private final ReportMapper mapper;
    private ReportDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(ReportMapper.class);
    }
}
