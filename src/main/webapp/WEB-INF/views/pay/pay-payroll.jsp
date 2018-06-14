
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--电子工资条页面--%>
<div class="time_tou">
    <div class="time_zhong pay_tou">
        <a class="time_tou_1" href="">当月工资</a>
        <a class="time_tou_1" href="">历史工资</a>
        <a class="time_tou_1" href="">薪酬报表</a>
        <a class="time_tou_1" href="">薪酬设置</a>
        <a class="time_tou_1 xc_nian_dianzi" href="">年终奖计算</a>
        <a class="time_tou_1 xc_nian_dianzi" href="">电子工资条</a>
    </div>
</div>
<div class="payroll">
    <div class="payroll_tou">
        <a class="pll_upload" href="">温馨提示</a>
        <a class="pll_upload" href="">下载模板</a>
        <a class="pll_upload" href="">上传工资条</a>
    </div>
    <h3 class="pll_yue">查看月份</h3>
    <div class="layui-input-inline1" id="rq_mm">
        <input type="text" class="layui-input" id="test3" placeholder="2018-04">
    </div>
    <div class="pll_huizong">
        <h3 class="pll_heji">合计</h3>
        <div class="pll_mixi">
            <p class="p1">计薪人数</p>
            <p class="p1"><span>2</span>人</p>
        </div>
        <div class="pll_mixi">
            <p class="p1">应发工资</p>
            <p class="p1"><span>60000.0</span>元</p>
        </div>
        <div class="pll_mixi">
            <p class="p1">实发工资</p>
            <p class="p1"><span>60000.0</span>元</p>
        </div>
    </div>
    <div class="pll_biaotou">
        <div class="pll_shijian">
            <p>2018-04</p>
        </div>
        <div class="pll_kong">
            <a class="a1">《上一月</a>
            <a class="a1">下一月》</a>
        </div>
        <div class="pll_xian">
            <a class="a2">删除工资表</a>
            <a class="a2">重新长传工资表</a>
        </div>
    </div>
    <div class="pll_biaodan">
        <table class="layui-hide" id="test"></table>
    </div>
</div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>

<script>
    layui.use('table', function(){
        var table = layui.table;
        table.render({
            elem: '#test'
            ,url:'/demo/table/user/'
            ,width: 1049
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