
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/comon/header.jsp"%>
<%--薪酬设置页面--%>
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
<div class="xcset_tou">
    <a class="xcset_a1" id="xc_jg_sz" href="javascript:xinchou()">薪酬结构设置</a>
    <a class="xcset_a1 a3" id="kq_jx_fa" href="javascript:kaoqin()">考勤计薪方案</a>
    <a class="xcset_a2" id="js_fa" href="javascript:jishui()">计税方案</a>
    <a class="xcset_a2" id="j_bt_fa" href="javascript:jinbu()">津补贴方案</a>
    <a class="xcset_a2" id="qy_sz" href="javascript:qiye()">企业设置</a>
</div>

<%--企业设置--%>
<div class="xcset_zhuti qy_sz">
    <div class="xcset_shiyongzhinan">
        <h3>使用指南</h3>
        <h4>1、个性化设置修改后，将立即生效；</h4>
        <h4>2、工资卡开户行将用于生成银行发薪对接表，若有多个银行，系统会智能匹配；若没有您企业的工资卡开户行，请联系客服，提供模板；</h4>
        <h4>3、司龄，即员工从入职日期开始，在企业的工作时长。设置后，会影响所有依据司龄取值的判断，如补贴按司龄发放；</h4>
        <h4>4、如遇到操作相关的问题，您可以在这里核查操作记录。</h4>
        <h3 class="h3">每月约定发薪日及提醒</h3>
        <h5>设置每月发薪日及提醒，系统会提前给予计薪提醒</h5>
        <form action="" method="post">
            <select name="reqi" class="xuan_riqi">
                <option value="1" readonly="">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
            </select>
            <select name="tixing" class="xuan_riqi">
                <option value="1">提前3天提醒</option>
                <option value="2">提前5天提醒</option>
                <option value="3" readonly="">提前7天提醒</option>
            </select>
            <h3 class="h3">工资卡开户行</h3>
            <h5>选择您企业的工资卡开户行，计薪后，将为您生成符合要求的银行对接表。没有怎么办？</h5>
            <select name="tixing" class="xuan_riqi">
                <option value="1" readonly="">中国工商银行</option>
                <option value="2">中国建设银行</option>
                <option value="3">中国农业银行</option>
                <option value="4">中国银行</option>
                <option value="5">招商银行</option>
                <option value="6">民生银行</option>
                <option value="7">平安银行</option>
                <option value="8">中国交通银行</option>
                <option value="9">上海浦发银行</option>
                <option value="10">邮政储蓄银行</option>
                <option value="11">中信银行</option>
                <option value="12">光大银行</option>
                <option value="13">华夏银行</option>
                <option value="14">兴业银行</option>
                <option value="15">南京银行</option>
                <option value="16">江苏银行</option>
                <option value="17">杭州银行</option>
                <option value="18">农村商业银行</option>
                <option value="19">广发银行</option>
                <option value="20">西安长安银行</option>
            </select>
            <h3 class="h3">津补贴方案</h3>
            <h5>启用后，月工资表中的在线编辑津补贴将被禁用，按您设置的津补贴方案计算。</h5>
            <a href="" class="jbfax" id="jbfax"><p>开启</p><span></span></a>
            <a href="" class="jbfay" id="jbfay"><span></span><p>关闭</p></a>
            <h3 class="h3">司龄补贴享受规则设置</h3>
            <h5>选择员工能够享受补贴的司龄计算规则，所有与司龄相关的薪酬计算均按此规则计算。</h5>
            <label><input class="dianxuan" type="radio" name="sibu" checked> <span>员工司龄当月1号满周年，当月享受补贴；否则次月享受补贴</span></label>
            <label><input class="dianxuan" type="radio" name="sibu"> <span>员工司龄当月内满周年，当月享受补贴</span></label>
            <a href="" class="xcset_tijiao">保存</a>
        </form>
    </div>
</div>
<%--津补贴方案--%>
<div class="xcset_zhuti j_bt_fa">
    <div class="xcset_shiyongzhinan">
        <h3>使用指南</h3>
        <h4>1、支持为不同的人员或不同的部门设置不同的方案。</h4>
        <h4>2、设置后，若无调整，不需要每月设置，系统会自动延用。</h4>
        <h4>3、如遇到操作相关的问题，您可以在这里核查操作记录。</h4>
    </div>
    <div class="xcset_xinfangan">
        <a class="jin_bu_fa" href="">新增津补贴方案</a>
    </div>
    <div class="xz_biao">
        <table class="layui-table" lay-skin="line">
            <colgroup>
                <col width="200">
                <col width="200">
                <col width="200">
                <col width="200">
                <%--<col>--%>
            </colgroup>
            <thead>
            <tr>
                <th>方案名称</th>
                <th>补贴</th>
                <th>实用范围</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>默认</td>
                <td>是</td>
                <td>0</td>
                <td>
                    <a href="">修改</a>
                    <a href="">设为默认</a>
                    <a href="">删除</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>


