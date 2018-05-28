package com.yhzj.annotation;

import java.lang.annotation.*;

/**
 * 自定义注解
 */
//该注解可以用在类型上和方法上
@Target({
        ElementType.METHOD,
        ElementType.TYPE
})
//在运行时能获取该注解
@Retention(RetentionPolicy.RUNTIME)
//表明这个注解应该被javadoc工具记录
@Documented
public @interface NoLogin {
    //默认值为true
    boolean value() default true;
}
