package com.mjh.cmssm.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 自定义拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        String url = request.getRequestURI();
        String contextPath = request.getContextPath();
        if (url.equals(contextPath + "/") || url.equals(contextPath)) {
            return true;
        }
        if (url.contains("login") || url.contains("reg") || url.contains("image")
                || url.contains(".css") || url.contains(".js") || url.contains("fonts")) {
            return true;
        }
        HttpSession session = request.getSession();
        String adminname = (String) session.getAttribute("adminname");
        if (adminname != null) {
            return true;
        }
        String uname = (String) session.getAttribute("username");
        if (uname != null) {
            return true;
        }

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
