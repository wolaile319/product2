<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!--离职管理-->
<%@include file="/WEB-INF/views/comon/header.jsp"%>
<link rel="stylesheet" href="/css/staff-lzgl.css">

<div class="body-detail">
    <div class="div1">
        <p style="color: #4f4f4f">待离职 <span style="color: #ff7c70;font-size: 22px">0</span> 人</p>
        <p style="color: #4f4f4f">已离职 <span style="color: #ff7c70;font-size: 22px">0</span> 人</p>
        <a href="javascript:handleLeave()">办理待离职</a>
        <a href="#">手动离职</a>
    </div>
    <%--<div class="no-data">
        <img src="/img/hr-example3.png">
        <p>无待离职及已离职人员</p>
    </div>--%>

    <div class="datas">
        <div class="dlz">
            <p>&nbsp;&nbsp;待离职</p>
            <a href="#">查看全部</a>
            <h1 style="clear: both"></h1>
            <table style="width: 400px" class="layui-table" lay-data="{width: 100%, height:332, url:'/demo/table/user/', page:true, id:'idTest'}" lay-filter="demo">
                <thead>
                <tr style="background-color: #9acfea">
                    <th lay-data="{field:'id', width:80, fixed: true}">姓名</th>
                    <th lay-data="{field:'id', width:80, sort: true, fixed: true}">工号</th>
                    <th lay-data="{field:'username', width:80}">部门</th>
                    <th lay-data="{field:'username11', width:80}">职位</th>
                    <th lay-data="{field:'sex', width:40, sort: true}">性别</th>
                    <th lay-data="{field:'classify', sort: true, width:80}">预计离职日期</th>
                    <th lay-data="{field:'city', width:80}">手机号</th>
                    <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}">操作</th>
                </tr>
                </thead>
            </table>
        </div>
        <div class="dlz">
            <p>&nbsp;&nbsp;已离职</p>
            <a href="#">查看全部</a>
            <h1 style="clear: both"></h1>
            <table style="width: 400px" class="layui-table" lay-data="{width: 100%, height:332, url:'/demo/table/user/', page:true, id:'idTest'}" lay-filter="demo">
                <thead>
                <tr style="background-color: #9acfea">
                    <th lay-data="{field:'id', width:80, fixed: true}">姓名</th>
                    <th lay-data="{field:'id', width:80, sort: true, fixed: true}">工号</th>
                    <th lay-data="{field:'username', width:80}">部门</th>
                    <th lay-data="{field:'username11', width:80}">职位</th>
                    <th lay-data="{field:'sex', width:40, sort: true}">性别</th>
                    <th lay-data="{field:'classify', sort: true, width:80}">离职日期</th>
                    <th lay-data="{field:'city', width:80}">手机号</th>
                    <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}">操作</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
    <div class="leave-dynamic">
        <p>&nbsp;&nbsp;离职动态</p>
        <ul>
            <li>Lily申请了离职<span>1天前</span></li>
        </ul>
    </div>


</div>
</div><!-- layui-body -->



<!--- ----------------模态框--办理离职----------------------->
<div class="modal fade" tabindex="-1" role="dialog" id="handleLeave">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" style="font-size: 13px;font-weight: bold">选择在职员工</h4>
            </div>
            <div class="modal-body" >
                <p><input type="text" name="searchName"/></p>
                <div class="name-list">
                    <label>
                        <input type="radio" name="name" value="1"/>
                        <span><i></i></span>
                        <p class="p1">姗姗</p>
                        <p class="p2">张姗姗</p>
                        <p class="p3">人事部</p>
                        <p class="p4">人事主管</p>
                        <p class="p5">实习</p>
                    </label>
                </div>
                <div class="name-list">
                    <label>
                        <input type="radio" name="name" value="1"/>
                        <span><i></i></span>
                        <p class="p1">欣雨</p>
                        <p class="p2">刘欣雨</p>
                        <p class="p3">人事部</p>
                        <p class="p4">人事经理</p>
                    </label>
                </div>
                <div class="name-list">
                    <label>
                        <input type="radio" name="name" value="1"/>
                        <span><i></i></span>
                        <p class="p1">麒麟</p>
                        <p class="p2">李麒麟</p>
                        <p class="p3">财务部</p>
                        <p class="p4">会计</p>
                    </label>
                </div>
                <p style="clear: both; height: 1px;margin: 0"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="savesubmit"
                        style="background-color: #e56281;border-color: #e56281">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-----layui表格显示-------->
<script>
    layui.use('table', function(){
        var table = layui.table;
    });
</script>
<script>
    //办理离职
    function handleLeave() {
        $('#handleLeave').modal('show');
    }
</script>

<%@include file="/WEB-INF/views/comon/footer.jsp"%>




