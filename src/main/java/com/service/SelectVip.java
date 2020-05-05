package com.service;

import com.pojo.Vip;

import java.util.List;

public interface SelectVip {
    List<Vip> selectOne(int user_id);
}
