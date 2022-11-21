package com.dao;

import com.mapper.AlarmMapper;
import com.mapper.WorkApplyMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class WorkApplyDao {
    private final WorkApplyMapper mapper;
    private WorkApplyDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WorkApplyMapper.class);
    }
}
