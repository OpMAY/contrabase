package com.dao;

import com.mapper.UserMapper;
import com.model.User;
import com.model.UserType;
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

    public void registerUser(User user) {
        mapper.registerUser(user);
    }

    public UserType getUserType(int no) {
        return mapper.getUserType(no);
    }

    public User loginUser(String id) {
        return mapper.loginUser(id);
    }

    public void updateUserLoginDate(int no) {
        mapper.updateUserLoginDate(no);
    }

    public void updateUserName(User user) {
        mapper.updateUserName(user);
    }

    public void updateUserPhone(User user) {
        mapper.updateUserPhone(user);
    }

    public void updateUserProfileImage(User user) {
        mapper.updateUserProfileImage(user);
    }

    public void deleteUser(int no) {
        mapper.deleteUser(no);
    }
}
