<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        任务管理
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../statics/css/main.css" media="all">
    <script type="text/javascript" src="../../statics/lib/loading/okLoading.js"></script>
    <!--百度编辑器-->
    <script src="../../statics/ueditor/ueditor.config.js"></script>
    <script src="../../statics/ueditor/ueditor.all.min.js"></script>
    <script src="../../statics/ueditor/lang/zh-cn/zh-cn.js"></script>

</head>
<style>
    .imgs{display: none;}
    .picture{display: none;}
</style>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>办公</cite></a>
              <a><cite>添加任务</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form layui-form-pane" action="" id="add">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <!--<ul class="layui-tab-title">
                <li class="layui-this">基本信息</li>
                <li>SEO信息</li>
                <li>栏目内容</li>
            </ul>-->

            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <!--<form class="layui-form layui-form-pane" action="" id="add">-->
                    <input type="hidden" name="executeid" value="${sessionScope.user_Session.id}">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>员工姓名
                        </label>
                        <div class="layui-input-block">
                            <select name="employeeid" id="employeeid" lay-filter="aihao">
                                <option></option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>任务内容
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="matter" autocomplete="off" placeholder="任务内容"
                                   class="layui-input" required="" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>开始时间
                        </label>
                         <div class="layui-input-block">
                             <input type="date" name="starttime" autocomplete="off" placeholder="任务内容"
                                    class="layui-input" required="" lay-verify="" value="">
                         </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>结束时间
                        </label>
                        <div class="layui-input-block">
                            <input type="date" name="endtime" autocomplete="off" placeholder="任务内容"
                                   class="layui-input" required="" lay-verify="required" value="">
                        </div>
                    </div>

                    <!--<div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>员工
                        </label>
                        <div class="layui-input-block">
                            <select name="community_id" id="community_id" lay-filter="aihao">

                            </select>
                        </div>
                    </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>执行人
                            </label>
                            <div class="layui-input-block">
                                <select name="executor_id" id="executor_id" lay-filter="aihao">

                                </select>
                            </div>
                        </div>-->


                    <div class="layui-form-item">
                        <button class="layui-btn" type="button" lay-filter="add" lay-submit="">
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
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    UE.getEditor('content',{initialFrameWidth:700,initialFrameHeight:200,});
</script>
<script>
    layui.use(['element','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层
        form = layui.form();
        okLoading.close($);

        communidy();
        function communidy() {
            //var employeeid = $("#employeeid").val();

            $.ajax({
                url:"/Penson/find",
                type:"post",
                dataType:"json",
                //data:{employeeid:employeeid},
                success:function (data) {

                    var dlen =data.length;
                    var str='';
                    for (var i=1;i<dlen;i++){
                        var dt=data[i];
                        str +='<option value="' + dt.id + '">';
                        str +=dt.name;
                        str +='</option>';
                    }

                    $("#employeeid").html(str);
                    form.render('select', 'aihao');
                    //form.render('#building_id');

                }
            })
        }

        //监听提交
        form.on('submit(add)', function(data){
            var matter=$("input[name='matter']").val();
            var starttime=$("input[name='starttime']").val();
            var endtime=$("input[name='endtime']").val();
            if(matter==""){
                layer.msg('内容不能为空',{icon:5,time:2000});return false;
            }
            if(starttime==""){
                layer.msg('开始时间不能为空',{icon:5,time:2000});return false;
            }
            if(endtime==""){
                layer.msg('结束时间不能为空',{icon:5,time:2000});return false;
            }
            if(starttime>=endtime){
                layer.msg("开始时间不能大于或等于结束时间！",{icon:5,time:2000});return false;
            }
            var data=data.field;
            $.ajax({
                type:"post",
                url:"/task/add",
                data:data,
                dataType:"json",
                success:function(data)
                {
                    //alert(1);
                    if(data)
                    {
                        layer.msg('添加成功！', {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;

                    }
                    else{
                        layer.msg('添加失败！',{icon:5,time:2000});return false;
                    }
                }

            });

        });

    })
</script>
<!--栏目缩略图上传-->
<script>
    function upload(obj,id){
        var formData = new FormData();
        formData.append('images', $('#previewImg')[0].files[0]);
        formData.append('id',id);
        layer.msg('图片上传中', {icon: 16});
        $.ajax({
            type:"post",
            processData: false,
            contentType: false,
            url:"/xiyuan/community/upload.html",
            data:formData,
            success:function(data){
                if(data.status == 1){
                    //console.log(data.image_name);
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