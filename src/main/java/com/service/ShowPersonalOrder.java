package com.service;

import com.pojo.PageInfo;
import com.pojo.ShowOrder;

import java.util.List;

public interface ShowPersonalOrder {
    List<ShowOrder> getOrderByUserId(PageInfo pageInfo);
    int getOrderCountByUserId(PageInfo pageInfo);
}
