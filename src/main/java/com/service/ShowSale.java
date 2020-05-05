package com.service;

import com.pojo.Sale;

import java.util.List;

public interface ShowSale {
    List<Sale> selectSaleById(int sale_id);
}
