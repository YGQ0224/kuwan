package com.service;

import com.pojo.Order;
import com.pojo.User;

public interface BuyService {
    void updateUserMoney(User user);
    void updateSaleFlag(int sale_id);
    void insertOrder(Order order);
    void transaction(User saleUser,User buyUser,int sale_id,Order order);
}
