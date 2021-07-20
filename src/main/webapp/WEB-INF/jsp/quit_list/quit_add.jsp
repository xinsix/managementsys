<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        角色添加
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
    <form class="layui-form layui-form-pane" action="" id="add">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <input type="hidden" name="id" value="">

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>离职人
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="device_name" autocomplete="off" placeholder="控制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>离职理由
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="device_name" autocomplete="off" placeholder="控制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>离职时间
                        </label>

                        <div class="layui-input-inline">
                            <input class="layui-input" name="quit_time" placeholder="离职时间" id="quit_demorange_s" value="">
                        </div>
                            <div class="layui-form-item">
                                <button class="layui-btn" type="button" lay-filter="add" lay-submit="">
                                    保存
                                </button>
                            </div>

                            <div style="height:100px;"></div>
                        </div>



                    </div>

                </div>
    </form>
</div>
<script src="../../statics/lib/layui/layui.js" charset="utf-8"></script>
<script src="../../statics/js/x-layui.js" charset="utf-8"></script>

<script>
    layui.use(['laydate','element','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层
        form = layui.form();
        laydate = layui.laydate;//日期插件
        okLoading.close($);
        form.render();
        var start = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                //end.min = datas; //开始日选好后，重置结束日的最小日期
                //end.start = datas //将结束日的初始值设定为开始日
            }
        };
        document.getElementById('quit_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        };



        //图片上传接口
        /*layui.upload({
          url: './upload.json' //上传接口
          ,success: function(res){ //上传成功后的回调
              console.log(res);
            $('#LAY_demo_upload').attr('src',res.url);
          }
        });*/


        //监听提交
        form.on('submit(add)', function(data){
            var device_name=$("input[name='device_name']").val();
            var brand=$("input[name='brand']").val();
            var money=$("input[name='money']").val();
            var number=$("input[name='number']").val();
            var sy_year=$("input[name='sy_year']").val();
            var quit_time=$("input[name='quit_time']:checked").val();

            var community_id=$('#community_id option:selected') .val();//所属栏目ID

            if(device_name==""){
                layer.msg('设备名称不能为空',{icon:5,time:2000});return false;
            }
            if(brand==""){
                layer.msg('品牌名称不能为空',{icon:5,time:2000});return false;
            }
            if(money==""){
                layer.msg('购买单价不能为空',{icon:5,time:2000});return false;
            }
            if(community_id==""){
                layer.msg('所属小区不能为空',{icon:5,time:2000});return false;
            }
            if(number==""){
                layer.msg('购买数量不能为空',{icon:5,time:2000});return false;
            }
            if(sy_year==""){
                layer.msg('预计使用年限不能为空',{icon:5,time:2000});return false;
            }
            if(quit_time==""){
                layer.msg('开始日期不能为空',{icon:5,time:2000});return false;
            }

            var data=data.field;
            $.ajax({
                type:"post",
                url:"xxx",
                data:data,
                dataType:"json",
                success:function(data){
                    if(data.status==1){
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