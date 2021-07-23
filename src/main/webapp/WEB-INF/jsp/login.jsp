<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>文化有限公司系统登录</title>
  <link rel="stylesheet" href="/statics/css/login.css">
  <script type="text/javascript" src="/statics/js/jquery.min.js"></script>
  <script src="/statics/lib/layui/layui.js" charset="utf-8"></script>
    <link rel="icon" href="../../statics/images/LOGO-white.png">
</head>
<body class="login-bg">
    <div class="main">
        <div class="login">
            <h1>文化有限管理系统</h1>
            <div class="inset">
                <!--start-main-->
                <form method="post" action="/user/toLogin" class="layui-form" >
                    <div>
                        <h2>系统登录</h2>
                        <span><label>用户名</label></span>
                        <span><input type="text" autocomplete="off" class="username" name="username"></span>
                    </div>
                    <div>
                        <span><label>密码</label></span>
                        <span><input type="password" class="password" name="password"></span>
                    </div>
                    <div class="sign">
                        <input type="submit" value="登录" class="submit" />
                    </div>
                </form>
            </div>
        </div>
        <!--//end-main-->
    </div>

    <div class="copy-right">
        <p>&copy; Copyright 2021 culture Limited</p>

    </div>

    <!-- 底部结束 -->
    
</body>
</html>