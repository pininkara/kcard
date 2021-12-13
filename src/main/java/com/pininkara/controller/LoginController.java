// 2021/12/10 9:35

package com.pininkara.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {


    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("/main")
    public String toMain(){
        return "main";
    }

    @RequestMapping("/login")
    public String login(HttpSession session,String id,String pwd){
        session.setAttribute("id",id);
        return "main";
    }
    @RequestMapping("/goOut")
    public String goOut(HttpSession session){
        session.removeAttribute("id");
        return "redirect:toLogin";
    }

}
