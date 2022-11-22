package com.dao;

import com.mapper.WorkApplyStockMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class WorkApplyStockDao {
    private final WorkApplyStockMapper mapper;

    private WorkApplyStockDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WorkApplyStockMapper.class);
    }
}
