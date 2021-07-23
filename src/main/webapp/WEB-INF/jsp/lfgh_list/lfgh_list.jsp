<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        转正申请
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
              <a><cite>人事档案</cite></a>
              <a><cite>转正申请</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="" style="width:800px">
        <div class="layui-form-pane" style="margin-top: 15px;">
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <input type="text" name="name"  placeholder="申请人" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>
    <xblock>
        <%--<button class="layui-btn layui-btn-danger" onclick="delAll()">
            <i class="layui-icon">&#xe640;</i>批量删除
        </button>--%>
        <from class="layui-form x-center">
            <input type="hidden" name="pid" value="${sessionScope.user_Session.id}"/>
            <%--<button class="layui-btn">
                <i class="layui-icon">&#xe608;</i>
                <a title="添加" href="javascript:;" onclick="ApplyInfo_add()" style="text-decoration:none">添加
                </a>&lt;%&ndash;这是from表单的监听提交，我好像没写From&ndash;%&gt;
            </button>--%>
            <button class="layui-btn" onclick="home_add(${sessionScope.user_Session.id})">
                <i class="layui-icon">&#xe608;</i>添加
            </button>
        </from>
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
               申请人
            </th>
            <th>
                状态
            </th>
            <th>
                操作
            </th>
        </tr>
        </thead>

        <c:forEach items="${list}" var="ApplyInfo" varStatus="status">
            <tr>
                <th>
                    <input type="checkbox" name="" value="">
                </th>
                <td>${status.index+1}</td>
                <td>${ApplyInfo.name}</td>
                <td>
                    <c:if test="${ApplyInfo.state == 0}">
                    申请中
                    </c:if>
                    <c:if test="${ApplyInfo.state == 1}">
                        转正成功
                    </c:if>
                    <c:if test="${ApplyInfo.state == 2}">
                        转正失败
                    </c:if>
                </td>
                <td>
                    <%--<a title="编辑" href="javascript:;" onclick="repair_edit('编辑','repairadd.html','2','1000','600')"
                       class="ml-5" style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
                    </a>--%>

                        <c:if test="${sessionScope.user_Session.role != 1}">
                            <c:if test="${ApplyInfo.state == 2}">
                                <a title="重新申请" href="javascript:;" onclick="personnel_modify(${sessionScope.user_Session.id})"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon">&#xe642;</i>
                                </a>
                            </c:if>
                        </c:if>
                        <c:if test="${sessionScope.user_Session.role == 1}">
                            <c:if test="${ApplyInfo.state == 0}">
                                <a title="成功" href="javascript:;" onclick="personnel_edit1('编辑','/lfgh/updateApplyInfo',${ApplyInfo.id},1,'1000','600')"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon">&#xe6c6;</i>
                                </a>
                                <a title="失败" href="javascript:;" onclick="personnel_edit1('编辑','/lfgh/updateApplyInfo',${ApplyInfo.id},2,'1000','600')"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon">&#xe6c5;</i>
                                </a>
                            </c:if>
                        </c:if>

                    <a title="删除" href="javascript:;" onclick="applyInfo_del(${ApplyInfo.id})"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>
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
        //以上模块根据需要引入


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

        /*document.getElementById('LAY_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        }
        document.getElementById('LAY_demorange_e').onclick = function(){
            end.elem = this
            laydate(end);
        }*/
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
    function home_add(pid) {
        $.ajax({
            type: "post",
            url: "/lfgh/addApplyInfo",
            data: {pid: pid},
            dataType: "json",
            success: function (data) {
                if (data) {
                    layer.msg("添加成功", {icon: 6, time: 2000}, function () {
                        window.location.reload();
                    });
                    return false;

                }
                else {
                    layer.msg("添加失败", {icon: 5, time: 2000});
                    return false;
                }
            }
        });
        }

       /* /!*重新申请*!/
        function personnel_modify(pid) {
            $.ajax({
                type: "post",
                url: "/lfgh/updateApplyInfo",
                data: {pid: pid},
                dataType: "json",
                success: function (data) {
                    if (data) {
                        layer.msg("重新申请成功", {icon: 6, time: 2000}, function () {
                            window.location.reload();
                        });
                        return false;

                    }
                    else {
                        layer.msg("重新申请失败", {icon: 5, time: 2000});
                        return false;
                    }
                }

            });
        }*/

        //编辑
        function personnel_edit1(title, url, id, state, w, h) {
            url = url + "?id=" + id + "&state=" + state;
            $.ajax({
                type: "post",
                url: url,
                dataType: "json",
                success: function (data) {
                    //console.log(data);
                    if (data) {
                        //发异步删除数据
                        layer.msg("操作成功", {icon: 6, time: 1000}, function () {
                            window.location.reload();
                        });
                        return false;
                    } else {
                        layer.msg("操作失败!", {icon: 5, time: 1000}, function () {
                            window.location.reload();
                        });
                        return false;
                    }
                }
            });
        }

        /*删除*/
        function applyInfo_del(id) {
            layer.confirm('确认要删除吗？', {icon: 3, title: '提示信息'}, function (index) {
                $.ajax({
                    type: "post",
                    url: "/lfgh/delApplyInfo",
                    data: {id: id},
                    dataType: "json",
                    success: function (data) {
                        console.log(data);
                        if (data) {
                            //发异步删除数据
                            layer.msg("已删除!", {icon: 6, time: 1000}, function () {
                                window.location.reload();
                            });
                            return false;
                        } else {
                            layer.msg("删除失败!", {icon: 5, time: 1000});
                            return false;
                        }
                    }
                });
                //发异步删除数据
                $(obj).parents("tr").remove();
                layer.msg('已删除!', {icon: 1, time: 1000});
            });

    }
</script>

</body>
</html>