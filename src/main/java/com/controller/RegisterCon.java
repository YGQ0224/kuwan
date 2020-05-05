package com.controller;

import com.pojo.Msg;
import com.pojo.User;
import com.service.RegisterService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/Register")
public class RegisterCon {
    ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
    RegisterService registerService = (RegisterService)ac.getBean("registerService");
    @RequestMapping("/VerifyName")
    public @ResponseBody Msg VreifyName(@RequestBody User user, HttpServletRequest request){
        Msg msg = new Msg();
        boolean flag = registerService.verifyNameIsNull(user);
        if(flag){
            msg.setMessage("/kuwan/image/nameRight.png");
        }else{
            msg.setMessage("/kuwan/image/nameError.png");
        }
        return msg;

    }

    @RequestMapping("/insertUser")
    public ModelAndView insertUser(User user,HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        registerService.registerUser(user);
        mv.setViewName("/page/successReg");
        return mv;
    }
}
