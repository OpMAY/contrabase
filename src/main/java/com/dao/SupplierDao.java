package com.dao;

import com.mapper.SupplierMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class SupplierDao {
    private final SupplierMapper mapper;
    private SupplierDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(SupplierMapper.class);
    }
}
