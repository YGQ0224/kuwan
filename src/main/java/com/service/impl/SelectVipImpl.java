package com.service.impl;

import com.dao.VipMapper;
import com.pojo.Vip;
import com.service.SelectVip;

import java.util.List;

public class SelectVipImpl implements SelectVip {
    private VipMapper vip;

    public void setVip(VipMapper vip) {
        this.vip = vip;
    }

    @Override
    public List<Vip> selectOne(int user_id) {
        return vip.selectOneByUserId(user_id);
    }
}
