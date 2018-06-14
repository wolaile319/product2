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
            <li>1、班次管理，即设置每天的上下班时间，打卡数据讲据此进行解析。</li>
            <li>2、支持为不同的部门/人员，设置不同的上下班时间。</li>
            <li>3、如遇到操作相关的问题，您可以在这里核查操作记录。 <a href="">【操作记录】</a></li>
        </ul>
    </div>
    <div class="biao-middle">
        <button class="layui-btn" id="btn1">筛选/排序</button>
        <button class="layui-btn" id="btn2">新增班次</button>
    </div>
    <div>
        <table class="layui-table" lay-even lay-skin="nob">
            <colgroup>
                <col width="300px">
            </colgroup>
            <thred>
                <tr>
                    <th lay-data="">班次名称</th>
                    <th>打卡规则</th>
                    <th>出勤时间</th>
                    <th>出勤时长</th>
                    <th>操作</th>
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
<%@include file="/WEB-INF/views/comon/footer.jsp"%>
