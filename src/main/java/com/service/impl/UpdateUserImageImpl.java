package com.service.impl;

import com.dao.UserMapper;
import com.pojo.User;
import com.service.UpdateUserImage;

public class UpdateUserImageImpl implements UpdateUserImage {
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public void uploads(User user) {
        userMapper.updateUserImage(user);
    }
}
