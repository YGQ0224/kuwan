package com.controller;

import com.pojo.PageInfo;
import com.pojo.PersonalSale;
import com.pojo.ShowOrder;
import com.pojo.User;
import com.service.ShowPersonalOrder;
import com.service.ShowPersonalSale;
import com.service.impl.ShowPersonalOrderImpl;
import jdk.jfr.events.SocketWriteEvent;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
@Controller
@RequestMapping("/showPersonal")
public class ShowPersonalCon {
    @RequestMapping("/show")
    public ModelAndView showOrder(PageInfo pageInfo, HttpServletRequest request){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        ShowPersonalOrder showPersonalOrder = (ShowPersonalOrder)ac.getBean("showPersonalOrder");
        ShowPersonalSale showPersonalSale = (ShowPersonalSale)ac.getBean("showPersonalSale");
        ModelAndView mv = new ModelAndView();
        pageInfo.setPageSize(3);
        int startIndex = pageInfo.getCurrentPage()*pageInfo.getPageSize();
        int endIndex = pageInfo.getPageSize();
        pageInfo.setStartIndex(startIndex);
        pageInfo.setEndIndex(endIndex);
        User user = (User)request.getSession().getAttribute("user");
        pageInfo.setUser_id(user.getUser_id());
        List<ShowOrder> list = showPersonalOrder.getOrderByUserId(pageInfo);
        List<PersonalSale> listPersonalSale = showPersonalSale.getPersonalSale(pageInfo);
        mv.addObject("list",list);
        mv.addObject("listSale",listPersonalSale);
        mv.setViewName("/page/personal");
        return mv;
    }
}
