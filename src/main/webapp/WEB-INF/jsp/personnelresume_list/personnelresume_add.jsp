<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        添加履历
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../statics/css/main.css" media="all">
    <script type="text/javascript" src="../../statics/lib/loading/okLoading.js"></script>
    <style>
        .imgs{display: none;}
    </style>

</head>
<body>

<div class="x-body">
    <form class="layui-form layui-form-pane" action="" id="upd">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">


            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <input type="hidden" name="id" value="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>员工姓名
                        </label>
                        <div class="layui-input-block">
<<<<<<< HEAD

                            <input type="text" name="name" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
=======
                            <input type="text" name="staff_name" autocomplete="off" placeholder="控制在80个汉字，160个字符以内"
>>>>>>> master
                                   class="layui-input" value="">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>员工性别
                        </label>
                        <div class="layui-input-block">
<<<<<<< HEAD
                            <select name="sex">
                                <option value="2">请选择</option>
                                <option value="0">女</option>
                                <option value="1">男</option>
                            </select>
=======
                            <input type="text" name="device_name" autocomplete="off" placeholder="控制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
>>>>>>> master
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>员工地址
                    </label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入内容" name="address" class="layui-textarea"></textarea>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>员工电话
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="phone" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                               class="layui-input" value="">
                    </div>
                </div>

                 <div class="layui-form-item">
                     <label class="layui-form-label">
                         <span class='x-red'>*</span>所属部门
                     </label>
                     <div class="layui-input-block">
                         <select name="org" id="org">
                             <option value="0">---请选择部门---</option>
                             <c:forEach items="${department}" var="Department" varStatus="status">
                                 <option value="${Department.id}">${Department.department_name}</option>
                             </c:forEach>
                         </select>
                     </div>
                 </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>员工角色
                    </label>
                    <div class="layui-input-block">
                        <select name="role" id="role">
                            <option value="0">---请选择角色---</option>
                            <c:forEach items="${list}" var="Role" varStatus="status">
                                <option value="${Role.id}">${Role.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">
                        员工描述
                    </label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入内容" name="description" class="layui-textarea"></textarea>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>员工薪资
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="wages" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                               class="layui-input" value="">
                    </div>

                    <div class="layui-form-item">
                        <button class="layui-btn" type="button" lay-filter="upd" lay-submit="">
                            保存
                        </button>
                    </div>
                    <!--</form>-->
                    <div style="height:100px;"></div>
                </div>



            </div>

        </div>
    </form>
</div>
<script src="../../statics/lib/layui/layui.js" charset="utf-8"></script>
<script src="../../statics/js/x-layui.js" charset="utf-8"></script>
<script src="../../statics/js/jquery.min.js" charset="utf-8"></script>

<script>
    $(function () {
        var username="xiyuan";
        //var username="惜缘";
        $("input[name='uasername']").val(username);
    })
</script>
<script>
    layui.use(['laydate','element','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层
        form = layui.form();
        laydate = layui.laydate;//日期插件
        okLoading.close($);
        form.render();



        //监听提交
        form.on('submit(upd)', function(data){

            var name=$("input[name='name']").val();
            var address=$("input[name='address']").val();
            var phone=$("input[name='phone']").val();
            var wages=$("input[name='wages']").val();

            if(phone.length!=11){
                layer.msg('员工电话不能超过或小于11位',{icon:5,time:2000});return false;
            }
            if(phone==""){
                layer.msg('员工电话不能为空',{icon:5,time:2000});return false;
            }
            if(name==""){
                layer.msg('员工姓名不能为空',{icon:5,time:2000});return false;
            }
            if(address==""){
                layer.msg('员工地址不能为空',{icon:5,time:2000});return false;
            }
            if(wages==""){
                layer.msg('员工薪资不能为空',{icon:5,time:2000});return false;
            }
            var data=data.field;
            $.ajax({
                type:"post",
                url:"/Penson/addPenson",
                data:data,
                dataType:"json",
                success:function(data){
                    if(data)
                    {
                        layer.msg("添加成功", {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;

                    }
                    else{
                        layer.msg("添加失败",{icon:5,time:2000});return false;
                    }
                }

            });

        });

    })
</script>
<!--栏目缩略图上传-->
<script>
    function upload()
    {
        var formData = new FormData();
        formData.append('images', $('#previewImg')[0].files[0]);
        //console.log(formData);
        layer.msg('图片上传中', {icon: 16});
        $.ajax({
            type:"post",
            processData: false,
            contentType: false,
            url:"xxx",
            data:formData,
            success:function(data){
                if(data.status == 1){
                    console.log(data.image_name);
                    layer.closeAll('loading');
                    //layer.msg(data.info,{icon:1,time:1000});
                    $("#pimages").attr('src',data.image_name);
                    $("#avatar").val(data.image_name);
                    $(".imgs").show();
                    return false;
                }else{
                    layer.msg(data.info,{icon:2,time:1000});
                }
            }
        });
    }
</script>

</body>
</html>