package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 血型
 *
 * @author mixue
 * @create 2018-06-07 18:16
 */
@Getter
@AllArgsConstructor
public enum BloodType {
    A("A"),
    B("B"),
    O("O"),
    AB("AB"),
    OTHER("其他/TH阴性");
    private String name;
}
