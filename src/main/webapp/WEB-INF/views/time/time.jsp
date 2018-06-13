
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--当月考勤--%>
<div class="time_tou">
    <div class="time_zhong">
        <a class="time_tou_1 time_dangyuekaoqin" href="${base}views/time/time.jsp">当月考勤</a>
        <a class="time_tou_1" href="${base}views/time/historyTime.jsp">历史考勤</a>
        <a class="time_tou_1" href="${base}views/time/timeBB.jsp">考勤报表</a>
        <a class="time_tou_1" href="${base}views/time/leaveManage.jsp">休假管理</a>
        <a class="time_tou_1" href="${base}views/time/timeSet.jsp">考勤设置</a>
    </div>
</div>
<div class="time_tou1">
    <a href="" class="time_tou1_a">月考勤汇总表</a>
    <a href="" class="time_tou1_a">出勤记录明细</a>
</div>
<div class="time_biao">
    <div class="time_biao_tou">
        <h4>2018年4月考勤表</h4>
        <a href="" class="a4">新建下月考勤</a>
        <a href="" class="a3">核算考勤</a>
        <a href="" class="a2">导入出勤记录</a>
        <a href="" class="a1">同步本月考勤人员</a>
    </div>
    <h3>总出勤<span>16</span>人</h3>
    <p class="dongtai">动态搜索</p>
    <div class="time_chaxun">
        <form action="#" method="post">
            <p class="pi">关键字</p>
            <input class="input1 input3" type="text" name="guanjianzi" placeholder="请输入姓名/工号">
            <p class="pi">部门</p>
            <select class="input1">
                <option value="0" readonly>请选择</option>
                <option value="1">你好</option>
                <option value="2">你好</option>
                <option value="3">你好</option>
                <option value="4">你好</option>
            </select>
            <p class="pi">工作性质</p>
            <select class="input1">
                <option value="0" readonly>请选择</option>
                <option value="1">你好</option>
                <option value="2">你好</option>
                <option value="3">你好</option>
                <option value="4">你好</option>
            </select>
            <p class="pi">员工状态</p>
            <select class="input1">
                <option value="0" readonly>请选择</option>
                <option value="1">你好</option>
                <option value="2">你好</option>
                <option value="3">你好</option>
                <option value="4">你好</option>
            </select>
            <p class="pi pp">排序</p>
            <select class="input2 input1">
                <option value="0" readonly>请选择</option>
                <option value="1">按工号排序</option>
                <option value="2">你好</option>
            </select>
            <button>查询</button><a class="ac" href="#">重置</a>
        </form>
    </div>
    <div class="time_biaoti">
        <table class="layui-hide" id="test"></table>
    </div>
</div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>

<script src="js/jquery-3.1.1.min.js"></script>
<script src="layui/layui.js"></script>
<script>
    //    折叠表
    layui.use('table', function(){
        var table = layui.table;
        table.render({
            elem: '#test'
            ,url:'/demo/table/user/'
            ,width: 1089
            ,height: 332
            ,cols: [[
                {type:'checkbox', fixed: 'left'}
                ,{field:'id', width:80, title: 'ID', sort: true, fixed: 'left'}
                ,{field:'username', width:80, title: '用户名'}
                ,{field:'sex', width:80, title: '性别', sort: true}
                ,{field:'city', width:80, title: '城市'}
                ,{field:'sign', width: 219, title: '签名'}
                ,{field:'experience', width:80, title: '积分', sort: true}
                ,{field:'score', width:80, title: '评分', sort: true}
                ,{field:'classify', width:80, title: '职业'}
                ,{field:'wealth', width:120, title: '财富', sort: true, fixed: 'right'}
            ]]
            ,page: true
        });
    });
</script>
