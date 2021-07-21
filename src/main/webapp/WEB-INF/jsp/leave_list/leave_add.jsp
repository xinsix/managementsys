<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        添加请假
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
                    <input type="hidden" name="procedure_id" value="1">
                    <input type="hidden" name="apply_pid" value="${sessionScope.user_Session.id}">


                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>请假理由
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="matter" autocomplete="off" placeholder="控制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>开始时间
                        </label>
                        <div class="layui-input-block">
                            <input type="date" name="start_time" autocomplete="off" placeholder="控制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>结束日期
                        </label>
                        <div class="layui-input-block">
                            <input type="date" name="end_time" autocomplete="off" placeholder="控制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>时长
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="duration" autocomplete="off" placeholder="控制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
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
<script src="js/x-layui.js" charset="utf-8"></script>

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
        /*document.getElementById('start_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        };
        document.getElementById('End_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        };*/



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
            //console.log(data);
            var matter=$("input[name='matter']").val();
            var data=data.field;
             if(matter==""){
                 layer.msg('请假理由不能为空',{icon:5,time:2000});return false;
             }
            $.ajax({
                type:"post",
                url:"/detailedprocess/add",
                data:data,
                dataType:"json",
                success:function(data){
                    if(data){
                        layer.msg("添加成功！", {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;
                    }
                    else{
                        layer.msg("添加成功！",{icon:5,time:2000});return false;
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