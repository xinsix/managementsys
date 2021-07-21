<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>文化有限管理系统</title>
    <link rel="icon" href="../../../statics/images/LOGO-white.png">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <!-- <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />-->
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <script type="text/javascript" src="../../../statics/lib/loading/okLoading.js"></script>
    <link rel="stylesheet" href="../../../statics/css/main.css" media="all">
    <link rel="stylesheet" href="../../../statics/css/font.css">

</head>
<style>
    .show_list{display: block;}
    .hide_lits{display: none;}
</style>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header header header-demo">
        <div class="layui-main">
            <div class="admin-logo-box">
                <a class="logo" href="" title="logo">文化有限管理系统</a>
                <div class="larry-side-menu">

                    <img src="../../../statics/images/ss.png" alt="">
                </div>
            </div>

            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item" id="time" style="margin-right: 50px;font-size: 16px;color: #2fb9d4;position: absolute;left: -250px;top: 0"></li>
                <li class="layui-nav-item"><img src="../../../statics/images/Toux.jpg" class="layui-circle" style="border: 2px solid #A9B7B7;" width="35px" height="35px" alt=""></li>
                <li class="layui-nav-item"> <a href="javascript:;">${sessionScope.user_Session.name}</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd><a href="javascript:;"  onclick="one_set('个人信息','one_set.html','1000','600')">个人信息</a>
                        </dd>
                        <dd><a href="/user/login.html">切换帐号</a></dd>
                        <dd><a href="javascript:;" onclick="logout()">退出</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item x-index"><a href="#"></a></li>
            </ul>
        </div>
    </div>

    <!--左侧导航区域-->


    <div class="layui-side layui-bg-black x-side show_list" style="left:0px;" id="table1">
        <div style="height: 130px; width: 220px; ">
            <a class="img" title="我的头像" style="display: block;width: 80px;height: 80px;margin: 10px auto 10px;">
                <img src="../../../statics/images/Toux.jpg" class="userAvatar" style="display: block;width: 100%;height: 100%;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;border: 4px solid #44576b;box-sizing: border-box;">
            </a>
            <p style=" display: block;width: 100%;height: 25px;color: #ffffff;text-align: center;font-size: 12px;white-space: nowrap;line-height: 25px;overflow: hidden;">
                你好！<span class="userName">${sessionScope.user_Session.name}</span>, 欢迎回来
            </p>
        </div>
        <div class="layui-side-scroll">

            <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">


                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;" _href="/page/welcome"> <i class="layui-icon left-nav-li" lay-tips="主页">&#xe68e;</i><cite>主页</cite> </a>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="iconfont icon-dashaxiaoqudizhi01" style="top: 3px;"></i><cite>办公</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                        <dd class=""> <a href="javascript:;" _href="/page/communitylist"> <cite>便签</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/page/task"> <cite>任务</cite> </a> </dd>
                        </dd>
                    </dl>
                </li>
                <c:if test="${sessionScope.user_Session.role == 1}">
                    <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon iconfont icon-lvhuaxiaoqu" style="top: 3px;"></i><cite>公共信息</cite> </a>
                        <dl class="layui-nav-child">
                            <dd class="">
                            <dd class=""> <a href="javascript:;" _href="/page/homelist"> <cite>信息管理</cite> </a> </dd>
                            </dd>
                            <!-- <dd class="">
                             <dd class=""> <a href="javascript:;" _href="buildinglst.html"> <cite>栋数管理</cite> </a> </dd>-->
                            </dd>

                        </dl>
                    </li>
                </c:if>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon iconfont icon-yezhuxian" style="top: 3px;"></i><cite>行政</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                        <dd class=""> <a href="javascript:;" _href="/page/personnel_list"> <cite>会议室管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/page/vehicle_list"> <cite>车辆管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/page/pet_list"> <cite>资产管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/page/articles_list"> <cite>用品管理</cite> </a> </dd>

                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon iconfont icon-tingchewei" style="top: 3px;"></i><cite>工作流程管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                        <dd class=""> <a href="javascript:;" _href="/detailedprocess/find/1"> <cite>请假</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/detailedprocess/find/2"> <cite>加班</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/detailedprocess/find/3"> <cite>出差</cite> </a> </dd>
                        </dd>
                    </dl>
                </li>
                <c:if test="${sessionScope.user_Session.role == 1}">
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon iconfont icon-fuwu" style="top: 3px;"></i><cite>组织管理</cite> </a>
                    <dl class="layui-nav-child">
                        <%--<dd class=""> <a href="javascript:;" _href="/page/"> <cite>架构管理</cite> </a> </dd>--%>
                        <dd class=""> <a href="javascript:;" _href="/page/department_list"> <cite>部门管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/page/stion_list"> <cite>岗位管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/page/position_list"> <cite>职能管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/page/repairlist"> <cite>人员管理</cite> </a> </dd><!--
                        <dd class=""> <a href="javascript:;" _href="complainlist.html"> <cite>投诉管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="mailboxlist.html"> <cite>信箱管理</cite> </a> </dd>-->
                    </dl>
                </li>
                </c:if>
                <c:if test="${sessionScope.user_Session.role == 1}">
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon iconfont icon-zichan" style="top: 3px;"></i><cite>权限管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class=""> <a href="javascript:;" _href="/page/device_list"> <cite>角色管理</cite> </a> </dd>
                        <!--<dd class=""> <a href="javascript:;" _href="user_list.html"> <cite>用户管理</cite> </a> </dd>-->
                    </dl>
                </li>
                </c:if>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon iconfont icon-shoufeizhan" style="top: 3px;"></i><cite>系统管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class=""> <a href="javascript:;" _href="/page/pro_list"> <cite>密码修改</cite> </a> </dd>
                    </dl>
                </li>

                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe613;</i><cite>人事档案</cite> </a>
                    <dl class="layui-nav-child">
                        <c:if test="${sessionScope.user_Session.role == 1}">
                        <dd class=""> <a href="javascript:;" _href="/page/personnelresume_list"> <cite>人员履历</cite> </a> </dd>
                        </c:if>
                            <dd class=""> <a href="javascript:;" _href="/page/lfgh_list"> <cite>转正申请</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/page/quit_list"> <cite>离职申请</cite> </a> </dd>
                        <%--<dd class=""> <a href="javascript:;" _href=""> <cite>员工考勤</cite> </a> </dd>--%>

                    </dl>
                </li>

               <!-- <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe614;</i><cite>系统设置</cite> </a>
                    <dl class="layui-nav-child">
                        &lt;!&ndash;<dd class=""> <a href="javascript:;" _href="system.html"> <cite>系统设置</cite> </a> </dd>&ndash;&gt;
                        &lt;!&ndash;<dd class=""> <a href="javascript:;" _href="one_set.html"> <cite>个人设置</cite> </a> </dd>&ndash;&gt;

                    </dl>
                </li>-->
                <!--<li class="layui-nav-item" style="height: 30px; text-align: center"> </li>-->
            </ul>
        </div>
    </div>


    <div class="layui-side layui-bg-black x-side hide_lits" style="left:0px;" id="table2">
        <div style="height: 130px; width: 220px; ">
            <a class="img" title="我的头像" style="display: block;width: 80px;height: 80px;margin: 10px auto 10px;">
                <img src="../../../statics/images/Toux.jpg" class="userAvatar" style="display: block;width: 100%;height: 100%;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;border: 4px solid #44576b;box-sizing: border-box;">
            </a>
            <p style=" display: block;width: 100%;height: 25px;color: #ffffff;text-align: center;font-size: 12px;white-space: nowrap;line-height: 25px;overflow: hidden;">
                你好！<span class="userName">xiyuan</span>, 欢迎回来
            </p>
        </div>
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe607;</i><cite>栏目管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                        <dd class=""> <a href="javascript:;" _href="/xiyuan/cate/lst.html"> <cite>栏目列表</cite> </a> </dd>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe62d;</i><cite>公告管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                        <dd class=""> <a href="javascript:;" _href="/xiyuan/notice/typelist.html"> <cite>公告类型</cite> </a> </dd>
                        </dd>
                        <dd class="">
                        <dd class=""> <a href="javascript:;" _href="/xiyuan/notice/lst.html"> <cite>公告列表</cite> </a> </dd>
                        </dd>

                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe634;</i><cite>文章管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                        <dd class=""> <a href="javascript:;" _href="/xiyuan/article/typelist.html"> <cite>文章类型列表</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="/xiyuan/article/lst.html"> <cite>文章列表</cite> </a> </dd>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe642;</i><cite>订单管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                        <dd class=""> <a href="javascript:;" _href="/page/welcome"> <cite>订单列表（待开发）</cite> </a> </dd>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe630;</i><cite>分类管理111</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class=""> <a href="javascript:;" _href="./category.html"> <cite>分类列表</cite> </a> </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe606;</i><cite>评论管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class=""> <a href="javascript:;" _href="./comment-list.html"> <cite>评论列表</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./feedback-list.html"> <cite>意见反馈</cite> </a> </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe612;</i><cite>会员管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class=""> <a href="javascript:;" _href="member-list.html"> <cite>会员列表</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./member-del.html"> <cite>删除会员</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./member-level.html"> <cite>等级管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./member-kiss.html"> <cite>积分管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./member-view.html"> <cite>浏览记录</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./member-view.html"> <cite>分享记录</cite> </a> </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe613;</i><cite>管理员管理</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class=""> <a href="javascript:;" _href="/xiyuan/admin/lst.html"> <cite>管理员列表</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./admin-role.html"> <cite>角色管理</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./admin-cate.html"> <cite>权限分类</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./admin-rule.html"> <cite>权限管理</cite> </a> </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe629;</i><cite>系统统计</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class=""> <a href="javascript:;" _href="./echart.html"> <cite>统计报表</cite> </a> </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe614;</i><cite>系统设置</cite> </a>
                    <dl class="layui-nav-child">
                        <dd class=""> <a href="javascript:;" _href="./sys-set.html"> <cite>系统设置</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./sys-data.html"> <cite>数字字典</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./sys-shield.html"> <cite>屏蔽词</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./sys-log.html"> <cite>系统日志</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./sys-link.html"> <cite>友情链接</cite> </a> </dd>
                        <dd class=""> <a href="javascript:;" _href="./sys-qq.html"> <cite>第三方登录</cite> </a> </dd>
                    </dl>
                </li>
                <li class="layui-nav-item" style="height: 30px; text-align: center"> </li>
            </ul>
        </div>
    </div>


    <div class="layui-tab layui-tab-card site-demo-title x-main" lay-filter="x-tab" lay-allowclose="true" style="left: 220px;border-left: solid 2px #2299ee;">
        <ul class="layui-tab-title">
            <li class="layui-this"> 首页 <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> </li>
        </ul>
        <div class="layui-tab-content site-demo site-demo-body">
            <div class="layui-tab-item layui-show">
                <iframe frameborder="0" src="/page/welcome" class="x-iframe"></iframe>
            </div>
        </div>
    </div>
    <div class="site-mobile-shade"> </div>
