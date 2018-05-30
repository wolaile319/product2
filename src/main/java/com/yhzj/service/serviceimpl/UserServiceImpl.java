package com.yhzj.service.serviceimpl;

import com.yhzj.entity.User;
import com.yhzj.mapper.UserMapper;
import com.yhzj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * @author qinling
 * @version 2018/5/28 15:49
 */
@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> getAll() {
        return userMapper.findAll();
    }

    @Override
    public User getById(Integer id) {
        return userMapper.findById(id);

    }
@Transactional(readOnly = false)
    @Override
    public int delById(Integer id) {
        User user = userMapper.findById(id);
        userMapper.delByIdUser(id);
        return  userMapper.delByIdAccount(user.getAccount().getId());
    }

}
