
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--历史考勤--%>
<div class="time_tou">
    <div class="time_zhong">
        <a class="time_tou_1" href="${base}views/time/time.jsp">当月考勤</a>
        <a class="time_tou_1 time_lishikaoqin" href="${base}views/time/historyTime.jsp">历史考勤</a>
        <a class="time_tou_1" href="${base}views/time/timeBB.jsp">考勤报表</a>
        <a class="time_tou_1" href="${base}views/time/leaveManage.jsp">休假管理</a>
        <a class="time_tou_1" href="${base}views/time/timeSet.jsp">考勤设置</a>
    </div>
</div>
<div class="time_tou1">
    <a href="" class="time_tou1_a">历史考勤表</a>
    <a href="" class="time_tou1_a">历史出勤记录</a>
</div>
<div class="lishi_kqb_sc">
    <p>上传历史考勤</p>
    <div class="kqb_nr">
        <table class="layui-table" lay-skin="line">
            <colgroup>
                <col width="150">
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>人物</th>
                <th>民族</th>
                <th>出场时间</th>
                <th>格言</th>
            </tr>
            </thead>
        </table>
    </div>

</div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>