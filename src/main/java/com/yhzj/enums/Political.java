package com.yhzj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 描述:
 * 政治面貌
 *
 * @author mixue
 * @create 2018-06-06 18:28
 */
@Getter
@AllArgsConstructor
public enum Political {
    PARTYMEMBER("党员"),
    LEAGUEMEMBER("团员"),
    PROBATIONARYPARTYMEMBER("预备党员"),
    MASSES("群众"),
    DEMOCRATICPARTIES("民主党派"),
    OTHER("其他");
    private String name;
}
