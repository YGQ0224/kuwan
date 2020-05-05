package com.service.impl;

import com.dao.SaleMapper;
import com.pojo.Sale;
import com.service.ShowSale;

import java.util.List;

public class ShowSaleImpl implements ShowSale {
    private SaleMapper saleMapper;

    public void setSaleMapper(SaleMapper saleMapper) {
        this.saleMapper = saleMapper;
    }

    @Override
    public List<Sale> selectSaleById(int sale_id) {
        return saleMapper.selectById(sale_id);
    }
}
