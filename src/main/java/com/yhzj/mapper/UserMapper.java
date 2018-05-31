package com.yhzj.mapper;

import com.yhzj.entity.User;
import org.apache.ibatis.annotations.Param;
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

    /**
     * 根据account获取用户记录
     * @param account
     * @return
     */
    public User getLoginUser(@Param("account")String account);
}
