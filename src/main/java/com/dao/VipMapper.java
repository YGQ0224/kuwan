package com.dao;

import com.pojo.Vip;

import java.util.List;

public interface VipMapper {
    List<Vip> selectOneByUserId(int user_id);
    void insertVip(Vip vip);
}
