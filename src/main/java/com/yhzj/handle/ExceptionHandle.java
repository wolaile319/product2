package com.yhzj.handle;

import com.yhzj.entity.Result;
import com.yhzj.myexception.MyException;
import com.yhzj.resultenum.ResultEnum;
import com.yhzj.utils.ResultUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 发生异常时，捕获异常
 * @author qinling
 * @version 2018/5/27 19:24
 */
@ControllerAdvice
public class ExceptionHandle {
    private final static Log log= LogFactory.getLog(ExceptionHandle.class);
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public Result handle(Exception e) {
        if (e instanceof MyException) {
            MyException exception=(MyException)e;
            return ResultUtil.error(exception.getCode(),exception.getMessage());
        }
        log.error("系统异常",e);
        return ResultUtil.error(ResultEnum.UNKNOW_ERROR.getCode(),ResultEnum.UNKNOW_ERROR.getMessage());
    }

}
