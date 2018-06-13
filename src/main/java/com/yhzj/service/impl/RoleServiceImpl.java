package com.yhzj.service.impl;

import com.yhzj.entity.Role;
import com.yhzj.mapper.RoleMapper;
import com.yhzj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 描述:
 * 角色service接口实现类
 *
 * @author mixue
 * @create 2018-06-12 14:36
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper mapper;
    @Override
    public int insert(Role role) {
        return mapper.save(role);
    }

    @Override
    public Role findById(Integer id) {
        return mapper.findById(id);
    }
}
