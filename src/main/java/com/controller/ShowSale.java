package com.controller;

import com.pojo.Evaluate;
import com.pojo.Sale;
import com.service.ShowEvaluate;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/showSale")
public class ShowSale {
    @RequestMapping("/show")
    public ModelAndView show(@RequestParam int sale_id){
        System.out.println(sale_id);
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        com.service.ShowSale showSale = (com.service.ShowSale)ac.getBean("showSale");
        ShowEvaluate showEvaluate = (ShowEvaluate)ac.getBean("showEvaluate");
        ModelAndView mv = new ModelAndView();
        List<Sale> list1 = showSale.selectSaleById(sale_id);
        mv.addObject("sale",list1.get(0));
        int vip_id = list1.get(0).getVip_id();
        List<Evaluate> list2 = showEvaluate.selectEvaluate(vip_id);
        mv.addObject("list",list2);
        mv.setViewName("/page/saleInfo");
        return mv;
    }
}
