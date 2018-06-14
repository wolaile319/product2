package com.yhzj.web;

import com.yhzj.annotation.NoLogin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 描述:
 *  测试
 * @author mixue
 * @create 2018-06-12 10:34
 */

@Controller
@NoLogin
public class TestController {
    @GetMapping("time/company")
    public ModelAndView test(){
        ModelAndView view=new ModelAndView();
        view.setViewName("time/company");
        return view;
    }
}
