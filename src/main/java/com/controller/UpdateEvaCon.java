package com.controller;

import com.pojo.Order;
import com.service.UpdateEva;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/updateEva")
public class UpdateEvaCon {
    @RequestMapping("/update")
    public ModelAndView update(Order order){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        UpdateEva updateEva = (UpdateEva)ac.getBean("uploadEva");
        ModelAndView mv = new ModelAndView();
        updateEva.upload(order);
        mv.setViewName("/page/updateEvaSuccess");
        return mv;
    }
}
