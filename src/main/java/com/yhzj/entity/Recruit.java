package com.yhzj.entity;

import lombok.Getter;
import org.springframework.stereotype.Service;

import javax.validation.constraints.NotEmpty;

@Getter
@Service
public class Recruit extends BaseEntity {
    @NotEmpty(message = "应聘者姓名不能为空")
    private String name; //姓名
    @NotEmpty(message = "职位不能为空")
    private String position; //应聘职位
    @NotEmpty(message = "性别不能为空")
    private int sex;        //性别
    @NotEmpty(message = "年龄不能为空")
    private int age;        //年龄
    @NotEmpty(message = "工作经验不能为空")
    private String pos;     //工作经验
    @NotEmpty(message = "学历不能为空")
    private String education;//学历
    @NotEmpty(message = "毕业院校不能为空")
    private String universiy;//毕业院校

    private String operation;//操作
}
