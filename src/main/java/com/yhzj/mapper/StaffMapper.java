package com.yhzj.mapper;

import com.yhzj.entity.Role;
import com.yhzj.entity.Staff;

import java.util.List;

/**
 * 描述:
 * 员工类mapper接口
 *
 * @author mixue
 * @create 2018-06-12 16:37
 */
public interface StaffMapper {
    List<Staff> findAll();
    int insert(Role role);
}
