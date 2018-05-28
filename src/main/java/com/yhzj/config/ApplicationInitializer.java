package com.yhzj.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * 初始化DispatcherServlet根容器（前端控制器）
 * @author qinling
 * @version 2018/5/27 13:47
 */
public class ApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    /**
     * 配置spring根容器，管理service、mapper等其他组件
     * @return
     */
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{RootConfig.class};
    }

    /**
     * 配置控制器的配置容器
     * @return
     */
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{MvcConfig.class};
    }

    /**
     * springMvc需要处理的地址，给DispatcherServlet映射地址
     * @return
     */
    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}
