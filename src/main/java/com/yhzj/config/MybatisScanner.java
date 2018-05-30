package com.yhzj.config;

import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;

/**
 * 配置Mybatis扫描的包
 * @author qinling
 * @version 2018/5/27 14:27
 */
@Configuration
@Order(100)
public class MybatisScanner {
    @Bean
    public MapperScannerConfigurer mapperScannerConfigurer() {
        MapperScannerConfigurer configurer=new MapperScannerConfigurer();
        //配置mapper文件的路径
        configurer.setBasePackage("com.yhzj.mapper");
        //配置sqlSessionFactoryBean的名字
        configurer.setSqlSessionFactoryBeanName("sqlSessionFactoryBean");
        return configurer;
    }
}
