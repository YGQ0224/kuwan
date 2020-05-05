package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/logOut")
public class logOut {
    @RequestMapping("/out")
    public ModelAndView out(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        request.getSession().invalidate();
        mv.setViewName("/index");
        return mv;
    }
}
