<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        请假管理
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../statics/css/main.css" media="all">
    <link rel="stylesheet" href="../../statics/css/bootstrap.css">
    <script type="text/javascript" src="../../statics/lib/loading/okLoading.js"></script>
</head>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>工作流程</cite></a>
              <a><cite>请假</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
   <!-- <form class="layui-form x-center" action="" style="width:800px">
        <div class="layui-form-pane" style="margin-top: 15px;">
            <div class="layui-form-item">
                <label class="layui-form-label">日期范围</label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="开始日" id="LAY_demorange_s">
                </div>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="截止日" id="LAY_demorange_e">
                </div>
                <div class="layui-input-inline">
                    <input type="text" name="username"  placeholder="标题" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>-->
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()">
            <i class="layui-icon">&#xe640;</i>批量删除
        </button>
        <button class="layui-btn" onclick="park_add('请假','/page/leave_add','1000','600')">
            <i class="layui-icon">&#xe608;</i>添加
        </button>
        <%--<span class="x-right" style="line-height:40px">共有数据：<span class="layui-badge">4</span> 条</span></xblock>--%>
    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <input type="checkbox" name="" value="">
            </th>
            <th>
                ID
            </th>
            <th>
                理由
            </th>
            <th>
                开始时间
            </th>
            <th>
                结束时间
            </th>
            <th>
                时长
            </th>
            <th>
                审核状态
            </th>
            <th>
                申请人
            </th>
            <th>
                审核人
            </th>
            <th>
                操作
            </th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${list}" varStatus="str">
                <tr>
                    <td>
                        <input type="checkbox" value="1" name="">
                    </td>
                    <td>
                            ${str.index + 1}
                    </td>
                    <td>
                            ${list.matter}
                    </td>
                    <td>
                            <fmt:formatDate value="${list.start_time}" pattern="yyyy-MM-dd"/>
                    </td>
                    <td>
                        <fmt:formatDate value="${list.end_time}" pattern="yyyy-MM-dd"/>
                    </td>
                    <td>
                            ${list.duration}
                    </td>
                    <td>
                        <c:if test="${list.state == 0}">
                            审核中
                        </c:if>
                        <c:if test="${list.state == 1}">
                            审核通过
                        </c:if>
                        <c:if test="${list.state == 2}">
                            审核未通过
                        </c:if>
                    </td>
                    <td>
                            ${list.apply_pname}
                    </td>
                    <td>
                            ${list.examine_pname}
                    </td>
                    <!--<td class="td-status"> <span class="layui-btn layui-btn-normal " onclick="start(this,'5',0)"> 使用中 </span>
                    </td>-->
                    <td class="td-manage">
                        <c:if test="${sessionScope.user_Session.role == 1}">
                            <c:if test="${list.state == 0}">
                                <a title="通过" href="javascript:;" onclick="personnel_edit('编辑','/detailedprocess/upd',${list.id},1,'1000','600')"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon">&#xe6c6;</i>
                                </a>
                                <a title="未通过" href="javascript:;" onclick="personnel_edit('编辑','/detailedprocess/upd',${list.id},2,'1000','600')"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon">&#xe6c5;</i>
                                </a>
                            </c:if>
                        </c:if>
                        <c:if test="${sessionScope.user_Session.role != 1}">
                            <c:if test="${list.state == 2}">
                                <a title="重新申请" href="javascript:;" onclick="personnel_modify('重新申请','/page/personnel_modify',${list.id},'1000','600')"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon">&#xe642;</i>
                                </a>
                            </c:if>
                        </c:if>
                        <a title="删除" href="javascript:;" onclick="park_del(this,'5')"
                           style="text-decoration:none">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div id="page"></div>
</div>
<script src="../../statics/lib/layui/layui.js" charset="utf-8"></script>
<script src="../../statics/js/x-layui.js" charset="utf-8"></script>
<script>
    layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;//jquery
        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层
        okLoading.close($);


        var start = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };

        var end = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };

        document.getElementById('LAY_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        }
        document.getElementById('LAY_demorange_e').onclick = function(){
            end.elem = this
            laydate(end);
        }
    });

    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
        });
    }

    function question_show (argument) {
        layer.msg('可以跳到前台具体问题页面',{icon:1,time:1000});
    }
    /*添加*/
    function park_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    /*重新申请*/
    function personnel_modify(title,url,id,w,h){
        url = url+"?id="+id;
        x_admin_show(title,url,w,h);
    }
    //编辑
    function personnel_edit (title,url,id,state,w,h) {
        url = url+"?id="+id+"&state="+state+"&examine_pid="+${sessionScope.user_Session.id};
        $.ajax({
            type:"post",
            url:url,
            //data:{id:id},
            dataType:"json",
            success:function(data){
                //console.log(data);
                if(data){
                    //发异步删除数据
                    layer.msg("操作成功",{icon:6,time:1000},function(){
                        window.location.reload();
                    });return false;
                } else{
                    layer.msg("操作失败!",{icon:5,time:1000},function(){
                        window.location.reload();
                    });return false;
                }
            }
        });
    }

    /*删除*/
    function park_del(obj,id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"post",
                url:"xxx",
                data:{id:id},
                dataType:"json",
                success:function(data){
                    //console.log(data);
                    if(data.status==1){
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg(data.info,{icon:6,time:1000});
                        setTimeout(function(){
                            window.location.reload();
                        },1000);return false;
                    } else{
                        layer.msg(data.info,{icon:5,time:1000});return false;
                    }
                }
            });
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }

    function start(obj,id,e){
        layer.confirm(e==1?'确定要使用吗？':'确定要闲置吗？',{icon: 3, title:'提示'},function(index){
            $.ajax({
                type:"post",
                url:"xxx",
                data:{id:id,status:e},
                dataType:"json",
                success:function(data)
                {
                    if(data.status==1){
                        //发异步把用户状态进行更改
                        $(obj).attr("class","layui-btn layui-btn-danger ");
                        $(obj).text("隐藏");
                        $(obj).remove();
                        layer.msg(data.info,{icon: 6,time:1000});
                        setTimeout(function(){
                            window.location.reload();
                        },1000);return false;
                    }else{
                        //发异步把用户状态进行更改
                        $(obj).attr("class","layui-btn layui-btn-normal ");
                        $(obj).text("显示");
                        $(obj).remove();
                        layer.msg(data.info,{icon: 5,time:1000});return false;
                    }
                }
            });

        });
    }
</script>

</body>
</html>