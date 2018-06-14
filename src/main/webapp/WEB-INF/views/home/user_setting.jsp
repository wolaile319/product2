
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--个人设置--%>
<div class="user_setting_zuo">
    <div class="st_zuo1">
        <p>个人设置</p>
        <a href="#">个人信息</a>
        <a href="#">修改密码</a>
        <a href="#">消息订阅</a>
        <a href="#">个性化设置</a>
    </div>
    <div class="st_zuo1">
        <p>企业设置</p>
        <a href="#">企业信息</a>
        <a href="#">企业安全</a>
        <a href="#">账号权限</a>
        <a href="#">账号动态</a>
    </div>
    <div class="st_zuo1">
        <p>账户中心</p>
        <a href="#">购买记录</a>
        <a href="#">发票申请</a>
    </div>

</div>
<%--个人设置右--%>
<div class="user_setting_you">
    <p>基本信息</p>

    <div class="st_edit" id="bianji">
        <a href="javascript:bianji()" class="a1">☈编辑</a>
        <div class="st_edit_nr">
            <div class="st_edit_1">
                <img src="images/salary.png">
                <a href="">点击更换</a>
            </div>
            <div class="st_edit_2">
                <p>吴忠禹</p>
                <div class="edit_xx">
                    <p class="p2">QQ号码：<span>14725825825</span></p>
                    <p class="p1">所在地：<span>未填写</span></p>
                </div>
            </div>
        </div>
    </div>
    <div class="dianji_edit" id="qx">
        <div class="st_edit_1 edit_tx">
            <img src="images/salary.png">
            <a href="">点击更换</a>
        </div>
        <form method="post" action="#">
            <div class="biaodan">
                <p><span>*</span> 姓名</p>
                <input type="text" name="name">
            </div>
            <div class="biaodan">
                <p>QQ号码</p>
                <input type="text" name="qq">
            </div>
            <div class="biaodan">
                <p>所在地</p>
                <input type="text" name="address">
            </div>
            <div class="biaodan">
                <p class="p1"></p>
                <button class="button1">提交</button>
                <a class="button2" id="quxiao">取消</a>
            </div>
        </form>
    </div>
    <p>账号信息</p>
    <div class="edit_zhanghao">
        <p>绑定微信和邮箱后，可在消息订阅中设置接收人事提醒，消息查看更及时</p>
        <div>
            <div class="div1">
                <p>手机号</p>
                <p>微信</p>
                <p>邮箱</p>
            </div>
            <div class="div1 div2">
                <p>14725825825</p>
                <p id="weibd"><span>未绑定</span></p>
                <form action="#" method="post" id="form1">
                    <input type="text" name="email" placeholder="请输入微信号！">
                    <a href="javascript:bd_wx()">取消</a>
                    <button>确定</button>
                </form>
                <p id="weibaingding"><span>未绑定</span></p>
                <form action="#" method="post" id="form">
                    <input type="text" name="email" placeholder="请输入邮箱！">
                    <a href="javascript:bd_quxiao()">取消</a>
                    <button>确定</button>
                </form>
            </div>
            <div class="div1">
                <a href="javascript:xiugai()">修改</a>
                <a id="wx_bd" href="javascript:wx_bd()">立即绑定</a>
                <a id="bangding" href="javascript:youxiang()">立即绑定</a>
            </div>
            <h6 id="h6">我们将会给您的邮箱发送一封验证邮件，请按照验证邮件里的提示在24小时内激活您的账号。</h6>
        </div>
    </div>
</div>
