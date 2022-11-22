package com.mapper;

import com.model.User;
import com.model.UserType;

public interface UserMapper {
    void registerUser(User user);

    UserType getUserType(int no);

    User loginUser(String id);

    void updateUserLoginDate(int no);

    void updateUserName(User user);

    void updateUserPhone(User user);

    void updateUserProfileImage(User user);

    void deleteUser(int no);
}
