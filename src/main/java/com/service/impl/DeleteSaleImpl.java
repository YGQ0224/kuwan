package com.service.impl;

import com.dao.SaleMapper;
import com.service.DeleteSale;

public class DeleteSaleImpl implements DeleteSale {
    private SaleMapper saleMapper;

    public void setSaleMapper(SaleMapper saleMapper) {
        this.saleMapper = saleMapper;
    }

    @Override
    public void delete(int sale_id) {
        saleMapper.deleteSale(sale_id);
    }
}
