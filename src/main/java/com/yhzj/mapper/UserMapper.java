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
}
