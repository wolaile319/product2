package com.yhzj.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;

/**
 * @author qinling
 * @version 2018/5/27 13:56
 */
//配置spring根容器
@Configuration
@ComponentScan({"com.yhzj.service", "com.yhzj.mapper"})
@Import({
        MybatisConfig.class,
        MybatisScanner.class
})
@PropertySource("classpath:db.properties")
public class RootConfig {
}
