package com.dao;

import com.pojo.PageInfo;
import com.pojo.ShowSale;

import java.util.List;

public interface MangTabMapper {
    //查询name image price
    List<ShowSale> selectNIP(PageInfo pageInfo);
    //查询指定游戏的总记录数
    int selectCount(PageInfo pageInfo);
    //查询所有的订单信息
    List<ShowSale> selectAllNIP(PageInfo pageInfo);
    //查询所有的订单记录数
    int selectAllCount();

}
