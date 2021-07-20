<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        会议室修改
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
        .picture{display: none;}
    </style>

</head>
<body>

<div class="x-body">
    <form class="layui-form layui-form-pane" action="" id="add">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <%--<input type="hidden" name="id" value="">--%>
            <div class="layui-tab-content" >
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>会议室名称
                            <input type="hidden" name="id" value="${id}">
                            <input type="hidden" name="status" value="0">
                        </label>
                        <div class="layui-input-block">
                            <select name="meetroomid" id="sn" lay-filter="aihao">
                                <option value="0">---请选择小区---</option>
                                <%--<option value="0">---请选择小区---</option>
                                <option value="1" >东湖小区</option>
                                <option value="2" >金华万府</option>--%>
                            </select>
                            <%--<input type="text" name="member_name" autocomplete="off" placeholder="输入会议室名称"
                                   class="layui-input" lay-verify="required" lay-reqtext="会议室名称是必填项，岂能为空？" value="">--%>
                            <%--<select name="member_name">
                                <c:forEach var="list" items="${list}">
                                    <option value="${list.id}">${list.sn}</option>
                                </c:forEach>
                            </select>--%>
                        </div>
                    </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>开始时间
                    </label>
                    <div class="layui-input-block">
                        <input type="datetime-local" name="begindate" autocomplete="off" placeholder="输入会议室位置"
                               class="layui-input" lay-verify="required" lay-reqtext="" value="">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>结束时间
                    </label>
                    <div class="layui-input-block">
                        <input type="datetime-local" name="enddate" autocomplete="off" placeholder="输入会议结束时间"
                               class="layui-input" lay-verify="required" lay-reqtext="" value="">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>申请原因
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="applyreason" autocomplete="off" placeholder="输入申请原因"
                               class="layui-input" lay-verify="required" lay-reqtext="" value="">
                    </div>
                </div>



                   <!-- <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>身份证号
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="sfzmhm" autocomplete="off" placeholder="会议室名称位置"
                                   class="layui-input" maxlength="18" lay-verify="identity" value="">
                        </div>
                    </div>

                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>会议室描述
                        </label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="desc" class="layui-textarea"></textarea>
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
    </form>
</div>
<script src="../../statics/lib/layui/layui.js" charset="utf-8"></script>
<script src="../../statics/js/x-layui.js" charset="utf-8"></script>
<script src="../../statics/js/jquery.min.js" charset="utf-8"></script>
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
        /*document.getElementById('LAY_demorange_s').onclick = function(){
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
            console.log(data);
            var member_name=$("input[name='member_name']").val();
            var data=data.field;
           /* if(member_name==""){
                layer.msg('重点不能为空',{icon:5,time:2000});return false;
            }*/
            $.ajax({
                type:"post",
                url:"/meetingroomApply/upd",
                data:data,
                dataType:"json",
                success:function(data){
                    if(data){
                        layer.msg("重新申请成功！", {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;
                    }
                    else{
                        layer.msg("重新申请失败！",{icon:5,time:2000});return false;
                    }
                }

            });

        });

        form.on('select(aihao)', function(data){
            //communidy();
        });
        $(function () {
            communidy();
        });
        //communidy();
        function communidy() {
            //var communidy = $("#community_id").val();
            $.ajax({
                url:"/meetingroom/find",
                type:"post",
                dataType:"json",
                //data:{communidy:communidy},
                success:function (data) {
                    console.log(data);
                    var dlen =data.length;
                    var str='';
                    for (var i=0;i<dlen;i++){
                        var dt=data[i];
                        str +='<option value="' + dt.id + '">';
                        str +=dt.sn;
                        str +='</option>';
                    }

                    $("#sn").html(str);
                    form.render('select', 'aihao');
                    //form.render('#building_id');

                }
            })
        }

    })
</script>
<!--栏目缩略图上传-->
<script>
    function upload(obj,id){
        var formData = new FormData();
        formData.append('images', $('#previewImg')[0].files[0]);
        formData.append('id', id);//将id追加再id中
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