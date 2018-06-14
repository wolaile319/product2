
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>

<%--考勤设置页面--%>
<div class="time_tou">
    <div class="time_zhong">
        <a class="time_tou_1" href="${base}views/time/time.jsp">当月考勤</a>
        <a class="time_tou_1" href="${base}views/time/historyTime.jsp">历史考勤</a>
        <a class="time_tou_1" href="${base}views/time/timeBB.jsp">考勤报表</a>
        <a class="time_tou_1" href="${base}views/time/leaveManage.jsp">休假管理</a>
        <a class="time_tou_1 time_kaoqinshezhi" href="${base}views/time/timeSet.jsp">考勤设置</a>
    </div>
</div>
<h3>考勤设置页面</h3>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>