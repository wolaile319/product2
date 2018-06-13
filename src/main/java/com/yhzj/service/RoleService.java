package com.yhzj.service;

import com.yhzj.entity.Role;
import org.springframework.stereotype.Service;

/**
 * 描述:
 * 角色service接口
 *
 * @author mixue
 * @create 2018-06-12 14:36
 */
public interface RoleService {
    int insert(Role role);
    Role findById(Integer id);
}
