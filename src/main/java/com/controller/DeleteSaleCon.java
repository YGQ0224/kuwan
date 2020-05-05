package com.controller;

import com.service.DeleteSale;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/deleteSale")
public class DeleteSaleCon {
    @RequestMapping("delete")
    public ModelAndView delete(int sale_id){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        DeleteSale deleteSale = (DeleteSale)ac.getBean("deleteSale");
        ModelAndView mv = new ModelAndView();
        deleteSale.delete(sale_id);
        mv.setViewName("/page/deleteSaleSuccess");
        return mv;
    }
}
