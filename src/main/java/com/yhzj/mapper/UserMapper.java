package com.yhzj.mapper;

import com.yhzj.entity.User;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author qinling
 * @version 2018/5/27 17:17
 */
@Component
public interface UserMapper {
    //查询所有用户
    List<User> findAll();
    //通过id查询用户
    User findById(Integer id);
    //通过id来删除用法
    int delByIdUser(Integer id);
    //通过id删除对应的id
    int delByIdAccount(Integer id);
    //更新用户表
    void upDataUser(User user);
    //更新账户表
    void upDataAccount(User user);
}
