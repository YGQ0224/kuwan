package com.service.impl;

import com.dao.UserMapper;
import com.pojo.User;
import com.service.LoginService;

import java.util.List;

public class LoginServiceImpl implements LoginService {
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {

        this.userMapper = userMapper;
    }

    @Override
    public List<User> LoginTest(User user) {
        List<User> list = userMapper.selectByName(user);
        return list;
    }
}
