package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 学历
 *
 * @author mixue
 * @create 2018-06-07 17:58
 */
@Getter
@AllArgsConstructor
public enum Qualification {
    DOCTOR("博士"),
    MASTER("硕士/MBA/EMBA"),
    UNDERGRADUATE("本科"),
    BACHELOR("本科/学士学位"),
    COLLEGE("大专/高职"),
    HIGHSCHOOL("高中/中专/中技"),
    OTHER("其他");
    private String name;
}
