
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--考勤报表页面--%>
<div class="time_tou">
    <div class="time_zhong">
        <a class="time_tou_1" href="${base}views/time/time.jsp">当月考勤</a>
        <a class="time_tou_1" href="${base}views/time/historyTime.jsp">历史考勤</a>
        <a class="time_tou_1 time_kaoqinbaobiao" href="${base}views/time/timeBB.jsp">考勤报表</a>
        <a class="time_tou_1" href="${base}views/time/leaveManage.jsp">休假管理</a>
        <a class="time_tou_1" href="${base}views/time/timeSet.jsp">考勤设置</a>
    </div>
</div>
<div class="layui-input-inline">
    <input type="text" class="layui-input" id="test3" placeholder="2018-05 ▼">
</div>
<div class="kq_bb_excel">
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月考勤汇总表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月部门考勤汇总表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月排班明细表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月异常考勤汇总表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月异常考勤明细表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月部门异常考勤明细表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月请假汇总表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月部门请假明细表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月外勤汇总表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月部门外勤明细表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月加班汇总表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">04月部门加班明细表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
    <div class="bb_1">
        <div class="bb_img">
            <img src="images/excelbiao.png">
        </div>
        <div class="bb_text_xiazai">
            <h3 class="bb_text">员工剩余假期统计表</h3>
            <p class="bb_xiazai">下载报表</p>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>