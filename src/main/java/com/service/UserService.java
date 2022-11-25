package com.service;

import com.dao.UserDao;
import com.model.User;
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
    public void updateUserProfileImage(User user){
        userDao.updateUserProfileImage(user);
    }
    public void updateUserProfileDefault(User user){
        userDao.updateUserName(user);
        userDao.updateUserPhone(user);
    }
}
