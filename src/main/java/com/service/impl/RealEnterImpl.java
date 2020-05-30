package com.service.impl;

import com.dao.VipMapper;
import com.pojo.Vip;
import com.service.RealEnter;

public class RealEnterImpl implements RealEnter {
    private VipMapper vipMapper;

    public void setVipMapper(VipMapper vipMapper) {
        this.vipMapper = vipMapper;
    }

    @Override
    public void insertVip(Vip vip) {
        vipMapper.insertVip(vip);
    }
    public int selectVipId(int user_id){
        return  vipMapper.selectVipId(user_id);
    }
}
