package com.service;

import com.dao.UserDao;
import com.model.UnRegister;
import com.model.User;
import com.model.UserType;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserDao userDao;

    public User loginUser(String id) {
        return userDao.loginUser(id);
    }

    public void updateUserProfileImage(User user) {
        userDao.updateUserProfileImage(user);
    }

    public void updateUserProfileDefault(User user) {
        userDao.updateUserName(user);
        userDao.updateUserPhone(user);
    }

    public void insertUnRegister(UnRegister unRegister) {
        userDao.insertUnRegister(unRegister);
    }

    public int registerUser(User user) {
        userDao.registerUser(user);
        return user.getNo();
    }

    public UserType getUserType(int user_no) {
        return userDao.getUserType(user_no);
    }
}
