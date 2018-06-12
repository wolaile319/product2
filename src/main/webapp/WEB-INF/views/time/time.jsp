
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="time_tou">
    <div class="time_zhong">
        <a class="time_tou_1" href="">当月考勤</a>
        <a class="time_tou_1" href="">历史考勤</a>
        <a class="time_tou_1" href="">考勤报表</a>
        <a class="time_tou_1" href="">休假管理</a>
        <a class="time_tou_1" href="">考勤设置</a>
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
        <div class="time_biao">
            <div class="time_biao_tou">
                <h4>2018年4月考勤表</h4>
    <h3>总出勤<span>1</span>人</h3>
    <div class="time_chaxun">
        <p class="dongtai">动态搜索</p>
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
        <table class="layui-table" lay-data="{width: 100%, height:332, url:'/demo/table/user/', page:true, id:'idTest'}" lay-filter="demo">
            <thead>
            <tr style="background-color: #9acfea">
                <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
                <th lay-data="{field:'id', width:80, fixed: true}">姓名</th>
                <th lay-data="{field:'id', width:80, sort: true, fixed: true}">工号</th>
                <th lay-data="{field:'username', width:80}">部门</th>
                <th lay-data="{field:'username', width:80}">职位</th>
                <th lay-data="{field:'sex', width:40, sort: true}">性别</th>
                <th lay-data="{field:'s', width:160, sort: true}">入职时间</th>
                <th lay-data="{field:'city', width:80}">手机号</th>
                <th lay-data="{field:'sign', width:160}">证件类型</th>
                <th lay-data="{field:'classify', width:80}">证件号</th>
                <th lay-data="{field:'score', width:80, sort: true}">状态</th>
                <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}">操作</th>
            </tr>
            </thead>
        </table>
    </div>
</div>
