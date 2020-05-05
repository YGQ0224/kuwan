package com.service;

import com.pojo.User;

public interface RegisterService {
    boolean verifyNameIsNull(User user);
    void registerUser(User user);
}
