package com.service.impl;

import com.dao.MangTabMapper;
import com.pojo.PageInfo;
import com.pojo.ShowSale;
import com.service.ShowMain;

import java.util.List;

public class ShowMainImpl implements ShowMain {
    private MangTabMapper mangTabMapper;

    public void setMangTabMapper(MangTabMapper mangTabMapper) {
        this.mangTabMapper = mangTabMapper;
    }
    //根据游戏ID查询出订单信息
    @Override
    public List<ShowSale> showSale(PageInfo pageInfo) {
        return mangTabMapper.selectNIP(pageInfo);
    }
    //查询出指定游戏出售单的总页数
    @Override
    public int pageCount(PageInfo pageInfo) {
        int count = mangTabMapper.selectCount(pageInfo);
        int pageCount = count%pageInfo.getPageSize()==0 ? count/pageInfo.getPageSize() : count/pageInfo.getPageSize()+1;

        return pageCount;
    }
    //查询所有的订单信息
    @Override
    public List<ShowSale> showAllSale(PageInfo pageInfo) {
        return mangTabMapper.selectAllNIP(pageInfo);
    }

    @Override
    public int AllPageCount() {
        int count = mangTabMapper.selectAllCount();
        int pageCount = count%8==0 ? count/8 : count/8+1;
        return pageCount;
    }
    //查询所有的订单记录数


}
