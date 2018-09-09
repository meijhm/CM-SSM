package com.mjh.cmssm.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 管理员登录控制
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        
    	String url=request.getRequestURI();
    	
        if(url.indexOf("login")>=0){
            return true;
        }
        HttpSession session=request.getSession();
        String adminname= (String) session.getAttribute("adminname");
        if(adminname!=null){
            return true;
        }
        return true;
//        request.getRequestDispatcher("/WEB-INF/jsp/admin/login.jsp").forward(request,response);
//
//        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
