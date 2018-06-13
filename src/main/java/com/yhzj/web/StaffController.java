package com.yhzj.web;

import com.yhzj.annotation.NoLogin;
import com.yhzj.entity.Job;
import com.yhzj.entity.Staff;
import com.yhzj.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 描述:
 *
 * @author mixue
 * @create 2018-06-12 16:36
 */
@Controller
@RequestMapping("staff")
@NoLogin
public class StaffController {
    @Autowired
    private StaffService service;
    @GetMapping("/list")
    public ModelAndView list(){
        ModelAndView model = new ModelAndView();
        model.setViewName("staff/list");
        List<Staff> list = service.findAll();
        model.addObject("staffs",list);
        Job job = list.get(0).getJob();
        return model;
    }
}
