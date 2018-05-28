package com.yhzj.interceptors;

import com.alibaba.fastjson.JSON;
import com.yhzj.entity.Result;
import com.yhzj.resultenum.ResultEnum;
import com.yhzj.utils.Constant;
import com.yhzj.annotation.NoLogin;
import com.yhzj.utils.RequestType;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.Objects;

/**
 * 定义登录拦截器（验证是否登录）
 * @author qinling
 * @version 2018/5/27 16:08
 */
public class LoginInterceptor implements HandlerInterceptor{
    //用于输出log4j日志
    private static final Log log = LogFactory.getLog(LoginInterceptor.class);
    /**
     *该方法是在控制器方法调用之前，如果返回true表示继续执行，如果返回false，表示不执行之后的内容（包括控制器和之后的Interceptor））
     一般用于权限处理等功能
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //保存handler的类型为HandlerMethod（资源是否交给springMvc管理），如果不是该类型，则不处理
        if (!(handler instanceof HandlerMethod)) {
            return true;
        }
        HandlerMethod handlerMethod=(HandlerMethod) handler;
        //获取该方法上的NoLogin注解
        NoLogin methodAnnotation = handlerMethod.getMethodAnnotation(NoLogin.class);
        //方法上有NoLogin，并且value的值为true，则不需要登录
        if (!Objects.isNull(methodAnnotation)) {
            if (methodAnnotation.value()) {
                //用于提高输出日志的性能
                if (log.isDebugEnabled()) {
                    log.debug(handlerMethod.getMethod().toString() + "上有@NoLogin注解，不需要登录");
                }
                return true;
            }
        } else {
            //获取类上的注解
            NoLogin annotation = handlerMethod.getBeanType().getAnnotation(NoLogin.class);
            if (!Objects.isNull(annotation)&&annotation.value()) {
                if (log.isDebugEnabled()) {
                    log.debug(handlerMethod.getMethod().toString() + "上有@NoLogin注解，不需要登录");
                }
                return true;
            }
        }
        if(log.isDebugEnabled()){
            log.debug(handlerMethod.getMethod().toString() + "需要登录验证...");
        }
        //需要登录的情况
        //判断session里是否有CURRENT_USER；若没有则为登录
        if (Objects.isNull(request.getSession().getAttribute(Constant.CURRENT_USER))) {
            //获取当前访问的资源路径
            String url = request.getRequestURI();
            /**
             * 去掉当前访问的url的项目项目路径
             */
            String contextPath = request.getContextPath();
            if(!"/".equals(contextPath)&&url.startsWith(contextPath)){
                //得到剩下的url
                url= url.substring(contextPath.length());
            }
            //没有登录。需要跳转到登录页面
            //如果是ajax请求
            if (RequestType.isAjax(request)) {
                Result result=new Result();
                //把需要的登录地址放入结果集中
                result.setDate(url);
                response.setContentType("application/json;charset=utf-8");
                result.setCode(ResultEnum.NO_LOGIN.getCode());
                result.setMessage(ResultEnum.NO_LOGIN.getMessage());
                response.getWriter().write(JSON.toJSONString(result));
            } else {
                //如果是普通请求直接跳转登录页面,并保存当前的连接(request.getQueryString();该方发返回当前网页的查询字符串)
                response.sendRedirect(request.getContextPath()+"/login?perv="+ URLEncoder.encode(url+"?"+request.getQueryString(),"utf8"));
            }
            return false;
        }
        return true;
    }

    /**
     * 该方法是在控制器调用之后，视图渲染之前调用，该方法可以修改控制器方法返回的数据和视图
     * @param request
     * @param response
     * @param handler
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    /**
     * 该方法在请求执行之后，视图返回到客户端的最后一道关卡，该方法可以处理发生的异常
     * @param request
     * @param response
     * @param handler
     * @param ex
     * @throws Exception
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
