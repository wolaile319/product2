package com.yhzj.utils;

import com.yhzj.entity.Result;
import com.yhzj.resultenum.ResultEnum;



/**
 * 返回数据处理结果的工具类
 * @author qinling
 * @version 2018/5/27 22:09
 */



public class ResultUtil {


    /**
     * 成功时返回的结果（含有返回数据）
     * @param object 操作成功返回的数据
     * @return
     */


    public static Result success(Object object) {
        Result result=new Result();
        result.setCode(ResultEnum.SUCCESS.getCode());
        result.setMessage(ResultEnum.SUCCESS.getMessage());
        result.setDate(object);
        return result;
    }
    //成功时返回的结果（不含有返回数据）
    public static Result success() {
        return success(null);
    }
    //发生错误时返回的结果
    public static Result error(Integer code,String message) {
        Result result=new Result();
        result.setCode(code);
        result.setMessage(message);
        return result;
    }
}

