<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/comon/header.jsp"%>
<link rel="stylesheet" href="/css/staff-add.css">

    <div class="body-detail">
        <div class="div1">
            <a href="#">返回</a>
            <p>添加员工</p>
        </div>
        <div class="div2">
            <div class="div2left">
                <ul>
                    <li><a href="#base-info" style="background-color: #e56281;color: white">基本信息</a></li>
                    <li><a href="#personal-info">个人信息</a></li>
                    <li><a href="#contract-info">合同信息</a></li>
                    <li><a href="#salary-info">薪资信息</a></li>
                    <li><a href="#accumulation-fund">社保公积金</a></li>
                    <li><a href="#edu-info">教育信息</a></li>
                    <li><a href="#job-history">工作经历</a></li>
                </ul>
            </div>
            <div class="div2right">
                <form action="#">
                    <div class="base-info" id="base-info">
                        <p>基本信息</p>
                        <label><span>*</span>显示名：<input type="text" name="name" id="name"/></label>
                        <div class="div-photo">
                            <img src="/img/man-head.jpg">
                            <p>上传<input type="file" name="photo" id="photo"/></p>
                        </div>
                        <label>姓：<input type="text" name="surname" id="surname"/></label>
                        <label>名：<input type="text" firstName="name" id="firstName"/></label>
                        <label><span>*</span>证件类型：
                            <select name="idType" id="idType">
                                <option value="身份证">身份证</option>
                            </select>
                        </label>
                        <label><span>*</span>证件号：<input type="text" name="idNumber" id="idNumber"/></label>
                        <label><span>*</span>手机号码：<input type="text" name="phone" id="phone"/></label>
                        <label><span>*</span>部门：
                            <select name="department" id="department">
                                <option value="人事部">人事部</option>
                            </select>
                        </label>
                        <label><span>*</span>职位：
                            <select name="job" id="job">
                                <option value="人事经理">人事经理</option>
                            </select>
                        </label>
                        <label>职务：
                            <select name="duties" id="duties">
                                <option value="人事经理">人事经理</option>
                            </select>
                        </label>
                        <label><span>*</span>性别：
                            <label><input type="radio" name="sex" value="男" class="input-radio"/>男</label>
                            <label><input type="radio" name="sex" value="女" class="input-radio"/>女</label>
                        </label>
                        <label>职级：
                            <select name="rank" id="rank">
                                <option value="人事经理">人事经理</option>
                            </select>
                        </label>
                        <label><span>*</span>最高学历：
                            <select name="qualification" id="qualification">
                                <option value="本科">本科</option>
                            </select>
                        </label>
                        <label><span>*</span>员工状态：
                            <label><input type="radio" name="status" value="离职" class="input-radio"/>离职</label>
                            <label><input type="radio" name="status" value="正式在职" class="input-radio"/>正式在职</label>
                            <label><input type="radio" name="status" value="试用在职" class="input-radio"/>试用在职</label>
                        </label>
                        <label><span>*</span>员工类型：
                            <select name="type" id="type">
                                <option value="全职">全职</option>
                            </select>
                        </label>
                        <label><span>*</span>入职日期：<input type="text" name="entry_date" id="entry_date"/></label>
                        <label>出生日期：<input type="text" name="birthday" id="birthday"/></label>
                        <label><span>*</span>联系地址：<input type="text" name="address" id="address"/></label>
                        <label>离职日期：<input type="text" name="leave_date" id="leave_date"/></label>
                        <h1></h1>
                    </div>
                    <!-- 个人信息 -->
                    <div class="base-info" id="personal-info">
                        <p>个人信息</p>
                        <label>民族：<input type="text" name="national" id="national"/></label>
                        <label>户口类型：
                            <select name="hukou_type" id="hukou_type">
                                <option value="城镇">城镇</option>
                            </select>
                        </label>
                        <label>户口所在地：<input type="text" name="hukou_address" id="hukou_address"/></label>
                        <label>籍贯：<input type="text" name="native_place" id="native_place"/></label>
                        <label>居住地址：<input type="text" name="living_address" id="living_address"/></label>
                        <label>政治面貌：
                            <select name="political_status" id="political_status">
                                <option value="党员">党员</option>
                            </select>
                        </label>
                        <label>婚姻状况：
                            <select name="marital_status" id="marital_status">
                                <option value="已婚">已婚</option>
                            </select>
                        </label>
                        <label>血型：
                            <select name="blood_type" id="blood_type">
                                <option value="A">A</option>
                            </select>
                        </label>
                        <label>紧急联系人姓名：<input type="text" name="emergency_contact" id="emergency_contact"/></label>
                        <label>紧急联系人电话：<input type="text" name="emergency_contact_phone" id="emergency_contact_phone"/></label>
                        <label>个人邮箱：<input type="text" name="email" id="email"/></label>
                        <label>QQ账号：<input type="text" name="qq" id="qq"/></label>
                        <label>微信：<input type="text" name="wechat" id="wechat"/></label>
                        <label>备注：<textarea name="remark" id="remark"></textarea></label>
                        <h1 style="height: 30px"></h1>
                    </div>

                    <div class="base-info" id="contract-info">
                        <p>合同信息</p>
                        <label><span>*</span>合同类型：
                            <select name="contract_type" id="contract_type">
                                <option value="劳务合同">劳务合同</option>
                            </select>
                        </label>
                        <label><span>*</span>起始日期：<input type="text" name="start_date" id="start_date"/></label>
                        <label><span>*</span>终止日期：<input type="text" name="end_date" id="end_date"/></label>
                        <label><span>*</span>试用期：<input name="probation_month" id="probation_month"/>月</label>
                        <label><span>*</span>试用期到期日：<input name="probation_end_date" id="probation_end_date"/></label>
                        <h1></h1>
                    </div>
                    <div class="base-info" id="salary-info">
                        <p>薪资信息</p>
                        <label><span>*</span>转正薪资：￥<input type="text" name="start_salary" id="start_salary"/></label>
                        <label><span>*</span>试用薪资：￥<input type="text" name="probation_salary" id="probation_salary"/></label>
                        <label><span>*</span>当前薪资：￥<input name="current_salary" id="current_salary"/></label>
                        <label>最近一次调薪日期：<input name="last_change_salary_time" id="last_change_salary_time"/></label>
                        <label>最近一次调薪金额：￥<input name="last_change_salary_money" id="last_change_salary_money"/></label>
                        <label><span>*</span>工资卡开户行：<input type="text" name="bank_name" id="bank_name"/></label>
                        <label><span>*</span>工资卡号：<input name="bank_card_no" id="bank_card_no"/></label>
                        <h1></h1>
                    </div>
                    <div class="base-info" id="accumulation-fund">
                        <p>社保公积金</p>
                        <label>公积金账号：<input type="text" name="accumulation_fund_account" id="accumulation_fund_account"/></label>
                        <label>公积金缴纳地：
                            <select name="accumulation_fund_province" id="accumulation_fund_province">
                                <option value="四川">四川</option>
                            </select>省
                        </label>
                        <label>公积金缴纳地：
                            <select name="accumulation_fund_city" id="accumulation_fund_city">
                                <option value="成都">成都</option>
                            </select>市
                        </label>
                        <label>起始月：<input name="accumulation_fund_start_time" id="accumulation_fund_start_time"/></label>
                       <!---社保--->
                        <label>社保账号：<input type="text" name="social_security_account" id="social_security_account"/></label>
                        <label>社保缴纳地：
                            <select name="social_security_province" id="social_security_province">
                                <option value="四川">四川</option>
                            </select>省
                        </label>
                        <label>社保缴纳地：
                            <select name="social_security_city" id="social_security_city">
                                <option value="成都">成都</option>
                            </select>市
                        </label>
                        <label>起始月：<input name="social_security_start_time" id="social_security_start_time"/></label>
                        <h1></h1>
                    </div>
                    <div class="base-info" id="edu-info">
                        <p>教育信息</p>
                        <label>学校：<input type="text" name="school" id="school"/></label>
                        <label>专业：<input type="text" name="major" id="major"/></label>
                        <label>入校时间：<input type="text" name="entrance_time" id="entrance_time"/></label>
                        <label>毕业时间：<input type="text" name="graduation_time" id="graduation_time"/></label>
                        <label>学历：<input type="text" name="edu_qualification" id="edu_qualification"/></label>
                        <label>是否取得学位：
                            <label><input type="radio" name="degree_status" value="是" class="input-radio"/>是</label>
                            <label><input type="radio" name="degree_status" value="否" class="input-radio"/>否</label>
                        </label>
                        <div class="div-photo">
                            <img src="/img/education.jpg" style="height: 180px">
                            <p>上传<input type="file" name="diploma_photo1" id="diploma_photo1"/></p>
                        </div>
                        <div class="div-photo">
                            <img src="/img/education.jpg" style="height: 180px">
                            <p>上传<input type="file" name="diploma_photo2" id="diploma_photo2"/></p>
                        </div>
                        <div class="div-photo">
                            <img src="/img/education.jpg" style="height: 180px">
                            <p>上传<input type="file" name="degree_photo" id="degree_photo"/></p>
                        </div>
                        <h1></h1>
                    </div>
                    <div class="base-info" id="job-history">
                        <p>工作经历</p>
                        <label>公司名称：<input type="text" name="company_name" id="company_name"/></label>
                        <label>职位：<input type="text" name="history_job" id="history_job"/></label>
                        <label>入职时间：<input type="text" name="history_entry_date" id="history_entry_date"/></label>
                        <label>离职时间：<input type="text" name="history_leave_date" id="history_leave_date"/></label>
                        <label>工作描述：<textarea name="Job_description" id="Job_description"></textarea></label>
                        <h1></h1>
                    </div>
                </form>
                <div style="height: 100px"></div>
            </div>
            <%--底部区域--%>
            <div class="hr-footer">
                <a href="#"><span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> 保存</a>
            </div>
        </div>
    </div>




</div>
</body>
</html>
