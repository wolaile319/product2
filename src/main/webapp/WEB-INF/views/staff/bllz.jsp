<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!--办理离职-->
<%@include file="/views/comon/header.jsp"%>
<link rel="stylesheet" href="css/staff-lzgl.css">
<div class="body-detail">
    <div class="div2">
        <a href="#">返回</a>
        <a href="#">离职管理</a>
        <span>/&nbsp;&nbsp;办理离职</span>
    </div>
    <div class="div3">
        <p>胡歌<span class="glyphicon glyphicon-user"></span></p>
        <p>工作性质：实习&nbsp;&nbsp;&nbsp;&nbsp;员工状态：正式</p>
        <form>
            <span>
                <i>*</i>申请日期：
                <input type="text" name="applied_date" id="applied_date" placeholder="&nbsp;&nbsp;&nbsp;请选择...">
                <span class="glyphicon glyphicon-calendar"></span>
            </span>
            <span>
                <i>*</i>离职原因：
                <input type="text" name="leave_reason" id="leave_reason" placeholder="&nbsp;&nbsp;&nbsp;请输入离职原因...">
                <span class="glyphicon glyphicon-question-sign"></span>
            </span>
            <span>
                <i>*</i>计划离职日期：
                <input type="text" name="plan_leave_date" id="plan_leave_date" placeholder="&nbsp;&nbsp;&nbsp;请选择...">
                <span class="glyphicon glyphicon-calendar"></span>
            </span>
            <span>
                <i>*</i>薪资结算日期：
                <input type="text" name="salary_settle_date" id="salary_settle_date" placeholder="&nbsp;&nbsp;&nbsp;请选择...">
                <span class="glyphicon glyphicon-calendar"></span>
            </span>
            <span class="textarea-span">备注：<textarea name="remark" id="remark" placeholder="&nbsp;&nbsp;&nbsp;请输入..."></textarea></span>
            <strong style="clear: both"></strong>
            <a href="#">取消</a>
            <a href="#">保存</a>
        </form>
    </div>
</div>
</div><!-- layui-body -->





<%@include file="/views/comon/footer.jsp"%>