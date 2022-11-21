package com.dao;

import com.mapper.AlarmMapper;
import com.mapper.UserMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class UserDao {
    private final UserMapper mapper;
    private UserDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(UserMapper.class);
    }
}
