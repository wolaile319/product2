
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--历史工资页面--%>
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
<div class="time_biao">
    <div class="time_biao_tou">
        <a href="" class="a1">上传历史工资</a>
    </div>
</div>
<div class="lishi_pay">
    <table class="layui-table" lay-skin="line">
        <colgroup>
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="200">
            <%--<col>--%>
        </colgroup>
        <thead>
        <tr>
            <th>计薪月份</th>
            <th>计薪人数</th>
            <th>应发工资</th>
            <th>实发工资</th>
            <th>个税总额</th>
            <th>企业成本</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>贤心</td>
            <td>汉族</td>
            <td>1989-10-14</td>
            <td>人生似修行</td>
            <td>人生似修行</td>
            <td>人生似修行</td>
        </tr>
        </tbody>
    </table>
    <div class="lishi_shuju">
        <div class="lishi_shuju_nr">
            <img src="images/kong.png">
            <p class="lishi_tishi">当前无历史工资数据</p>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>