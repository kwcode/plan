<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/layer/layer.js"></script>
    <script>
        $(function () {
            var key = 0;
            //layer.ready();
            var htmldemo = '<div class="d-hide"> <a>测试</a><input type="button" class="d-hide-ok" id="btn_ok" value="确认" /> <input type="button" class="d-hide-cancel" id="btn_cancel" value="取消" /> </div>';
            $("#btn_layer").click(function () {
                // $.layer({ type: 4 });
                layer.open({
                    type: 1,
                    shade: [0.3, '#000', true],
                    border: [4, 0.1, '#000', true],//默认边框
                    title: '提示',
                    area: ['493px', '265px'],
                    position: 'center',
                    shift: key,//从左动画弹出 
                    content: $("#hide_deomo"),
                    success: function () { }
                          , close: function () {
                          }
                });
                // $.layer({ type: 3, icon: key, time: 2000 });
                // layer.load({ icon: key, time: 2000 });
                //layer.msg('加载中', { time: 2000, icon: key });
                key++;
            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="hide_deomo">
            ceshi
        </div>
        <div>
            <input type="button" id="btn_layer" value="测试" />
        </div>
    </form>
</body>
</html>
