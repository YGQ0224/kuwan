package com.dao;

import com.pojo.Evaluate;
import com.pojo.Order;
import com.pojo.PageInfo;
import com.pojo.ShowOrder;

import java.util.List;

public interface OrderMapper {
    List<Evaluate> selectEvaluate(int vip_id);
    void insertOrder(Order order);
    List<ShowOrder> selectOrderAndOther(PageInfo pageInfo);
    int selectOrderCountByUserId(PageInfo pageInfo);
    void updateEva(Order order);
}
