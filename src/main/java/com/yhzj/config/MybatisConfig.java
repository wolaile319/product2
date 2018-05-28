package com.yhzj.config;

import com.alibaba.druid.pool.DruidDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.core.env.Environment;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.TransactionManagementConfigurer;

import javax.sql.DataSource;
import java.io.IOException;

/**
 * @author qinling
 * @version 2018/5/27 14:27
 */
@Configuration
@Order(99)//定义执行顺序
@EnableTransactionManagement//开启注解式事务的支持
/**
 * 实现接口 EnvironmentAware 重写方法 setEnvironment 可以在工程启动时，获取到系统环境变量和application配置文件中的变量
 * 实现接口 TransactionManagementConfigurer,实现事务管理
 *  PathMatchingResourcePatternResolver:用来解析资源文件，主要是用来解析类路径下的资源文件
 */
public class MybatisConfig implements EnvironmentAware,TransactionManagementConfigurer {
    private Environment environment;

    @Override
    public void setEnvironment(Environment environment) {
        this.environment=environment;
    }

    /**
     * 获取数据库连接的数据
     * @return
     */
    @Bean
    public DataSource dataSource() {
        DruidDataSource dataSource=new DruidDataSource();
        dataSource.setDriverClassName(environment.getProperty("db.driver"));
        dataSource.setUsername(environment.getProperty("db.username"));
        dataSource.setUrl(environment.getProperty("db.url"));
        dataSource.setPassword(environment.getProperty("db.password"));
        dataSource.setMaxWait(environment.getProperty("db.maxWait",long.class,5000L));
        dataSource.setMinIdle(environment.getProperty("db.minIdle",Integer.class,2));
        dataSource.setInitialSize(environment.getProperty(" db.initialSize",Integer.class,2));
        dataSource.setMaxActive(environment.getProperty("db.db.maxActive",Integer.class,10));
        return dataSource;
    }

    /**
     * 配置sqlSessionFactory对象
     * @return
     */
    @Bean
    public SqlSessionFactoryBean sqlSessionFactoryBean() {
        SqlSessionFactoryBean factoryBean=new SqlSessionFactoryBean();
        //配置类型别名（不用谢类的全根名；只需写类名即可）
        factoryBean.setTypeAliasesPackage("com.yhzj.entity");
        //配置数据源
        factoryBean.setDataSource(dataSource());
        //获取映射文件路径解析资源文件
        PathMatchingResourcePatternResolver resolver=new PathMatchingResourcePatternResolver();
        try {
            //获取映射文件路径
            factoryBean.setMapperLocations(resolver.getResources("classpath:com/yhzj/mapper/*.xml"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        //获取mybatis的xml配置
        factoryBean.setConfigLocation(resolver.getResource("classpath:mybatis.xml"));
        return factoryBean;
    }
    /**
     * 获取事务管理
     * @return
     */
    @Override
    public PlatformTransactionManager annotationDrivenTransactionManager() {
        return new DataSourceTransactionManager(this.dataSource());
    }
}
