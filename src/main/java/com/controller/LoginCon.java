package com.controller;

import com.pojo.Msg;
import com.pojo.User;
import com.pojo.Vip;
import com.service.LoginService;
import com.service.SelectVip;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/Login")
public class LoginCon {
    ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
    LoginService loginService = (LoginService)ac.getBean("loginService");
    SelectVip selectVip = (SelectVip)ac.getBean("selectVip");
    @RequestMapping("/verifyName")
    public @ResponseBody Msg nameVerify(@RequestBody User user){
        List<User> list = loginService.LoginTest(user);
        Msg msg = new Msg();
        if(list.size()==0){
            msg.setMessage("/kuwan/image/nameError.png");
        }else if(list.size()>1){
            msg.setMessage("/kuwan/image/nameError.png");
        }else if(list.size()==1) {
            msg.setMessage("/kuwan/image/nameRight.png");
        }
        return msg;
    }

    @RequestMapping("/verifyLogin")
   /* public ModelAndView LoginVerify(User user,HttpServletRequest request,ModelAndView mv){
        List<User> list = loginService.LoginTest(user);
        if(list.size()==1){
            if(list.get(0).getPassword() == user.getPassword()){
                mv=new ModelAndView("redirect:/index.jsp");
                request.getSession().setAttribute("user",list.get(0));
            }else{
                *//*mv = new ModelAndView("redirect:/page/login.jsp");*//*
                mv=new ModelAndView();
                mv.setViewName("/page/login");
                mv.addObject("info","../image/nameError.png");
            }
        }
        return mv;
    }*/
    public ModelAndView LoginVerify(User user,HttpServletRequest request) {
        List<User> list = loginService.LoginTest(user);
        ModelAndView mv = new ModelAndView();
        if (list.size() == 1) {
            if (list.get(0).getPassword().equals(user.getPassword())) {
                mv.setViewName("/index");
                request.getSession().setAttribute("user", list.get(0));
                List<Vip> listVip = selectVip.selectOne(list.get(0).getUser_id());
                if(listVip.size()!=0) {
                    request.getSession().setAttribute("vip", listVip.get(0));
                }
            } else {
                mv.setViewName("/page/login");
                mv.addObject("info", "../image/nameError.png");
            }

        }
        return mv;
    }
}
