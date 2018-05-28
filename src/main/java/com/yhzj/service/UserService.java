package com.yhzj.service;

import com.yhzj.entity.User;

import java.util.List;

/**
 * @author qinling
 * @version 2018/5/28 15:42
 */
public interface UserService {
    //获取所有用户
    List<User> getAll();
}
