package com.service.impl;

import com.dao.OrderMapper;
import com.pojo.PageInfo;
import com.pojo.ShowOrder;
import com.service.ShowPersonalOrder;

import java.util.List;

public class ShowPersonalOrderImpl implements ShowPersonalOrder {
    private OrderMapper orderMapper;

    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    @Override
    public List<ShowOrder> getOrderByUserId(PageInfo pageInfo) {
        return orderMapper.selectOrderAndOther(pageInfo);
    }

    @Override
    public int getOrderCountByUserId(PageInfo pageInfo) {
        return orderMapper.selectOrderCountByUserId(pageInfo);
    }
}
