
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
    pageContext.setAttribute("base", base);
%>
<%--登录页面--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>后台管理</title>
    <base href="${base}">
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <style>
        body {
            background: #393D49;
        }
    </style>
</head>

<body>
<div class="login_box">
    <div class="login_l_img"><img src="./img/login-img.png" /></div>
    <div class="login">
        <div class="login_logo"><a href="#"><img src="./img/login_logo.png" /></a></div>
        <div class="login_name">
            <p>HR-人事管理系统</p>
        </div>
        <form method="get" action="/hr/list">
            <input name="username" type="text"  value="用户名" onfocus="this.value=''" onblur="if(this.value==''){this.value='用户名'}">
            <span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();" >密码</span>
            <input name="password" type="password" id="password" style="display:none;" onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};"/>
            <input value="登录" style="width:100%;" type="submit">
        </form>
    </div>
    <div class="copyright">某某有限公司 版权所有©2016-2018 技术支持电话：000-00000000</div>
</div>
</body>
</html>
