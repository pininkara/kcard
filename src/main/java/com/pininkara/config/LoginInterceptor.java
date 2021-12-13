// 2021/12/10 10:17

package com.pininkara.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (request.getRequestURI().contains("toLogin")||request.getRequestURI().contains("login")){
            System.out.println("===return true");
            return true;
        }

        if (session.getAttribute("id")!=null){
            System.out.println("===return true");
            return true;
        }

        //没登录
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request,response);
        System.out.println("===return false");
        return false;

    }
}
