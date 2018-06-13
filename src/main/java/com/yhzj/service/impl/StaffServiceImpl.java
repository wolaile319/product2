package com.yhzj.service.impl;

import com.yhzj.entity.Staff;
import com.yhzj.mapper.StaffMapper;
import com.yhzj.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 描述:
 *
 * @author mixue
 * @create 2018-06-12 18:03
 */
@Service
public class StaffServiceImpl implements StaffService {
    @Autowired
    private StaffMapper mapper;
    @Override
    public List<Staff> findAll() {
        return mapper.findAll();
    }
}
