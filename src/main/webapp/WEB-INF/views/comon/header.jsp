<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String base = request.getScheme() + "://" + request.getServerName() + ":"
            + request.getServerPort() + request.getContextPath() + "/";
    pageContext.setAttribute("base", base);
    System.out.println("-----------------------------------------------"+base);
%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <base href="${base}">
    <title>HR-最专业的人力资源管理系统</title>
    <script src="/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" href="/css/hr-header.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="/layui/layui.js" type="text/javascript"></script>
    <script src="/js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
<div class="hr-header">
    <h3><span class="glyphicon glyphicon-time"></span>HR人事部</h3>
    <a href="#">退出登录&nbsp;&nbsp;<span class="glyphicon glyphicon-export"></span></a>
    <input type="text" placeholder="搜索员工、部门、职位">
    <span class="glyphicon glyphicon-search"></span>

</div>
<div class="hr-left-side">
    <a href="#">
        <img src="/img/hr-woman.png"/>
        <p>李欣</p>
    </a>
    <ul>
        <li><a href="#" style="border-left: 3px solid #e56281;background-color: #f2f2f2"><span class="glyphicon glyphicon-blackboard"></span>我的工作台</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>员工管理</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-object-align-horizontal"></span>组织管理</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>招聘管理</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-calendar"></span>考勤</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-jpy"></span>薪酬</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-btc"></span>社保公积金</a></li>
    </ul>
    
</div>
<div class="hr-body">
    <div class="body-title1">
        <ul>
            <li><a href="#" style="border-bottom: 2px solid #e56281;color: #e56281">员工花名册</a></li>
            <li><a href="#">员工关系管理</a></li>
            <li><a href="#">员工档案库</a></li>
            <li><a href="#">统计分析</a></li>
            <li><a href="#">人事报表</a></li>
            <li><a href="#">人事动态</a></li>
            <li><a href="#">基础设置</a></li>
        </ul>
    </div>
    <div class="body-title2">
        <ul>
            <li><a href="#">转正管理</a></li>
            <li><a href="#">合同管理</a></li>
            <li><a href="#">离职管理</a></li>
            <li><a href="#">人事异动</a></li>
            <li><a href="#">任职经历</a></li>
        </ul>
    </div>
    <div class="body-title2-bottom"></div>