package com.service.impl;

import com.dao.OrderMapper;
import com.pojo.Evaluate;
import com.service.ShowEvaluate;

import java.util.List;

public class ShowEvaluateImpl implements ShowEvaluate {
    private OrderMapper orderMapper;

    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    @Override
    public List<Evaluate> selectEvaluate(int vip_id) {
        return orderMapper.selectEvaluate(vip_id);
    }
}
