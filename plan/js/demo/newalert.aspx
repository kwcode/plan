<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newalert.aspx.cs" Inherits="js_demo_newalert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../jquery-1.8.3.min.js"></script>
    <script src="../jquery-tw.js"></script>
    <style>
        body { margin: 0; padding: 0; font-size: 12px; font-family: "Microsoft Yahei","\5FAE\8F6F\96C5\9ED1",Tahoma,Arial,Helvetica,STHeiti,"Hiragino Sans GB"; color: #333; }
        .twbox_shade { top: 0; left: 0; width: 100%; height: 100%; position: fixed; display: none; }
        .twbox_layer { display: none; top: 150px; left: 50%; height: auto; width: 310px; margin-left: -155px; z-index: 19891017; width: 302px; height: auto; top: 145px; margin-left: -151px; position: fixed; }
        .twbox_main { position: relative; min-height: 135px; }
        .twbox_page { overflow: hidden; z-index: 12; border: 1px solid #aaa; box-shadow: 0 0 8px rgba(0,0,0,0.2); border-radius: 5px; min-width: 300px; background-color: #eaeaea; }
        .dialog_head { background-color: #eaeaea; padding: 5px 15px; line-height: 25px; font-weight: bold; border-radius: 5px 5px 0 0; border-bottom: 1px solid #ccc; min-height: 25px; }
        .dialog_content { background-color: #fff; }
        .icon_info_alert { background: url(../../images/msg.png) no-repeat -64px 0; }
        .dialog_icon { float: left; margin: 15px 20px; width: 32px; height: 32px; }
        .cnfx_content { padding: 20px; text-align: left; }
        .dialog_operate { background-color: #eaeaea; padding: 5px 12px; text-align: right; line-height: 25px; border-top: 1px solid #ccc; }

        .btn_gray { display: inline-block; height: 22px; min-width: 24px; line-height: 22px; line-height: 23px; font-family: Simsun\9; _overflow-y: hidden; padding: 0 12px; margin: 0; text-align: center; text-decoration: none; vertical-align: middle; cursor: default; -moz-user-select: none; -webkit-user-select: none; border-radius: 3px; border-radius: 0\9\0; }
        .btn_gray { border: 1px solid #888; color: #000; color: #000 !important; background: #f3f3f3; background: -moz-linear-gradient(top,#fff 0,#ebebeb 90%,#f3f3f3 100%); background: -webkit-linear-gradient(top,#fff 0,#ebebeb 90%,#f3f3f3 100%); background: -o-linear-gradient(top,#fff 0,#ebebeb 90%,#f3f3f3 100%); background: -ms-linear-gradient(top,#fff 0,#ebebeb 90%,#f3f3f3 100%); filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff',endColorstr='#d7d7d7',GradientType=0); background: linear-gradient(top,#fff 0,#ebebeb 90%,#f3f3f3 100%); font-family: "lucida Grande",Verdana; margin: 0 0 1px 3px; text-decoration: none; cursor: pointer; }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div id="twbox_shade" class="twbox_shade" style="z-index: 987; background-color: #000; opacity: 0.3; filter: alpha(opacity=30);"></div>

        <div style="z-index: 999; width: 302px; height: auto; top: 145px; margin-left: -151px;" id="twbox_layer" class="twbox_layer">
            <div style="z-index: 19891016; height: 133px;" class="twbox_main">
                <div class="twbox_page">

                    <div class="dialog_head">
                        <span>标题：</span>
                        <a title="关闭" class="ico_close_d" href="javascript:;"></a>
                    </div>

                    <div class="dialog_content">
                        <span class="dialog_icon icon_info_alert"></span>
                        <div class="cnfx_content">
                        </div>

                    </div>
                    <div class="dialog_operate">
                        <div class=" txt_right cnfx_btn">
                            <a class="btn_gray confirm wd2" href="javascript:;">好的</a>
                        </div>
                        <div class="clr"></div>
                    </div>
                </div>
                <span class="xubox_botton"></span>
            </div>
        </div>
        <div>
            观音山自然保护区：面积29.3平方公里，从山脚仰望观音山，林木茂盛，群峰参差，色彩多样，有碧翠、有胭红、有紫霭。主峰亚婆髻海拔达1219米，云烟笼罩，充满神秘色彩。山中最宏壮的景观是“龙潭飞瀑”，。被称为佛冈“黄果树瀑布”，瀑布下是一个水潭，潭中碧水清凉，潭边乱石丛生，名曰“龙潭” 。是进行登山、溯溪、溪降的绝好地点。 
【线路特色】佛冈观音山是一处绝对可以让你找回童年的地方。最有意思的是溯溪：双足浸于溪流中，逆流而上，沿途要穿越灌木草丛、攀爬岩石或趟水浮游，将攀岩、定向越野、游泳等运动结合运用，极具挑战性，特别适合青年人参加。 
【溯溪观音山6大理由】 
1、凉爽：据说佛冈观音山自然保护区每立方米空气含保健、杀菌负离子３００到２０００个之多，林区内空气清新，是“森林浴”的好场所。 
2、健康：溯溪过程随溪流进入森林腹地，沿途要穿越灌木草丛、攀爬岩石或趟水，能锻炼身体和培养意志力。 
3、景观好：观音山有美丽的自然景观，山上树高林密，溪水清澈，物种丰富，山中有潭有瀑，绝不会有单调感。 
4、行程短：佛冈距广州和佛山不过100多公里，两个多小时就可到达，加上溯溪三四个小时，一天之内就可完成行程。且花费便宜。 
5、难易相当：观音山溯溪难易适中，地形不太险恶又不失野趣，既不会使悠游族狼狈不堪，也不至让溯溪高手“溯”之无味。 

活动QQ群：梦行者 群号190384508 
领队：奋青 QQ 124188559 电话：13509090935 微信longquan0322 
【活动行程安排】 
【线路安排】 
            <input type="button" id="btn_test" class="btn_gray" value="确认" />
        </div>
        <script>
            var palert = function (msg) {
                var def = $.Deferred();
                $("#twbox_shade").show();
                $(".cnfx_content").text(msg);
                $("#twbox_layer").show();

                $(document).on("click", ".confirm", function () {
                    close(); def.resolve();
                })
                return def.promise();
            };
            var close = function () {
                $("#twbox_shade").hide();
                $("#twbox_layer").hide();
            }
            $("#btn_test").click(function () {
                //$.tw.twalert();
                palert("你好！你点击了按钮！").done(function () {
                    palert("你好 你正在关闭");
                });
            });
        </script>
    </form>
</body>
</html>
