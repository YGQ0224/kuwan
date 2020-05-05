package com.service.impl;

import com.dao.UserMapper;
import com.pojo.User;
import com.service.RegisterService;

import java.util.List;

public class RegisterServiceImpl implements RegisterService {
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public boolean verifyNameIsNull(User user) {
        boolean flag = true;
       int count = userMapper.selectCount(user);
       if(count>0){
           flag = false;
       }
       return flag;
    }

    @Override
    public void registerUser(User user) {
        userMapper.insertUser(user);
    }
}
