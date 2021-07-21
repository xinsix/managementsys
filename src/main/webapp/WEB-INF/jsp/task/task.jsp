<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        任务
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../statics/css/main.css" media="all">
    <script type="text/javascript" src="../../statics/lib/loading/okLoading.js"></script>
    <link rel="stylesheet" href="../../statics/css/bootstrap.css">
</head>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>办公</cite></a>
              <a><cite>任务管理</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="" style="width:80%">
        <div class="layui-form-pane" style="margin-top: 15px;">
            <div class="layui-form-item">
                <%--<label class="layui-form-label">日期范围</label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="开始日" id="LAY_demorange_s">
                </div>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="截止日" id="LAY_demorange_e">
                </div>--%>
                <div class="layui-input-inline">
                    <input type="text" name="matter"  placeholder="请输入任务事项" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button>
        <button class="layui-btn" onclick="admin_add('添加','/page/taskadd','1000','600')"><i class="layui-icon">&#xe608;</i>添加</button>
        <%--<span class="x-right" style="line-height:40px">共有数据：<span class="layui-badge">${count}</span> 条</span>--%>
    </xblock>
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
                任务事项
            </th>
            <th>
                开始时间
            </th>
            <th>
                结束时间
            </th>
            <th>
                创建时间
            </th>
            <th>
                修改时间
            </th>
            <th>
                执行人
            </th>

            <th>
                状态
            </th>
            <c:if test="${sessionScope.user_Session.role != 1}">
            <th>
                操作
            </th>
            </c:if>
            <c:if test="${sessionScope.user_Session.role == 1}">
                <th>
                    被执行人
                </th>
            </c:if>
        </tr>
        </thead>
        <tbody id="x-img">
        <c:forEach var="list" items="${list}" varStatus="str">
            <%--<tr>
                <td>
                    <input type="checkbox" value="1" name="">
                </td>

                </td>
                <td class="td-manage">
                    <a style="text-decoration:none" onclick="admin_stop(this,'10001')" href="javascript:;" title="停用">
                        <i class="layui-icon">&#xe601;</i>
                    </a>
                    <a title="编辑" href="javascript:;" onclick="community_edit('编辑','taskadd.html','2','1000','600')"
                       class="ml-5" style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="删除" href="javascript:;" onclick="admin_del(this,'1')"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>--%>
            <tr>
                <td>
                    <input type="checkbox" value="1" name="">
                </td>
                <td>${str.index + 1}</td>
                <td>${list.matter}</td>
                <td>
                        <fmt:formatDate value="${list.starttime}" pattern="yyyy-MM-dd"/>
                </td>
                <td>
                    <fmt:formatDate value="${list.endtime}" pattern="yyyy-MM-dd"/>
                </td>
                <td>
                        <fmt:formatDate value="${list.creationtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                </td>
                <td>
                    <fmt:formatDate value="${list.revisiontime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                </td>
                <td>${list.ename}</td>
                <td>
                    <c:if test="${list.state == 0}">
                        进行中
                    </c:if>
                    <c:if test="${list.state == 1}">
                        已完成
                    </c:if>
                </td>
                <td>

                    <c:if test="${sessionScope.user_Session.role != 1}">
                        <c:if test="${list.state == 0}">
                            <a title="已完成" href="javascript:;" onclick="personnel_edit('编辑','/task/upd',${list.id},1,'1000','600')"
                               class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe6c6;</i>
                            </a>
                        </c:if>
                    </c:if>
                        <c:if test="${sessionScope.user_Session.role == 1}">
                            ${list.pname}
                        </c:if>
                    <%--<a href="/selById?id=${list.id}">修改</a>
                    <a href="#" onclick="del(${list.id})">删除</a>--%>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%--<div id="page"><ul class="pagination"><li class="disabled"><span>&laquo;</span></li> <li class="active"><span>1</span></li><li><a href="/xiyuan/Community/lst?page=2">2</a></li> <li><a href="/xiyuan/Community/lst?page=2">&raquo;</a></li></ul></div>--%>
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
        //以上模块根据需要引入

        /*laypage({
          cont: 'page'
          ,pages: 100
          ,first: 1
          ,last: 100
          ,prev: '<em><</em>'
          ,next: '<em>></em>'
        }); */
        layer.ready(function(){ //为了layer.ext.js加载完毕再执行
            layer.photos({
                photos: '#x-img'
                //,shift: 5 //0-6的选择，指定弹出图片动画类型，默认随机
            });
        });
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
    /*添加*/
    function admin_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }

    //编辑
    function personnel_edit (title,url,id,state,w,h) {
        url = url+"?id="+id+"&state="+state;
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

    /*停用*/
    function admin_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            //发异步把用户状态进行更改
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="admin_start(this,id)" href="javascript:;" title="启用"><i class="layui-icon">&#xe62f;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-disabled layui-btn-mini">已停用</span>');
            $(obj).remove();
            layer.msg('已停用!',{icon: 5,time:1000});
        });
    }

    /*启用*/
    function admin_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            //发异步把用户状态进行更改
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="admin_stop(this,id)" href="javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!',{icon: 6,time:1000});
        });
    }
    //编辑
    function community_edit (title,url,id,w,h) {
        url = url+"?id="+id;
        x_admin_show(title,url,w,h);
    }
    /*删除*/
    function admin_del(obj,id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"post",
                url:"/xiyuan/banner/banner_del.html",
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
</script>

</body>
</html>