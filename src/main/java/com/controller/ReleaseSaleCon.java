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
        String gameName = sale.getGameName();
        switch(gameName){
            case "部落冲突":
                sale.setSaleImage("image/u=175449694,862395299fm=15gp=0.jpg");
                break;
            case "王者荣耀":
                sale.setSaleImage("image/WZ.jpeg");
                break;
            case "刺激战场":
                sale.setSaleImage("image/CI.jpg");
                break;
            case "我的世界":
                sale.setSaleImage("image/SJ.jpeg");
                break;
            case "英雄联盟":
                sale.setSaleImage("image/YX.jpg");
                break;
        }
        sale.setVip_id(vip.getVip_id());

        releaseSaleSev.insertSale(sale);
        mv.setViewName("/page/releaseSuccess");
        return mv;
    }
}