</div>

<script src="../../../statics/lib/layui/layui.js" charset="utf-8"></script>
<script src="../../../statics/js/main.js"></script>
<script src="../../../statics/js/jquery.min.js"></script>
<script src="../../../statics/js/x-layui.js" charset="utf-8"></script>

<script>
    $(".daohang").click(function(){
        var table = $(this).attr("ids");
        var ids = $(".show_list").attr("id");
        $("#"+ids+"").addClass("hide_lits");
        $("#"+ids+"").removeClass("show_list");
        $(""+table+"").removeClass("hide_lits");
        $(""+table+"").addClass("show_list");
    })


</script>
<script>
    layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;//jquery
        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层
        okLoading.close($)
        //以上模块根据需要引入

    });
    /**
     * 退出登陆
     * 2019年8月17日19:43:15
     */
    function logout() {

        $.ajax({
            type:"get",
            url:"/user/logout",/*
            data:{e:1},*/
            dataType:"json",
            success:function (data) {
                if(data){
                    layer.msg("退出成功",{icon:1,time:1000});
                    setTimeout("window.location.href='/user/login.html'",2000);return false;
                    return false;
                }else{
                    layer.msg("退出失败",{icon:5,time:2000});return false;
                }
            }

        })
        return false;
    }

    function one_set(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
</script>
<script>
    //顶部时间
    function getTime(){
        var myDate = new Date();
        var myYear = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
        var myMonth = myDate.getMonth()+1; //获取当前月份(0-11,0代表1月)
        var myToday = myDate.getDate(); //获取当前日(1-31)
        var myDay = myDate.getDay(); //获取当前星期X(0-6,0代表星期天)
        var myHour = myDate.getHours(); //获取当前小时数(0-23)
        var myMinute = myDate.getMinutes(); //获取当前分钟数(0-59)
        var mySecond = myDate.getSeconds(); //获取当前秒数(0-59)
        var week = ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'];
        var nowTime;

        nowTime = myYear+'-'+fillZero(myMonth)+'-'+fillZero(myToday)+'&nbsp;&nbsp;'+week[myDay]+'&nbsp;&nbsp;'+fillZero(myHour)+':'+fillZero(myMinute)+':'+fillZero(mySecond);
        //console.log(nowTime);
        $('#time').html(nowTime);
    };
    function fillZero(str){
        var realNum;
        if(str<10){
            realNum	= '0'+str;
        }else{
            realNum	= str;
        }
        return realNum;
    }
    setInterval(getTime,1000);
</script>
<script>
    window.onload=function () {
        var click=document.getElementById('new-nav');
        var news=document.getElementById('news');
        click.addEventListener('mousemove',function () {
            news.style.display='block';
        });
        click.addEventListener('mouseout',function () {
            news.style.display='none';
        });

        var gonggao=document.getElementById('gonggao');
        var gonggaos=document.getElementById('gonggaos');
        gonggao.addEventListener('mousemove',function () {
            gonggaos.style.display='block';
        });
        gonggao.addEventListener('mouseout',function () {
            gonggaos.style.display='none';
        });
    }
</script>
<style>
.copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>

</body>
</html>