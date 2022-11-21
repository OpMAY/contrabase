package com.dao;

import com.mapper.AlarmMapper;
import com.mapper.WithdrawMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class WithdrawDao {
    private final WithdrawMapper mapper;
    private WithdrawDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(WithdrawMapper.class);
    }
}
