<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        资产管理
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
              <a><cite>行政</cite></a>
              <a><cite>资产管理</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="" style="width:800px">
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
                    <input type="text" name="assetname"  placeholder="资产名称" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()">
            <i class="layui-icon">&#xe640;</i>批量删除
        </button>
        <button class="layui-btn" onclick="question_add('添加','/page/pet_add','1000','600')">
            <i class="layui-icon">&#xe608;</i>添加
        </button>
        <span class="x-right" style="line-height:40px">共有数据：<span class="layui-badge">${count}</span> 条</span></xblock>
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
                资产名称
            </th>
            <th>
                资产数量
            </th>
            <th>
                资产位置
            </th>
            <th>
                资产管理人
            </th>
            <th>
                操作
            </th>
        </tr>
        </thead>
        <tbody id="x-img">
            <c:forEach var="list" items="${list}" varStatus="str">
                <tr>
                    <td>
                        <input type="checkbox" value="1" name="">
                    </td>
                    <td>
                        ${str.index + 1}
                    </td>
                    <td>
                            ${list.assetname}
                    </td>
                    <td>
                            ${list.quantity}
                    </td>
                    <td>
                            ${list.position}
                    </td>
                    <td>
                            ${list.pname}
                    </td>
                    <td class="td-manage">
                        <a title="编辑" href="javascript:;" onclick="qpet_edit('编辑','/page/pet_modify',${list.id},'1000','600')"
                           class="ml-5" style="text-decoration:none">
                            <i class="layui-icon">&#xe642;</i>
                        </a>
                        <a title="删除" href="javascript:;" onclick="pet_del(${list.id})"
                           style="text-decoration:none">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <%--<div id="page"><ul class="pagination"><li class="disabled"><span>&laquo;</span></li> <li class="active"><span>1</span></li><li><a href="/xiyuan/Owners/pet_list?page=2">2</a></li> <li><a href="/xiyuan/Owners/pet_list?page=2">&raquo;</a></li></ul></div>--%>
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

    function question_show (argument) {
        layer.msg('可以跳到前台具体问题页面',{icon:1,time:1000});
    }
    /*添加*/
    function question_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    //编辑
    function qpet_edit (title,url,id,w,h) {
        url = url+"/"+id;
        x_admin_show(title,url,w,h);
    }

    /*删除*/
    function pet_del(id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"post",
                url:"/assetsmanage/del",
                data:{id:id},
                dataType:"json",
                success:function(data){
                    //console.log(data);
                    if(data){
                        //发异步删除数据
                        layer.msg('已删除!',{icon:6,time:1000});
                        setTimeout(function(){
                            window.location.reload();
                        },1000);return false;
                    } else{
                        layer.msg('删除失败!',{icon:5,time:1000});return false;
                    }
                }
            });
        });
    }
</script>

</body>
</html>