
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--年终奖计算页面--%>
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
<div class="bonuses">
    <div class="bs_tou">
        <p class="bs_zhushi"><span>*</span> 年终奖计算指按全年一次性奖金计税规则进行计算。</p>
        <a href="" class="bs_save">添加年终奖</a>
    </div>
    <div class="bs_shuju">
        <div class="bs_jilu">
            <h3 class="bs_jilu_text">2017年年终奖</h3>
            <div class="div">
                <p class="p1">年终奖发放人数</p>
                <p class="p2">1人</p>
            </div>
            <div class="div">
                <p class="p1">预计发放年终奖金额</p>
                <p class="p2">0元</p>
            </div>
            <div class="aa">
                <a href="" class="a1">删除</a>
                <a href="" class="a1">导出报表</a>
                <a href="" class="a1">查看详情</a>
            </div>
        </div>
    </div>
    <div class="bs_wujilu">
        <img src="images/kong.png">
        <p>暂无数据</p>
    </div>
</div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>