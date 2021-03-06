<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
    pageContext.setAttribute("base", base);
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <base href="${base}">
    <link rel="stylesheet" href="layui/css/layui.css">
    <link rel="stylesheet" href="css/home-home.css">
    <link rel="stylesheet" href="css/time-time.css">
    <link rel="stylesheet" href="css/pay-pay.css">
    <link rel="stylesheet" href="css/hr-header.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        a{
            font-size: 14px;
        }
        p{
            margin-bottom: 0;
        }
        a:hover{
            text-decoration:none;
            color: #e55981;
        }
        .layui-layout-admin .layui-header {
            background-color: rgb(229, 98, 129);
        }
        .layui-layout-admin .layui-logo {
            color: #fff;
            font-size:20px;
        }
        .layui-nav .layui-nav-item a {
            padding: 0 30px;
            text-align: center;
            color: #fff;
            margin-bottom: 0;
        }
        .touxiang>img{
            width: 48px;
            height: 48px;
            margin-top: 10px;
        }
        .touxiang>p{
            margin-top: 10px;
            color: #fff;
        }
        .sousuo{
            width:250px;
            height:60px;
            position: absolute;
            top:0;
            right:330px;
        }
        .sousuo>form>input{
            float: left;
            width:200px;
            height:24px;
            margin-top:18px;
            border-radius: 10px 0 0 10px;
            border: 1px solid #fff;
            padding:0 6px;
            background-color: #ccc;
        }
        .sousuo>form>p{
            float:left;
            width:30px;
            height:24px;
            margin-top:18px;
            border-radius:0  10px 10px 0;
            border: 1px solid #fff;
            text-align: center;
            color: #fff;
            font-size: 15px;
            line-height: 22px;
            background-color: #ccc;
            cursor: pointer;
        }
        .gongsiming{
            height:60px;
            position: absolute;
            top:0;
            left:200px;
        }
        .gongsiming>p{
            float: left;
        }
        .gongsiming>.p1{
            font-size: 20px;
            height: 60px;
            line-height: 60px;
            margin-right: 10px;
            color: #fff;
        }
        .gongsiming>.p2{
            height: 60px;
            line-height: 60px;
            font-size: 15px;
            color: #fff;
        }
        .xiaoxi{
            height: 60px;
            width:50px;
            position: absolute;
            top: 0;
            right: 250px;
            text-align: center;
            font-size: 15px;
            line-height: 60px;
            color: #fff;
            cursor: pointer;
        }
        .xiaoxi:hover{  background-color: #ddd;  }
        .xiaoxi:hover .xx_tishi{  display: block;  }
        .xx_tishi{
            width:200px;
            height: 120px;
            padding:10px 10px;
            position: absolute;
            top:62px;
            background-color: #fff;
            display: none;
            color: rgb(229, 98, 129);
            right: -76px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .xx_tishi>P{
            height:25px;
            text-align: center;
            line-height: 20px;
            border-bottom:1px solid #ccc;
        }
        .xx_tishi>.dh_neirong{
            color: #ccc;
        }
        .dianhua{
            height: 60px;
            line-height: 60px;
            width:60px;
            position: absolute;
            top: 0;
            right: 170px;
            font-size: 15px;
            text-align: center;
            color: #fff;
            cursor: pointer;
        }
        .dianhua:hover{  background-color: #ddd;  }
        .dh_xinxi{
            width:220px;
            height: 130px;
            padding:10px 10px;
            position: absolute;
            top:62px;
            background-color: #fff;
            display: none;
            color: rgb(229, 98, 129);
            right: -80px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .dh_xinxi>.p1{
            height:25px;
            text-align: center;
            line-height: 20px;
            border-bottom:1px solid #ccc;
        }
        .dh_neirong>.p2{
            height:40px;
            line-height:40px;
            font-size: 18px;
        }
        .dh_neirong>.p3{
            height:20px;
            line-height:20px;
            font-size: 12px;
            color: #bbb;
        }
        .dianhua:hover .dh_xinxi{
            display: block;
        }
        .shezhi{
            width:50px;
            height:60px;
            cursor: pointer;
            position: absolute;
            top:0;
            right:100px;
        }
        .shezhi>p{
            width:50px;
            height:60px;
            line-height: 60px;
            text-align: center;
            float: left;
            font-size: 15px;
            color: #fff;
        }
        .shezhi_neirong{
            width:150px;
            height:152px;
            background-color: #fff;
            display: none;
            padding:5px 10px;
            border:1px solid #ccc;
            border-radius: 5px;
            position: absolute;
            top:62px;
            right: -45px;
        }
        .shezhi:hover{
            background-color: #ccc;
        }
        .shezhi:hover .shezhi_neirong{
            display: block;
        }
        .shezhi_neirong>a{
            display: block;
            text-align: center;
            height:28px;
            font-size: 15px;
            color: rgb(229, 98, 129) ;
            line-height: 25px;
            border-bottom:1px solid #ccc;
            margin-bottom: 0;
        }
        .shezhi_neirong>a:hover{  background-color: #ddd;  }
        .layui-nav{
            background-color: #cfcfd0;
        }
        .li_dingge{
            height: 20px;
        }
        .li_touxiang{
            height:120px;
        }
        .layui-nav>.li_touxiang>.touxiang{
            height:120px;
        }
        .default_color{
            background-color: #393D49;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <%--顶部固定区域--%>
    <div class="layui-header">
        <div class="layui-logo">HR-人事管理系统</div>
        <div class="gongsiming">
            <p class="p1">华宇科技</p>
            <p class="p2">∨</p>
        </div>
        <div class="sousuo">
            <form action="#" method="post">
                <input type="text" name="" placeholder="搜索员工、部门、职位">
                <p class="tijiao">Go</p>
            </form>
        </div>
        <div class="xiaoxi">消息
            <div class="xx_tishi">
                <p>消息提醒</p>
                <div class="xx_neirong">无记录</div>
            </div>
        </div>
        <div class="dianhua">联系电话
            <div class="dh_xinxi">
                <p class="p1">联系我们</p>
                <div class="dh_neirong">
                    <p class="p2">400-158-3654</p>
                    <p class="p3">请在工作日拨打：09：00 ~ 18:00</p>
                </div>
            </div>
        </div>
        <div class="shezhi">
            <p>设置 ∨</p>
            <div class="shezhi_neirong">
                <a href="#">个人设置</a>
                <a href="#">企业设置</a>
                <a href="#">个性化设置</a>
                <a href="#">账户中心</a>
                <a href="#">退出登录</a>
            </div>
        </div>
    </div>
    <%--左边固定区域--%>
    <div class="layui-side">
        <div class="hr-left-side">
            <a href="#">
                <img src="images/salary.png"/>
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
    </div>

    <%--主体内容区域--%>
    <div class="layui-body">