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
            <li>1、考勤组管理，即将员工分组后设置对应的班次、考勤规则等；</li>
            <li>2、不考勤方案，适用于企业中不需要考勤的人员，即不需要打卡或记录请假等，如企业高层；</li>
            <li>3、不打卡方案，适用于企业中不需要打卡，但需要记录请假等的人员，如长期外勤人员；</li>
            <li>4、支持设置多个考勤组，灵活组合员工的出勤方式，如双休、单休、大小周或排班等。</li>
            <li>5、若员工未加入任何考勤组，核算时，将按“企业默认考勤组”进行核算。</li>
            <li>6、如遇到操作相关的问题，您可以在这里核查操作记录。 <a href="">【操作记录】</a></li>
        </ul>
    </div>
    <div class="biao-middle">
        <button class="layui-btn" id="btn1">筛选/排序</button>
        <button class="layui-btn" id="btn2">新增考勤组</button>
    </div>
    <div>
        <table class="layui-table" lay-even lay-skin="nob">
            <colgroup>
                <col width="200px">
                <col width="100px">
                <col width="500px">
                <col width="150px">
                <col>
            </colgroup>
            <thred>
                <tr>
                    <th lay-data="">考勤组名称</th>
                    <th>考勤类型</th>
                    <th>出勤时间</th>
                    <th>适用范围</th>
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
