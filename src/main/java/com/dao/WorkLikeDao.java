package com.dao;

import com.mapper.WorkLikeMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class WorkLikeDao {
    private final WorkLikeMapper mapper;
    private WorkLikeDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WorkLikeMapper.class);
    }
}
