package com.service;

import com.pojo.PageInfo;
import com.pojo.PersonalSale;

import java.util.List;

public interface ShowPersonalSale {
    List<PersonalSale> getPersonalSale(PageInfo pageInfo);
    int getPersonalSaleCount(PageInfo pageInfo);
}
