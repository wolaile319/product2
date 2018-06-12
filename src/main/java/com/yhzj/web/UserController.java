package com.yhzj.web;

import com.yhzj.annotation.NoLogin;
import com.yhzj.entity.Result;
import com.yhzj.entity.User;
import com.yhzj.service.UserService;
import com.yhzj.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("delById/{id}")
    public Result delById(@PathVariable("id")Integer id) {
        return ResultUtil.success(userService.delById(id));
    }

    @PostMapping("updateUser")
    public Result updateUser(User user) {
        userService.upDateUser(user);
        return ResultUtil.success();
    }

}
