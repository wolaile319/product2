package com.yhzj.mapper;

import com.yhzj.entity.Role;

import java.util.List;

/**
 * 描述:
 *
 * @author mixue
 * @create 2018-06-12 14:14
 */
public interface RoleMapper {
    int save(Role role);
    int delete(Integer id);
    int update(Role role);
    List<Role> findAll();
}
