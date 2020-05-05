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
        vip.setUser_id(user.getUser_id());
        realEnter.insertVip(vip);
        user.setVipFlag(1);
        request.getSession().removeAttribute("user");
        request.getSession().setAttribute("user",user);

        mv.setViewName("/page/enterRealSuccess");
        return mv;
    }
}
