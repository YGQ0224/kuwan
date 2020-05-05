package com.service.impl;

import com.dao.SaleMapper;
import com.pojo.PageInfo;
import com.pojo.PersonalSale;
import com.service.ShowPersonalSale;

import java.util.List;

public class ShowPersonalSaleImpl implements ShowPersonalSale {
    private SaleMapper saleMapper;

    public void setSaleMapper(SaleMapper saleMapper) {
        this.saleMapper = saleMapper;
    }

    @Override
    public List<PersonalSale> getPersonalSale(PageInfo pageInfo) {
        return saleMapper.selectPersonalSale(pageInfo);
    }

    @Override
    public int getPersonalSaleCount(PageInfo pageInfo) {
        return saleMapper.selectPersonalSaleCount(pageInfo);
    }
}
