package com.controller;

import com.pojo.User;
import com.service.UpdateUserImage;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/uploadUserImage")
public class UploadUserImageCon {
    @RequestMapping("/upload")
    public ModelAndView uploads(HttpServletRequest request, MultipartFile uploads){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        UpdateUserImage updateUserImage = (UpdateUserImage)ac.getBean("updateUserImage");
        ModelAndView mv = new ModelAndView();
        String path = request.getSession().getServletContext().getRealPath("/image/");
        System.out.print(path);
        /*File file = new File(path);*/
        String name = UUID.randomUUID().toString().replace("+"," ")+uploads.getOriginalFilename();
        User user = (User)request.getSession().getAttribute("user");
        String userPath="image/"+name;
        user.setUserImage(userPath);
        try {
            uploads.transferTo(new File(path,name));
        } catch (IOException e) {
            e.printStackTrace();
        }
        updateUserImage.uploads(user);
        mv.setViewName("/page/uploadsSuccess");
        return mv;
    }
}
