package com.dao;

import com.pojo.PageInfo;
import com.pojo.PersonalSale;
import com.pojo.Sale;

import java.util.List;

public interface SaleMapper {
    List<Sale> selectById(int sale_id);
    void updateSaleFlag(int sale_id);
    List<PersonalSale> selectPersonalSale(PageInfo pageInfo);
    int selectPersonalSaleCount(PageInfo pageInfo);
    void insertSale(Sale sale);
    void deleteSale(int sale_id);
}
