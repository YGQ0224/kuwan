package com.service.impl;

import com.dao.SaleMapper;
import com.pojo.Sale;
import com.service.RealEnter;
import com.service.ReleaseSaleSev;

public class RreleaseSaleSevImpl implements ReleaseSaleSev {
    private SaleMapper saleMapper;

    public void setSaleMapper(SaleMapper saleMapper) {
        this.saleMapper = saleMapper;
    }

    @Override
    public void insertSale(Sale sale) {
        saleMapper.insertSale(sale);
    }
}
