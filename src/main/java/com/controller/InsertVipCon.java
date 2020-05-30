package com.controller;

import com.pojo.User;
import com.pojo.Vip;
import com.service.RealEnter;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/insertVip")
public class InsertVipCon {
    @RequestMapping("/insert")
    public ModelAndView insert(Vip vip, HttpServletRequest request){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        RealEnter realEnter = (RealEnter)ac.getBean("realEnter");
        ModelAndView mv = new ModelAndView();
        User user = (User)request.getSession().getAttribute("user");
        request.getSession().removeAttribute("user");
        user.setVipFlag(1);
        request.getSession().setAttribute("user",user);
        vip.setUser_id(user.getUser_id());
        realEnter.insertVip(vip);
        int vip_id=realEnter.selectVipId(user.getUser_id());
        System.out.println("-----------------"+vip_id);
        vip.setVip_id(vip_id);
        //将vip信息存入session
        request.getSession().setAttribute("vip",vip);
        mv.setViewName("/page/enterRealSuccess");
        return mv;
    }
}
