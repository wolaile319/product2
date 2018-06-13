package com.yhzj.web;

import com.yhzj.annotation.NoLogin;
import com.yhzj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;

/**
 * 描述:
 *  测试
 * @author mixue
 * @create 2018-06-12 10:34
 */

@Controller
@NoLogin
public class TestController {
    @Autowired
    private RoleService roleService;

    @GetMapping("test")
    public ModelAndView testRole(){
        ModelAndView view=new ModelAndView();
        view.setViewName("test/test");
        view.addObject("role",roleService.findById(1));
        return view;
    }
}
