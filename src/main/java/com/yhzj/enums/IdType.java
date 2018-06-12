package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 证件类型
 *
 * @author mixue
 * @create 2018-06-07 18:21
 */
@Getter
@AllArgsConstructor
public enum IdType {
    IDCARD("身份证"),
    PASSPORT("护照"),
    OFFICIALCARD("军官证"),
    TAIWANCARD("台胞证"),
    OTHER("其他");
    private String name;
}
