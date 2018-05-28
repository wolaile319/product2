package com.yhzj.config;

import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import com.yhzj.interceptors.LoginInterceptor;
import com.yhzj.utils.DataConvert;
import com.yhzj.utils.GlobalHandlerException;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.format.FormatterRegistry;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import java.util.Arrays;
import java.util.List;

/**
 * @author qinling
 * @version 2018/5/27 13:56
 */
//webMvc控制
@Configuration
@ComponentScan({"com.yhzj.web","com.yhzj.aspect"})
@EnableWebMvc//启用webmvc
@EnableAspectJAutoProxy
public class MvcConfig extends WebMvcConfigurerAdapter{
    /**
     * 配置视图解析器
     */
    @Bean
    public ViewResolver viewResolver(){
        InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
       //配置视图类
        viewResolver.setViewClass(JstlView.class);
        //设置视图目录
        viewResolver.setPrefix("/WEB-INF/view/");
        //设置视图文件后缀
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    /**
     * 配置文件上传转换器
     * @return
     */
    @Bean
    public MultipartResolver multipartResolver() {
        StandardServletMultipartResolver resolver=new StandardServletMultipartResolver();
        return resolver;
    }
    //配置静态资源的处理方式
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
       //将静态资源交给其他servlet处理
        configurer.enable();
    }
    //配置格式转换器
    @Override
    public void addFormatters(FormatterRegistry registry) {
        //需要注册
        registry.addConverter(new DataConvert());
    }

    //配置返回结果处理（将返回结果自动）
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(messageConverter());
    }
    @Bean
    public FastJsonHttpMessageConverter messageConverter() {
        FastJsonHttpMessageConverter converter=new FastJsonHttpMessageConverter();
        //将content-type设置为appliction/json; charset=utf-8
        converter.setSupportedMediaTypes(Arrays.asList(MediaType.APPLICATION_JSON_UTF8));
        return converter;
    }

    /**
     * 配置全局的异常处理
     * @param exceptionResolvers
     */
   /* @Override
    public void configureHandlerExceptionResolvers(List<HandlerExceptionResolver> exceptionResolvers) {
        //注册自定义异常
        exceptionResolvers.add(new GlobalHandlerException());
    }*/

    /**
     * 配置拦截器（过滤器：如验证登录）
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //注册拦截器
       registry.addInterceptor(new LoginInterceptor());
    }
}
