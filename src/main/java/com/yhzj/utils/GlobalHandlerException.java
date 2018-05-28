package com.yhzj.utils;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 自定义异常处理：分为ajax请求异常和普通请求异常;从而给出不同结果反馈
 * @author qinling
 * @version 2018/5/27 15:59
 */

public class GlobalHandlerException implements HandlerExceptionResolver{
    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        return null;
    }
}
