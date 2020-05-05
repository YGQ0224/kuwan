package com.controller;

import com.pojo.Sale;
import com.pojo.Vip;
import com.service.ReleaseSaleSev;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("releaseSale")
public class ReleaseSaleCon {
    @RequestMapping("release")
    public ModelAndView release(Sale sale, HttpServletRequest request){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        ReleaseSaleSev releaseSaleSev = (ReleaseSaleSev)ac.getBean("releaseSale");
        ModelAndView mv = new ModelAndView();
        Vip vip = (Vip)request.getSession().getAttribute("vip");
        sale.setVip_id(vip.getVip_id());
        releaseSaleSev.insertSale(sale);
        mv.setViewName("/page/releaseSuccess");
        return mv;
    }
}
