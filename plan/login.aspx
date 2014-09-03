<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/css.css" rel="stylesheet" />
    <style type="text/css">
        .bg_login { width: 100%; height: 100%; background: url(images/bg_login.jpg) no-repeat center -106px; color: #666; position: relative; z-index: 10; }
        .box { box-shadow: 0 0 0 4px rgba(0,0,0,.2); border-radius: 5px; }
        .box-login-form { background: url(images/bg_lrform.png) repeat left top; position: fixed; width: 500px; height: 500px; }
        .wrap { margin: 0px; padding: 0px; margin-top: 200px; margin-left: 30%; }

        .btn1 { width: 95px; height: 32px; padding-top: 2px; font-size: 14px; padding: 0; background-color: #d7adad; border: 0; cursor: pointer; }
        .btn1:hover { color: #fff; text-decoration: none; background-color: #d48c8c; border: 0; }
        input:-webkit-autofill { background-color: hsl(65, 100%, 87%); background-image: none; color: #000000; }
    </style>
</head>
<body class="bg_login">
    <form id="form1" runat="server">
        <div class="wrap clearfix">
            <div class="box box-login-form ">
                <div>
                    <label>帐号：</label>
                    <input type="text" id="loginname" placeholder="用户名 / 邮箱 / 手机号码" />
                </div>
                <div>
                    <label>密码：</label>
                    <input type="password" id="password" placeholder="密码" />
                </div>
                <div style="text-align: center">
                    <input type="button" id="login" class="btn1" value="登录" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
