package com.dao;

import com.pojo.User;

import java.util.List;

public interface UserMapper {
    List<User> selectOne(int user_id);
    List<User> selectByName(User user);
    int selectCount(User user);
    void insertUser(User user);
    void updateMoney(User user);
    void updateUserImage(User user);
    void updateUserInfo(User user);
}
