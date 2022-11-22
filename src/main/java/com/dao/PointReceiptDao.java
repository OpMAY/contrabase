package com.dao;

import com.mapper.PointReceiptMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class PointReceiptDao {
    private final PointReceiptMapper mapper;
    private PointReceiptDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(PointReceiptMapper.class);
    }
}
