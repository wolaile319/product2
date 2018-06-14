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
            <li>1、考勤规则用于管理企业的迟到、早退、旷工、请假、加班的扣款规则。</li>
            <li>2、您可以根据企业的情况进行方案自定义。</li>
            <li>3、如遇到操作相关的问题，您可以在这里核查操作记录。 <a href="">【操作记录】</a></li>
        </ul>
    </div>
    <div class="biao-middle">
        <button class="layui-btn" id="btn2">新增班次</button>
    </div>
    <div class="biao-foot">
        <table class="layui-table" lay-even lay-skin="nob">
            <colgroup>
                <col width="200px">
                <col width="700px">
                <col>
            </colgroup>
            <thred>
                <tr>
                    <td lay-data=""><span>方案名称</span></td>
                    <td><span>方案描述</span></td>
                    <td><span>操作</span></td>
                </tr>
            </thred>
        </table>
    </div>
</div>
<%@include file="/WEB-INF/views/comon/footer.jsp"%>
