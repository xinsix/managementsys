<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        修改公告
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
                    <input type="hidden" name="id" value="${infoManage.id}"/>
                    <div class="layui-form-item">
                        <label class="layui-form-label" style="width: 115px;">
                            <span class='x-red'>*</span>修改公告的内容
                        </label>
                        <div class="layui-inputb-lock">
                            <textarea name="content" style="height: 300px" autocomplete="off" placeholder="请输入公告内容"
                                      class="layui-input" required="" value="">${infoManage.content}</textarea>
                        </div>
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
<!--<script src="/static/xiyuan/js/jquery.js" charset="utf-8"></script>-->
<script>

    layui.use(['laydate','element','layer','form'], function(){
        $ = layui.jquery;//jquery

        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层

        form = layui.form();
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

        //监听提交
        form.on('submit(upd)', function(data){
            var content=$("textarea[name='content']").val();
            if(content===""||content==null){
                layer.msg('公告内容不允许为空',{icon:5,time:2000});return false;
            }
            var data=data.field;
            $.ajax({
                type:"post",
                url:"/infomanage/updinfomanage",
                data:data,
                dataType:"json",
                success:function(data)
                {
                    if(data)
                    {
                        layer.msg("修改成功", {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;

                    }
                    else{
                        layer.msg("修改失败",{icon:5,time:2000});return false;
                    }
                }

            });

        });
        form.on('select(aihao)', function(data){
            communidy();
        });
        $(function () {
            communidy();
        });
        //communidy();
        function communidy() {
            var communidy = $("#community_id").val();

            $.ajax({
                url:"/xiyuan/home/building.html",
                type:"post",
                dataType:"json",
                data:{communidy:communidy},
                success:function (data) {

                    var dlen =data.length;
                    var str='';
                    for (var i=0;i<dlen;i++){
                        var dt=data[i];
                        str +='<option value="' + dt.id + '">';
                        str +=dt.buildings_name;
                        str +='</option>';
                    }

                    $("#building_id").html(str);
                    form.render('select', 'aihao');
                    //form.render('#building_id');

                }
            })
        }


    })
</script>

</body>
</html>