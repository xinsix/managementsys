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
                    <input type="hidden" name="id" value="">

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>任务内容
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="community_name" autocomplete="off" placeholder="任务内容"
                                   class="layui-input" required="" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>开始时间
                        </label>
                         <div class="layui-input-inline">
                             <input class="layui-input" name="adoption_time" placeholder="开始时间" id="LAY_demorange_s" value="">
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

        //监听提交
        form.on('submit(add)', function(data){
            var community_name=$("input[name='community_name']").val();
            var developers=$("input[name='developers']").val();
            var property=$("input[name='property']").val();
            var adoption_time=$("input[name='adoption_time']").val();
            if(community_name==""){
                layer.msg('小区名称不能为空',{icon:5,time:2000});return false;
            }
            if(developers==""){
                layer.msg('小区开发商不能为空',{icon:5,time:2000});return false;
            }
            if(property==""){
                layer.msg('物业公司不能为空',{icon:5,time:2000});return false;
            }
            if(adoption_time==""){
                layer.msg("开始时间不能为空！",{icon:5,time:2000});return false;
            }
            var data=data.field;
            $.ajax({
                type:"post",
                url:"/xiyuan/community/add.html",
                data:data,
                dataType:"json",
                success:function(data)
                {
                    //alert(1);
                    if(data.status==1)
                    {
                        layer.msg(data.info, {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;

                    }
                    else{
                        layer.msg(data.info,{icon:5,time:2000});return false;
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