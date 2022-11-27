package com.dao;

import com.mapper.AdminMapper;
import com.mapper.UserMapper;
import com.model.Admin;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@Slf4j
public class AdminDao {
    private final AdminMapper mapper;

    private AdminDao(SqlSession sqlSession) {
        this.mapper = sqlSession.getMapper(AdminMapper.class);
    }

    public Admin getAdmin(int admin_no) {
        return mapper.getAdmin(admin_no);
    }
}
