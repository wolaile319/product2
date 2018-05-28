package com.yhzj.myexception;

import com.yhzj.resultenum.ResultEnum;

/**
 * 自定义异常(spring抛出是RuntimeException时才会回滚事务）
 *
 * @author qinling
 * @version 2018/5/27 19:27
 */

public class MyException extends RuntimeException {
    private Integer code;
    public MyException(ResultEnum resultEnum) {
        super(resultEnum.getMessage());
        this.code=resultEnum.getCode();
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }
}
