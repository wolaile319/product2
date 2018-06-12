package com.yhzj.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 描述:
 *  测试
 * @author mixue
 * @create 2018-06-12 10:34
 */
@RequestMapping("/staff")
public class TestController {
    @GetMapping("/list")
    public String test(){
        return "staff/list";
    }
}
