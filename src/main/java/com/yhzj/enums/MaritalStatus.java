package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 婚姻状况
 *
 * @author mixue
 * @create 2018-06-07 18:12
 */
@Getter
@AllArgsConstructor
public enum MaritalStatus {
    UNMARRIED("未婚"),
    MARRIED("已婚"),
    MARRIEDWITHBABY("已婚已育");
    private String name;
}
