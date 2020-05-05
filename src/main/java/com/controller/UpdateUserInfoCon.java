package com.controller;

import com.pojo.User;
import com.service.UpdateUserInfoSev;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/updateUserInfo")
public class UpdateUserInfoCon {
    @RequestMapping("/update")
    public ModelAndView update(User user, HttpServletRequest request){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        UpdateUserInfoSev updateUserInfoSev = (UpdateUserInfoSev)ac.getBean("updateUserInfo");
        User user1 = (User)request.getSession().getAttribute("user");
        user.setUser_id(user1.getUser_id());
        updateUserInfoSev.updateUserInfo(user);
        /*更新session里面的user*/
        user1.setName(user.getName());
        user1.setBirthday(user.getBirthday());
        user1.setSex(user.getSex());
        request.getSession().removeAttribute("user");
        request.getSession().setAttribute("user",user1);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/page/updateUserInfoSuccess");
        return mv;
    }
}
