<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        人员管理
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
              <a><cite>组织管理</cite></a>
              <a><cite>人员管理</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="" style="width:800px">
        <div class="layui-form-pane" style="margin-top: 15px;">
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <input type="text" name="name"  placeholder="员工姓名" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>
    <%--<xblock>
       &lt;%&ndash; <button class="layui-btn layui-btn-danger" onclick="delAll()">
            <i class="layui-icon">&#xe640;</i>批量删除
<<<<<<< HEAD:src/main/webapp/WEB-INF/jsp/repairlist/repairlist.jsp
        </button>
       <!-- <button class="layui-btn" onclick="repair_add('添加','repairadd','1000','600')">
=======
        </button>&ndash;%&gt;
       <!-- <button class="layui-btn" onclick="repair_add('添加','repairadd.html','1000','600')">
>>>>>>> pr_1:src/main/webapp/WEB-INF/jsp/repairlist.jsp
            <i class="layui-icon">&#xe608;</i>添加
        </button>-->
    </xblock>--%>
        <span class="x-right" style="line-height:40px">共有数据：<span class="layui-badge">${count}</span> 条</span>

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
                姓名
            </th>
            <th>
                性别
            </th>
            <th>
                地址
            </th>
            <th>
                电话
            </th>
            <th>
                描述
            </th>
            <th>
                职务
            </th>
             <th>
                所属部门
            </th>
            <th>
                薪资
            </th>

            <th>
                操作
            </th>
        </tr>
        </thead>

        <c:forEach items="${list}" var="Penson" varStatus="status">
            <tr>
                <td>
                    <input type="checkbox" value="1" name="">
                </td>

                <td>${status.index+1}</td>
                <td>${Penson.name}</td>
                <td>
                    <c:if test="${Penson.sex == 0}">
                        女
                    </c:if>
                <c:if test="${Penson.sex == 1}">
                    男
                </c:if>

                </td>
                <td>${Penson.address}</td>
                <td>${Penson.phone}</td>
                <td>
                    <c:if test="${Penson.description == null or Penson.description.trim() == ''}">
                        这家伙很懒，没有留下任何描述！
                    </c:if>
                    <c:if test="${Penson.description != null}">
                        ${Penson.description}
                    </c:if>

                </td>
                <td>${Penson.role_name}</td>
                <td>
                    <c:if test="${Penson.department_name != null}">
                        ${Penson.department_name}
                    </c:if>
                    <c:if test="${Penson.department_name == null}">
                        我不配拥有职务
                    </c:if>
                </td>
                <td>${Penson.wages}</td>
                <td class="td-manage">
                    <a title="编辑" href="javascript:;" onclick="repair_edit('编辑','/page/repairupd','${Penson.id}','1000','600')"
                       class="ml-5" style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
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
    function repair_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    //编辑
    function repair_edit (title,url,id,w,h) {
        url =url+"?id="+id;
        x_admin_show(title,url,w,h);
    }

    /*删除*/
    function repair_del(obj,id){
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
</script>

</body>
</html>