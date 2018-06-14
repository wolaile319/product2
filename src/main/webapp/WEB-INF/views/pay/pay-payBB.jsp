
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--薪酬报表页面--%>
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
<div class="xc_bb">
    <div class="xc_3a">
        <a href="javascript:yuedu()" class="a1 aa">月度</a>
        <a href="javascript:jidu()" class="a1 ab">季度</a>
        <a href="javascript:niandu()" class="a1 ac">年度</a>

        <div class="layui-input-inline1" id="rq_mm">
            <input type="text" class="layui-input" id="test3" placeholder="2018-04">
        </div>

        <div class="layui-input-inline1 rq_yy" id="rq_yy">
            <input type="text" class="layui-input" id="test2" placeholder="2018年">
        </div>

    </div>
    <div id="yuedu" class="kq_bb_excel gz_yd_bb">
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月工资明细表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月各部门工资明细表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月发薪银行对接表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月纸质工资条</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月部门人力成本分析表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月岗位薪酬宽带统计表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月工资发放表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月调薪明细表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">04月薪酬异动表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
    </div>
    <div id="jidu" class="kq_bb_excel gz_yd_bb">
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">企业季度人力成本汇总表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">各季度部门工资报表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
    </div>
    <div id="niandu" class="kq_bb_excel gz_yd_bb">
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">企业月度人力成本汇总表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">各部门月度人力成本汇总表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">员工薪酬汇总表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
        <div class="bb_1">
            <div class="bb_img">
                <img src="images/excelbiao.png">
            </div>
            <div class="bb_text_xiazai">
                <h3 class="bb_text">员工调薪明细表</h3>
                <p class="bb_xiazai">下载报表</p>
            </div>
        </div>
    </div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>