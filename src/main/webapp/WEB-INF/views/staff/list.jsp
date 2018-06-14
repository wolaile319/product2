<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/comon/header.jsp"%>
<link rel="stylesheet" href="/css/staff-list.css">

    <div class="body-detail">
        <div class="div1">
            <span>
                <span class="glyphicon glyphicon-hand-right" style="margin-right: 10px;color: #999999"></span>选择部门<i></i>
                <ul>
                    <li><a href="">人事部</a></li>
                    <li><a href="">财务部</a></li>
                    <li><a href="">技术部</a></li>
                    <li><a href="">市场部</a></li>
                </ul>
            </span>
            <a href="#">添加员工</a>
            <a href="javascript:importStaffs()">导入花名册</a>
            <a href="#">高级搜索</a>
            <a href="#">批量删除员工</a>
        </div>
        <div class="div5">
            <ul>
                <li><a href="#" style="color: #e56281">在职<strong style="font-size: 30px;margin: 0 10px">5</strong>人</a></li>
                <li><a href="#">正式<span>3人</span></a></li>
                <li><a href="#">试用期<span>1人</span></a></li>
                <li><a href="#">待离职<span>1人</span></a></li>
                <i style="border-color: transparent  transparent transparent #e56281"></i>
            </ul>
            <ul>
                <li><a href="#">全职<span>4人</span></a></li>
                <li><a href="#">实习<span>1人</span></a></li>
                <li><a href="#">兼职<span>0人</span></a></li>
                <i></i>
            </ul>
            <ul>
                <li><a href="#">已离职<span>0</span>人</a></li>
                <i></i>
            </ul>
        </div>
        <p></p>
        <div class="div2">
            <ul>
                <li>选择表头</li>
                <li class="div2li1">
                    <p>按部门排序</p>
                    <span></span>
                    <ul class="ul-hidden">
                        <li>按部门排序</li>
                        <li>按最早入职排序</li>
                        <li>按最近入职排序</li>
                        <li>工号升序</li>
                        <li>工号降序</li>
                    </ul>
                </li>
                <li>批量编辑</li>
                <li>导出</li>
            </ul>
        </div>
       <%-- <div class="no-data">
            <img src="img/hr-example3.png">
            <p>无在职人员</p>
        </div>--%>
        <div class="div3">
            <table class="layui-table" lay-data="{width: 100%, height:332, url:'/demo/table/user/', page:true, id:'idTest'}" lay-filter="demo">
                <thead>
                <tr style="background-color: #9acfea">
                    <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
                    <th lay-data="{field:'id', width:80, fixed: true}">姓名</th>
                    <th lay-data="{field:'id', width:80, sort: true, fixed: true}">工号</th>
                    <th lay-data="{field:'username', width:80}">部门</th>
                    <th lay-data="{field:'username', width:80}">职位</th>
                    <th lay-data="{field:'sex', width:40, sort: true}">性别</th>
                    <th lay-data="{field:'s', width:160, sort: true}">入职时间</th>
                    <th lay-data="{field:'city', width:80}">手机号</th>
                    <th lay-data="{field:'sign', width:160}">证件类型</th>
                    <th lay-data="{field:'classify', width:80}">证件号</th>
                    <th lay-data="{field:'score', width:80, sort: true}">状态</th>
                    <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}">操作</th>
                </tr>
                </thead>
            </table>
            <script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
                <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
            </script>
        </div>
    </div>
</div><!-- layui-body -->


<!--- ----------------模态框--导入花名册界面----------------------->
<div class="modal fade" tabindex="-1" role="dialog" id="importStaffs">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" style="font-size: 13px;font-weight: bold">导入员工花名册</h4>
            </div>
            <div class="modal-body" >
                <h5 style="color: #e56281">温馨提示<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span></h5>
                <p style="font-size: 12px;color: #999999">请查看下面表格，可支持在职/离职员工；存在表格列举问题的花名册将无法导入。</p>
                <img src="/img/hr-example1.png">
            </div>
            <div class="modal-footer">
                <p>如遇到问题，请使用标准模板<a href="#">下载标准模板</a></p>
                <form>
                    <input type="file" name="file" id="excelFile"/>
                    <p>导入花名册</p>
                </form>
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
    function importStaffs() {
        $('#importStaffs').modal('show');
    }
</script>
<script>
    $(function () {
        $("#excelFile").change(function () {
           console.log("change事件触发");
            layer.msg('是否立即导入？', {
                time: 0 //不自动关闭
                ,btn: ['YES', 'NO']
                ,yes: function(index){
                    layer.close(index);
                    $('#importStaffs').modal('hide');
                }
            });
        });
    });
</script>
<%@include file="/WEB-INF/views/comon/footer.jsp"%>
