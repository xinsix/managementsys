<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        车辆归还
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


            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <input type="hidden" name="id" value="${carManage.id}">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>车牌号
                        </label>
                        <div class="layui-input-block">
                            <input type="text" readonly="readonly" name="licenseplate" autocomplete="off"
                                   class="layui-input" value="${carManage.licenseplate}">
                        </div>
                    </div>
                    <%--<div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>申请时间
                        </label>
                        <div class="layui-input-block">
                            <input type="datetime-local" name="applytime" autocomplete="off"
                                   class="layui-input" value="">
                            &lt;%&ndash;<fmt:formatDate value="" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate>&ndash;%&gt;
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>归还时间
                        </label>
                        <div class="layui-input-block">
                            <input type="datetime-local" name="backtime" autocomplete="off"
                                   class="layui-input" value="">
                                &lt;%&ndash;<fmt:formatDate value="2020-02-02 11:11" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate>&ndash;%&gt;
                        </div>
                    </div>--%>
                    <%--<div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>用途
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="purpose" autocomplete="off" placeholder="控制在15个汉字，30个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>--%>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>行驶公里数
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="mileage" autocomplete="off" placeholder="控制在15个汉字，30个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>凭证
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="voucher" autocomplete="off" placeholder="控制在15个汉字，30个字符以内"
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
<script src="../../statics/js/x-layui.js" charset="utf-8"></script>
<script src="../../statics/js/jquery.min.js" charset="utf-8"></script>

<script>
    layui.use(['element','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层
        form = layui.form();
        okLoading.close($);
        form.render();



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
            var licenseplate=$("input[name='licenseplate']").val();
            //var applytime=$("input[name='applytime']").val();
            //var backtime=$("input[name='backtime']").val();
            var purpose=$("input[name='purpose']").val();
            var mileage=$("input[name='mileage']").val();
            var voucher=$("input[name='voucher']").val();

            if(licenseplate==""){
                layer.msg('车牌号不能为空',{icon:5,time:2000});return false;
            }
            /*if(applytime==""){
                layer.msg('申请时间不能为空',{icon:5,time:2000});return false;
            }
            if(backtime==""){
                layer.msg("归还时间不能为空！",{icon:5,time:2000});return false;
            }
            if(backtime<=applytime){
                layer.msg("归还时间不能在申请时间之前！",{icon:5,time:2000});return false;
            }*/
            /*if(purpose==""){
                layer.msg("用途不能为空！",{icon:5,time:2000});return false;
            }*/
            if(mileage==""){
                layer.msg("行驶公里数不能为空！",{icon:5,time:2000});return false;
            }
            if(voucher==""){
                layer.msg("凭证不能为空！",{icon:5,time:2000});return false;
            }
            var data=data.field;
            $.ajax({
                type:"post",
                url:"/carmanage/upd",
                data:data,
                dataType:"json",
                success:function(data){
                    if(data){
                        layer.msg("归还成功！", {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;
                    }else{
                        layer.msg("归还失败！",{icon:5,time:2000});return false;
                    }
                }

            });

        });

        form.on('select(aihao)', function(data){
            communidy();
        });
        $(function () {
            //communidy();
        });
        //communidy();
        function communidy() {
            var communidy = $("#community_id").val();
            $.ajax({
                url:"xxx",
                type:"post",
                dataType:"json",
                data:{communidy:communidy},
                success:function (data) {
                    var dlen =data.length;
                    var str='';
                    if(dlen>0){
                        for (var i=0;i<dlen;i++){
                            var dt=data[i];
                            str +='<option value="' + dt.id + '">';
                            str +=dt.member_name;
                            str +='</option>';
                        }
                    }else {
                        str +='<option value="">----暂无数据----</option>';
                    }

                    $("#personnel_id").html(str);
                    form.render('select', 'aihao');

                }
            })
        }


    })
</script>
<!--栏目缩略图上传-->
<script>
    function upload(obj,id)
    {
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