<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!-- 底部固定区域 -->
<div class="layui-footer"></div>
</div>
</div>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="layui/layui.js"></script>
<script>
        //薪酬 -> 薪酬设置头部跳转
    function xinchou() {
        $('.xc_jg_sz').show();
        $('#xc_jg_sz').css('color','#E55981');
        $('.kq_jx_fa').hide();
        $('#kq_jx_fa').css('color','#aaa');
        $('.js_fa').hide();
        $('#js_fa').css('color','#aaa');
        $('.j_bt_fa').hide();
        $('#j_bt_fa').css('color','#aaa');
        $('.qy_sz').hide();
        $('#qy_sz').css('color','#aaa');
    };
    function kaoqin() {
        $('.kq_jx_fa').show();
        $('#kq_jx_fa').css('color','#E55981');
        $('.xc_jg_sz').hide();
        $('#xc_jg_sz').css('color','#aaa');
        $('.js_fa').hide();
        $('#js_fa').css('color','#aaa');
        $('.j_bt_fa').hide();
        $('#j_bt_fa').css('color','#aaa');
        $('.qy_sz').hide();
        $('#qy_sz').css('color','#aaa');
    };
    function jishui() {
        $('.js_fa').show();
        $('#js_fa').css('color','#E55981');
        $('.kq_jx_fa').hide();
        $('#kq_jx_fa').css('color','#aaa');
        $('.xc_jg_sz').hide();
        $('#xc_jg_sz').css('color','#aaa');
        $('.j_bt_fa').hide();
        $('#j_bt_fa').css('color','#aaa');
        $('.qy_sz').hide();
        $('#qy_sz').css('color','#aaa');
    };
    function jinbu() {
        $('.j_bt_fa').show();
        $('#j_bt_fa').css('color','#E55981');
        $('.kq_jx_fa').hide();
        $('#kq_jx_fa').css('color','#aaa');
        $('.js_fa').hide();
        $('#js_fa').css('color','#aaa');
        $('.xc_jg_sz').hide();
        $('#xc_jg_sz').css('color','#aaa');
        $('.qy_sz').hide();
        $('#qy_sz').css('color','#aaa');
    };
    function qiye() {
        $('.qy_sz').show();
        $('#qy_sz').css('color','#E55981');
        $('.kq_jx_fa').hide();
        $('#kq_jx_fa').css('color','#aaa');
        $('.js_fa').hide();
        $('#js_fa').css('color','#aaa');
        $('.j_bt_fa').hide();
        $('#j_bt_fa').css('color','#aaa');
        $('.xc_jg_sz').hide();
        $('#xc_jg_sz').css('color','#aaa');
    };

    //    工资报表
    function yuedu() {
        $('#rq_mm').show();
        $('#rq_yy').hide();
        $('#yuedu').show();
        $('.aa').css('border-color','#E55981');
        $('#jidu').hide();
        $('.ab').css('border-color','#ccc');
        $('#niandu').hide();
        $('.ac').css('border-color','#ccc');
    };
    function jidu() {
        $('#rq_mm').hide();
        $('#rq_yy').show();
        $('#yuedu').hide();
        $('.aa').css('border-color','#ccc');
        $('#jidu').show();
        $('.ab').css('border-color','#E55981');
        $('#niandu').hide();
        $('.ac').css('border-color','#ccc');
    };
    function niandu() {
        $('#rq_mm').hide();
        $('#rq_yy').show();
        $('#yuedu').hide();
        $('.aa').css('border-color','#ccc');
        $('#jidu').hide();
        $('.ab').css('border-color','#ccc');
        $('#niandu').show();
        $('.ac').css('border-color','#E55981');
    };

    /**
     * 日期表格
     */
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //年月选择器
        laydate.render({
            elem: '#test3'
            ,type: 'month'
        });
        //年选择器
        laydate.render({
            elem: '#test2'
            ,type: 'year'
        });
    });

    layui.use('table', function(){
        var table = layui.table;
    });

    function bd_wx() {
        $('#form1').hide();
        $('#wx_bd').html('<a id="wx_bd" style="color:rgb(229,89,129)" href="javascript:wx_bd()">立即绑定</a>');
        $('#weibd').show();
    };
    function wx_bd() {
        $('#form1').show();
        $('#wx_bd').html('<a></a>');
        $('#weibd').hide();
    };
    function bd_quxiao() {
        $('#bangding').show();
        $('#weibaingding').show();
        $('#form').hide();
        $('#h6').hide();
    };
    function youxiang() {
        $('#bangding').hide();
        $('#weibaingding').hide();
        $('#form').show();
        $('#h6').show();
    };
    function bianji() {
        $('#bianji').hide();
        $('#qx').show();
    };
    $('#quxiao').click(function () {
        $('#bianji').show();
        $('#qx').hide();
    });

    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });

    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //直接嵌套显示
        laydate.render({
            elem: '#test-n1'
            ,position: 'static'
        });
        laydate.render({
            elem: '#test-n2'
            ,position: 'static'
            ,lang: 'en'
        });
        laydate.render({
            elem: '#test-n3'
            ,type: 'month'
            ,position: 'static'
        });
        laydate.render({
            elem: '#test-n4'
            ,type: 'time'
            ,position: 'static'
        });
    });

    function xiugai() {
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.open({
                type:'1',
                title:'更换手机号',
                area: ['500px', '430px'], //宽高
                content: '<div class="xiugai">\n' +
                '    <form action="#" method="post">\n' +
                '        <div class="gg">\n' +
                '            <p>手机号</p>\n' +
                '            <input class="jinyong" type="text" name="phone" placeholder="14725825825" readonly>\n' +
                '        </div>\n' +
                '        <div class="gg">\n' +
                '            <p><span>*</span> 登录密码</p>\n' +
                '            <input type="password" name="password" placeholder="请输入登录密码" >\n' +
                '        </div>\n' +
                '        <div class="gg">\n' +
                '            <p><span>*</span> 新手机号</p>\n' +
                '            <input type="text" name="phone1" placeholder="请输入新手机号">\n' +
                '        </div>\n' +
                '        <div class="gg">\n' +
                '            <p><span>*</span> 验证码</p>\n' +
                '            <input type="text" name="yanzhengma" placeholder="请输入验证码">\n' +
                '            <a href="#">获取验证码</a>\n' +
                '        </div>\n' +
                '        <div class="gg xian"><h6>提示：更换后，下次需要使用新的手机号进行登录</h6></div>\n' +
                '        <a class="b1">取消</a>\n' +
                '        <button class="b2">确定</button>\n' +
                '    </form>\n' +
                '</div>'
            });
        });
    };
</script>
</body>
</html>