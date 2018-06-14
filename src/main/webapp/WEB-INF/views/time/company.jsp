<%--
  Created by IntelliJ IDEA.
  User: MACHENIKE
  Date: 2018/6/13 0013
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/comon/timeHeader.jsp"%>
<link rel="stylesheet" href="/css/timeSet.css">
<div class="main">
    <div class="biao-tou">
        <h5>使用指南</h5>
        <ul>
            <li>1、个性化设置修改后，将立即生效。</li>
            <li>2、如遇到操作相关的问题，您可以在这里核查操作记录。 <a href="">【操作记录】</a></li>
        </ul>
    </div>
    <div class="biao-tou">
        <h5>钉钉考勤数据导入</h5>
        <ul>
            <li>适用于用钉钉打卡，请假、外勤、加班走钉钉审批的企业。启用后，系统将提供导入钉钉数据的入口。</li>
            <div>
                <span>启用导入钉钉数据开关</span>
                <div id="div1" class="open1">
                    <div id="div2" class="open2"></div>
                </div>
            </div>
        </ul>
    </div>
    <div class="biao-middle">
        <button class="layui-btn" id="btn1">筛选/排序</button>
        <button class="layui-btn" id="btn2">新增班次</button>
    </div>
    <div class="biao-foot">
        <table class="layui-table" lay-even lay-skin="nob">
            <colgroup>
                <col width="300px">
                <col width="300px">
                <col width="400px">
                <col width="300px">
                <col width="300px">
            </colgroup>
            <thred>
                <tr>
                    <td lay-data=""><span>班次名称</span></td>
                    <td><span>打卡规则</span></td>
                    <td><span>出勤时间</span></td>
                    <td><span>出勤时长</span></td>
                    <td><span>操作</span></td>
                </tr>
            </thred>
            <tbody>
            <tr>
                <td>企业默认考勤组方案</td>
                <td>固定班制</td>
                <td>上下班：09：00--18：30;休息：12：00--13:30;</td>
                <td>ds</td>
                <td><button class="layui-btn"></button></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<script>
    window.onload=function(){
        var div2=document.getElementById("div2");
        var div1=document.getElementById("div1");
        div2.onclick=function(){
            div1.className=(div1.className=="close1")?"open1":"close1";
            div2.className=(div2.className=="close2")?"open2":"close2";
        }
    }
</script>
<%@include file="/WEB-INF/views/comon/footer.jsp"%>
