package com.yhzj.web;

import com.yhzj.annotation.NoLogin;
import com.yhzj.entity.Result;
import com.yhzj.service.UserService;
import com.yhzj.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author qinling
 * @version 2018/5/27 23:49
 */
@RestController
@NoLogin
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("index/{id}")
    public Result index(@PathVariable("id")Integer id){
        return ResultUtil.success();
    }

    @GetMapping("")
    public Result getAll() {
        return ResultUtil.success(userService.getAll());
    }
    @GetMapping("findById/{id}")
    public Result getById(@PathVariable("id")Integer id) {
        return ResultUtil.success(userService.getById(id));
    }

}
