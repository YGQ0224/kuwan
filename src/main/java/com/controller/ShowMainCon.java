package com.controller;

import com.pojo.PageInfo;
import com.pojo.ShowSale;
import com.service.ShowMain;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/showMain")
public class ShowMainCon {
    @RequestMapping("/showSlae")
    public ModelAndView showSale(PageInfo pageInfo){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        ShowMain showMain = (ShowMain)ac.getBean("showMain");
        ModelAndView mv = new ModelAndView();
        List<ShowSale> list = showMain.showSale(pageInfo);
        int pageCount = showMain.pageCount(pageInfo);
        mv.addObject("list",list);
        mv.addObject("pageCount",pageCount);
        mv.addObject("game_id",pageInfo.getGame_id());
        mv.addObject("currentPage",pageInfo.getCurrentPage());
        System.out.println("当前页"+pageInfo.getCurrentPage());
        mv.setViewName("/index");
        return mv;
    }
    @RequestMapping("/showAllSale")
    public ModelAndView showAllSale(PageInfo pageInfo){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        ShowMain showMain = (ShowMain)ac.getBean("showMain");
        ModelAndView mv = new ModelAndView();
        List<ShowSale> list = showMain.showAllSale(pageInfo);
        int pageCount = showMain.AllPageCount();
        mv.addObject("list1",list);
        mv.addObject("pageCount1",pageCount);
        mv.addObject("currentPage1",pageInfo.getCurrentPage());
        System.out.println("当前页"+pageInfo.getCurrentPage());
        mv.setViewName("/index");
        return mv;
    }
}
