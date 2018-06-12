<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!--转正管理-->
<%@include file="/views/comon/header.jsp"%>
<link rel="stylesheet" href="css/staff-zzgl.css">
    <div class="body-detail">
        <div class="div1">
            <p>待转正 0 人</p>
            <a href="#">转正</a>
            <a href="#">延长试用期</a>
        </div>
        <div class="no-data">
            <img src="img/hr-example3.png">
            <p>无试用期人员</p>
        </div>
       <%-- <div class="datas">
            <table class="layui-table" lay-data="{width: 100%, height:332, url:'/demo/table/user/', page:true, id:'idTest'}" lay-filter="demo">
                <thead>
                <tr style="background-color: #9acfea">
                    <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
                    <th lay-data="{field:'id', width:80, fixed: true}">姓名</th>
                    <th lay-data="{field:'id', width:80, sort: true, fixed: true}">工号</th>
                    <th lay-data="{field:'username', width:80}">部门</th>
                    <th lay-data="{field:'username11', width:80}">职位</th>
                    <th lay-data="{field:'sex', width:40, sort: true}">性别</th>
                    <th lay-data="{field:'s', width:160, sort: true}">入职时间</th>
                    <th lay-data="{field:'sign', width:160}">试用期</th>
                    <th lay-data="{field:'classify', sort: true, width:80}">试用期到期日</th>
                    <th lay-data="{field:'score', width:80, sort: true}">状态</th>
                    <th lay-data="{field:'city', width:80}">手机号</th>
                    <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}">操作</th>
                </tr>
                </thead>
            </table>
        </div>--%>
    </div>
</div><!-- layui-body -->
<!-----layui表格显示-------->
<script>
    layui.use('table', function(){
        var table = layui.table;
    });
</script>

<%@include file="/views/comon/footer.jsp"%>
