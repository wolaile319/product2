package com.yhzj.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * @author qinling
 * @version 2018/5/27 13:56
 */
//配置spring根容器
@Configuration
@ComponentScan({"com.yhzj.service"})
@Import({
        MybatisConfig.class,
        MybatisScanner.class
})
public class RootConfig {
}
