package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 性别
 *
 * @author mixue
 * @create 2018-06-09 14:52
 */
@Getter
@AllArgsConstructor
public enum Sex {
    MALE("男"),
    FAMALE("女");
    private String name;
}
