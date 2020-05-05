package com.service.impl;

import com.dao.UserMapper;
import com.pojo.User;
import com.service.UpdateUserInfoSev;

public class UpdateUserInfoSevImpl implements UpdateUserInfoSev {
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public void updateUserInfo(User user) {
        userMapper.updateUserInfo(user);
    }
}
