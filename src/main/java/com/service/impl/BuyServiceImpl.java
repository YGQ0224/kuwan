package com.service.impl;

import com.dao.OrderMapper;
import com.dao.SaleMapper;
import com.dao.UserMapper;
import com.pojo.Order;
import com.pojo.User;
import com.service.BuyService;

public class BuyServiceImpl implements BuyService {
    private OrderMapper orderMapper;
    private SaleMapper saleMapper;
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    public void setSaleMapper(SaleMapper saleMapper) {
        this.saleMapper = saleMapper;
    }

    @Override
    public void updateUserMoney(User user) {
        userMapper.updateMoney(user);
    }

    @Override
    public void updateSaleFlag(int sale_id) {
        saleMapper.updateSaleFlag(sale_id);
    }

    @Override
    public void insertOrder(Order order) {
        orderMapper.insertOrder(order);
    }

    @Override
    public void transaction(User saleUser, User buyUser, int sale_id, Order order) {
        updateUserMoney(saleUser);
        updateUserMoney(buyUser);
        updateSaleFlag(sale_id);
        insertOrder(order);
    }
}