</div>
<%--计税方案--%>
<div class="xcset_zhuti js_fa">
    <div class="xcset_shiyongzhinan">
        <h3>使用指南</h3>
        <h4>1、支持为不同的人员设置不同的方案，如一部分计税，一部分不计税。</h4>
        <h4>2、设置后，若无调整，不需要每月设置，系统会自动延用。</h4>
        <h4>3、如遇到操作相关的问题，您可以在这里核查操作记录。</h4>
    </div>
    <div class="xz_biao js_fa_biao">
        <table class="layui-table" lay-skin="line">
            <colgroup>
                <col width="200">
                <col width="200">
                <col width="200">
                <col width="200">
                <col width="200">
                <%--<col>--%>
            </colgroup>
            <thead>
            <tr>
                <th>方案名称</th>
                <th>是否计税</th>
                <th>个税结果保留位数</th>
                <th>实用范围</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>默认 <span class="s1">默认</span></td>
                <td>是</td>
                <td>个税结果保留2位小数</td>
                <td>0</td>
                <td>
                    <a href="">修改</a>
                    <a href="">设为默认</a>
                </td>
            </tr>
            <tr>
                <td>计税1</td>
                <td>是</td>
                <td>个税结果保留2位小数</td>
                <td>0</td>
                <td>
                    <a href="">修改</a>
                    <a href="">设为默认</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>


</div>
<%--考勤计薪方案--%>
<div class="xcset_zhuti kq_jx_fa">
    <div class="xcset_shiyongzhinan">
        <h3>使用指南</h3>
        <h4>1、考勤规则用于管理企业的迟到、早退、旷工、请假、加班的扣款规则。可设置的规则，与考勤中的考勤项一致。</h4>
        <h4>2、您可以根据企业的情况进行方案自定义。</h4>
        <h4>3、如遇到操作相关的问题，您可以在这里核查操作记录。</h4>
    </div>
    <div class="xcset_xinfangan">
        <a class="xin_jix_fa" href="">新增计薪方案</a>
    </div>
    <div class="xz_biao">
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
            <tbody>
            <tr>
                <td>贤心</td>
                <td>汉族</td>
                <td>1989-10-14</td>
                <td>人生似修行</td>
            </tr>
            </tbody>
        </table>
    </div>


