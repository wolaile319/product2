package com.yhzj.aspect;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * 配置aop
 * @author qinling
 * @version 2018/5/27 23:20
 */
@Aspect//配置aop
@Component
public class HttpAspect {
    public HttpAspect() {
        System.out.println("我在这里！！");
    }
    private static final Log log = LogFactory.getLog(HttpAspect.class);
    //定义切点
    @Pointcut("execution(* com.yhzj.web..*(..))")
    public void log() {
    }
    //插入切面(执行控制器方法之前)
    //JoinPoint(连接点，可以调用其方法获取连接点的细节)
    @Before("log()")
    public void doBefore(JoinPoint joinPoint) {
        ServletRequestAttributes attributes=(ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        //获取url
        log.info("URL:"+request.getRequestURI());
        //获取method
        log.info("method:"+request.getMethod());
        //获得ip
        log.info("ip:"+request.getRemoteAddr());
        //获取类方法
        log.info("class_method"+joinPoint.getSignature().getDeclaringType()+"."+joinPoint.getSignature().getName());
        //参数
        Object[] args = joinPoint.getArgs();
        StringBuilder sb=new StringBuilder("");
        for (Object arg:args) {
           sb.append(arg);
        }
        log.info("args:"+sb.toString());
    }

    //执行控制器方法之后(不管是否报错都要执行)
    @After("log()")
    public void doAfter() {
        log.info("方法结束完成");
    }

    //返回执行结果后执行(只要有返回值就执行)
    @AfterReturning(returning = "object",pointcut = "log()")
    public void doAfterReturning(Object object) {
        log.info("response:"+object.toString());
    }

    //抛出异常后执行
    @AfterThrowing("log()")
    public void doAfterThrowing() {
        log.info("执行方法异常");
    }

   /* @Around("log()")//环绕通知
    public void doAround() {
        logger.info("5555");
    }*/
}
