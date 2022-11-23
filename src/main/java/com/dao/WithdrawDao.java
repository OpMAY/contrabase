package com.dao;

import com.mapper.WithdrawMapper;
import com.model.service.Withdraw;
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

    public void insertUserWithdraw(Withdraw withdraw) {
        mapper.insertUserWithdraw(withdraw);
    }

    public Withdraw getUserWithdrawInfo(int user_no) {
        return mapper.getUserWithdrawInfo(user_no);
    }

    public boolean checkUserWithdraw(int user_no) {
        return mapper.checkUserWithdraw(user_no);
    }

    public void deleteUserWithdraw(int user_no) {
        mapper.deleteUserWithdraw(user_no);
    }
}
