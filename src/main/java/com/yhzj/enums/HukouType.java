package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 户口类型
 *
 * @author mixue
 * @create 2018-06-06 18:25
 */
@Getter
@AllArgsConstructor
public enum  HukouType {
    CITY("城镇"),
    NOTCITY("非城镇");
    private String name;
}
