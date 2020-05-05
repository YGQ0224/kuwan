package com.controller;

import com.pojo.ShowSale;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/enterBuy")
public class EnterBuy {
    @RequestMapping("/buy")
    public ModelAndView enter(ShowSale showSale){
        System.out.println("已经处理");
        System.out.println(showSale);
        ModelAndView mv = new ModelAndView();
        mv.addObject("showSale",showSale);
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmSS");
        Date date = new Date(System.currentTimeMillis());
        String saleNum = format.format(date);
        mv.addObject("saleNum",saleNum);
        mv.setViewName("/page/enterOrder");
        return mv;
    }
}
