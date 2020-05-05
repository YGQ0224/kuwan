package com.service.impl;

import com.dao.OrderMapper;
import com.pojo.Order;
import com.service.UpdateEva;

public class UpdateEvaImpl implements UpdateEva {
    private OrderMapper orderMapper;

    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    @Override
    public void upload(Order order) {
        orderMapper.updateEva(order);
    }
}
