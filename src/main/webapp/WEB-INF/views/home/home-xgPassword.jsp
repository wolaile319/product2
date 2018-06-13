
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--修改密码页面--%>
<p class="xgmm">登录账号：<span>1472582525</span></p>
<div class="xg_jd">
    <p class="jd_p1 jd_py">1</p>
    <p class="jd_p2">短信验证</p>
    <p class="jd_p2">----------------------------------------------</p>
    <p class="jd_p3 jd_py">2</p>
    <p class="jd_p2 jd_yan">设置新密码</p>
</div>
<div class="xg_dx">
    <form method="post" action="#">
        <div>
            <p class="yzm"><sapn class="span">*</sapn> 验证码</p>
            <input type="text" name="yanzhengma" placeholder="请输入短信验证码">
            <p class="hq_yzm">获取验证码</p>
        </div>
        <div>
            <p class="yzm"></p>
            <a href="">下一步</a>
        </div>
    </form>
</div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>