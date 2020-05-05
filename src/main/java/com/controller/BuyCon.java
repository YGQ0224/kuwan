package com.controller;

import com.pojo.Order;
import com.pojo.User;
import com.service.BuyService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("buy")
public class BuyCon {
    @RequestMapping("/transfer")
    public ModelAndView transaction(User saleUser, Order order, int price,HttpServletRequest request){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        BuyService buyService = (BuyService)ac.getBean("buyService");
        ModelAndView mv = new ModelAndView();
        User buyUser = (User)request.getSession().getAttribute("user");
        buyUser.setMoney(buyUser.getMoney()-price);
        saleUser.setMoney(saleUser.getMoney()+price);
        order.setUser_id(buyUser.getUser_id());
        buyService.transaction(saleUser,buyUser,order.getSale_id(),order);
        mv.setViewName("/page/success");
        return mv;
    }
}
