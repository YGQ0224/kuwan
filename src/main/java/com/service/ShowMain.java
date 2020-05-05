package com.service;

import com.pojo.PageInfo;
import com.pojo.ShowSale;

import java.util.List;

public interface ShowMain {
    List<ShowSale> showSale(PageInfo pageInfo);
    int pageCount(PageInfo pageInfo);
    List<ShowSale> showAllSale(PageInfo pageInfo);
    int AllPageCount();

}
