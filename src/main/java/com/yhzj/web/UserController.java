package com.yhzj.web;

import com.yhzj.annotation.NoLogin;
import com.yhzj.entity.Result;
import com.yhzj.utils.ResultUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author qinling
 * @version 2018/5/27 23:49
 */
@RestController
@NoLogin
public class UserController {
    @GetMapping("index/{id}")
    public Result index(@PathVariable("id")Integer id){
        return ResultUtil.success();
    }
}