</div>
<%--薪酬结构设置--%>
<div class="xcset_zhuti xc_jg_sz">
    <div class="xcset_shiyongzhinan">
        <h3>使用指南</h3>
        <h4>1、按企业的工资表结构进行设置，红色代表工资计算里的加项，绿色代表减项。</h4>
        <h4>2、系统项，是工资计算的必须项目，不支持删除。考勤加班相关的项，支持设置是否可见。</h4>
        <h4>3、如遇到操作相关的问题，您可以在这里核查操作记录。</h4>
        <h3 class="h3">薪酬项设置</h3>
        <h5>根据您企业的工资表中的薪酬项进行选择，也可以自定义添加，重命名、添加备注等</h5>
    </div>
    <div class="xcset_xuanxiang">
        <div class="xcset_guding xcset_1">
            <h3>固定工资</h3>
            <p>若薪酬项区分转正前后，或属于调薪项的，请设置在该类别下，生成的工资表将据此自动包含转正前、后两部分</p>
        </div>
        <div class="xcset_guding">
            <h4>基本工资 <span>固定项</span></h4>
            <p>劳动合同中约定的员工转正后的标准工资。</p>
        </div>
        <div class="xcset_guding">
            <h4>岗位工资</h4>
            <p>根据岗位、责任、技能要求等，不同岗位，工资不同。</p>
            <a class="xcset_delete" href="">删除</a>
        </div>
        <div class="xcset_guding">
            <h4>职务工资</h4>
            <p>根据职务高低、业务技术水平等因素的不同，工资不同，随职务变动而变动。</p>
            <a class="xcset_delete" href="">删除</a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <a class="xcset_save" href="">+ 添加薪酬项</a>
        </div>
    </div>
    <div class="xcset_xuanxiang">
        <div class="xcset_guding xcset_1">
            <h3>浮动工资</h3>
            <p>浮动工资需要在每月算薪前手工录入</p>
            <a href="" class="xcset_kaiguan" id="kaiqi"><p>开启</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="guanbi"><span></span><p>关闭</p></a>
        </div>
        <div class="xcset_guding">
            <h4>绩效工资</h4>
            <p>以员工的实际劳动成果或表现为考核标准，支付一定的奖励工资。</p>
            <a class="xcset_delete" href="">删除</a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <a class="xcset_save" href="">+ 添加薪酬项</a>
        </div>
    </div>
    <div class="xcset_xuanxiang">
        <div class="xcset_guding xcset_1">
            <h3>津补贴</h3>
            <p>企业给员工提供的福利，支持在【津补贴方案设置】中设置补贴方案</p>
            <a href="" class="xcset_kaiguan" id="kaiqi1"><p>开启</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="guanbi1"><span></span><p>关闭</p></a>
        </div>
        <div class="xcset_guding">
            <h4>交通补贴</h4>
            <p>企业按月按标准支付的交通补贴。</p>
            <a class="xcset_delete" href="">删除</a>
        </div>
        <div class="xcset_guding">
            <h4>餐补</h4>
            <p>企业不统一供餐，而是按月按标准支付的午饭或晚餐补贴。</p>
            <a class="xcset_delete" href="">删除</a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <a class="xcset_save" href="">+ 添加薪酬项</a>
        </div>
    </div>
    <div class="xcset_xuanxiang">
        <div class="xcset_guding xcset_1">
            <h3>加班工资</h3>
            <p>公司按员工加班时长计算的加班报酬</p>
        </div>
        <div class="xcset_guding xcset_noxian">
            <h4>加班 <span>固定项</span></h4>
            <p>按一定的比例，按加班时长计算加班工资。</p>
            <a href="" class="xcset_kaiguan" id="xianshi"><p>显示</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="yincang"><span></span><p>隐藏</p></a>
        </div>
    </div>
    <div class="xcset_xuanxiang">
        <div class="xcset_guding xcset_1">
            <h3>考勤扣款明细</h3>
            <p>根据员工的出勤考勤记录，按一定的规则，计入员工的工资计算中</p>
        </div>
        <div class="xcset_guding xcset_noxian">
            <h4>不在职免发 <span>固定项</span></h4>
            <p>新入职、离职员工，不在职的工作日，需从工资里扣除这些工作日的工资</p>
            <a href="" class="xcset_kaiguan" id="buzaix"><p>显示</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="buzaiy"><span></span><p>隐藏</p></a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <h4>迟到扣款 <span>固定项</span></h4>
            <p>员工无故迟到，需扣除一定的工资作为惩戒</p>
            <a href="" class="xcset_kaiguan" id="chidaox"><p>显示</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="chidaoy"><span></span><p>隐藏</p></a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <h4>早退扣款 <span>固定项</span></h4>
            <p>员工无故早退，需扣除一定的工资作为惩戒</p>
            <a href="" class="xcset_kaiguan" id="zaotuix"><p>显示</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="zaotuiy"><span></span><p>隐藏</p></a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <h4>旷工扣款 <span>固定项</span></h4>
            <p>员工无故旷工，需扣除一定的工资作为惩戒</p>
            <a href="" class="xcset_kaiguan" id="kgongx"><p>显示</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="kgongy"><span></span><p>隐藏</p></a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <h4>假期扣款 <span>固定项</span></h4>
            <p>员工因请事假、病假等，工作日未能到岗，需扣除一定的工资</p>
            <a href="" class="xcset_kaiguan" id="jiaqix"><p>显示</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="jiaqiy"><span></span><p>隐藏</p></a>
        </div>
    </div>
    <div class="xcset_xuanxiang">
        <div class="xcset_guding xcset_1">
            <h3>代扣代缴</h3>
            <p>公司代替个人缴纳的费用，如个人社保、个人公积金，个税在【计税规则】中设置）</p>
        </div>
        <div class="xcset_guding xcset_noxian">
            <h4>个人社保</h4>
            <p>社保中个人缴纳的部分</p>
            <a class="xcset_delete" href="">删除</a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <a class="xcset_save" href="">+ 添加薪酬项</a>
        </div>
    </div>
    <div class="xcset_xuanxiang">
        <div class="xcset_guding xcset_1">
            <h3>税前补扣</h3>
            <p>税前从该月的工资中补扣的金额，会影响本月的应税工资总额</p>
            <a href="" class="xcset_kaiguan" id="shuiqian1"><p>开启</p><span></span></a>
            <a href="" class="xcset_kaiguan" id="shuiqian2"><span></span><p>关闭</p></a>
        </div>
        <div class="xcset_guding xcset_noxian">
            <h4>其他扣款</h4>
            <p>如上月未扣，这月补扣的扣款；</p>
            <a class="xcset_delete" href="">删除</a>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/comon/footer.jsp"%>