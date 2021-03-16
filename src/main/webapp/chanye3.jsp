<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>产品与服务</title>
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <!--nav-->
    <script type="text/javascript" src="js/nav.js"></script>
    <!--slide-->
    <script type="text/javascript" src="js/slide.js"></script>
    <!--zleft-->
    <script type="text/javascript" src="js/zleft.js"></script>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="js/jquery.min.js"></script>
    <script src="js/iealert.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("body").iealert();
        });
    </script>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->


</head>
<body>


<div class="warrper">
    <%@include file="head.jsp"%>

    <!--slide-width-->
    <div class="slide1">
        <div class="slide-ul">
            <ul class="bxslider2">
                <li>
                    <a href=""><img src="images/2020banner01副本3.jpg" alt=""  title="城市预测"></a>
                </li>
                <li>
                    <a href=""><img src="images/2021banner01副本6.png" alt="" title="城市预测"></a>

                </li>
                <li>
                    <a href=""><img src="images/banner1.jpg" alt=""  title="城市预测"></a>

                </li>
            </ul>
            <div class="op_btns clearfix">
                <a href="#" class="op_btn op_prev"><span></span></a>
                <a href="#" class="op_btn op_next"><span></span></a>
            </div>
        </div><br>
    </div>
    <script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>
    <script type="text/javascript">
        (function(){
            $(".bxslider2").bxSlider({
                auto:true,
                captions: true,
                prevSelector:$(".slide-ul .op_prev")[0],nextSelector:$(".slide-ul .op_next")[0]
            });
        })();
    </script>
    <!--slide end-->
    <!--slide-width end-->
    <!--content-->

    <%--设置锚点--%>
    <a name="anchorName"></a>

    <div class="content">
        <div class="w1200">
             <div class="chanye clearFloat">
                 <h3 class="f24 fb text-66">产品与服务</h3><br>
                 <div class="cleft floatLeft">
                     <div class="cznav">
                         <div class="subNav">技术许可</div>
                         <div class="navContent plr15">
                             <a href="chanye1.jsp#anchorName">油品</a>
                             <a href="chanye2.jsp#anchorName">化工</a>
                         </div>
                         <div class="subNav">设计与规划</div>
                         <div class="navContent plr15" style="display: none">
                             <a href="chanye3.jsp#anchorName"  class="nactive">成品油</a>
                             <a href="chanye4.jsp#anchorName">加油卡</a>
                             <a href="chanye5.jsp#anchorName">加油站</a>
                         </div>
                         <div class="subNav">煤气层</div>
                         <div class="navContent plr15" style="display: none">
                             <a href="">项目介绍</a>
                         </div>
                         <div class="subNav">金融产业</div>
                         <div class="navContent plr15" style="display: none">
                             <a href="">项目介绍</a>
                         </div>
                     </div>
                 </div>
                 <div class="cright floatRight">
                     <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">化工</h3><br>
                     <div class="crightp">
                         <p class=" text-center">

                             <table class="txt-gra-12" width="100%" cellspacing="1" cellpadding="2" bgcolor="#bad6e2" align="center" style="border-width:1px;">
                                 <tbody>
                                 <tr>
                                     <td width="250" bgcolor="#ffffff">
                         <p>
                             车型
                         </p>
                         </td>
                         <td width="84" bgcolor="#ffffff">
                             <p>
                                 压缩比
                             </p>
                         </td>
                         <td width="204" bgcolor="#ffffff">
                             <p>
                                 推荐汽油标号
                             </p>
                         </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽红旗明仕1.8
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽红旗世纪星 2.0 / 2.4
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽马自达2.3
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.6
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽夏利7101/7131/2000
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.3-9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽威姿1.0 /1.3
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.0/9.3
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽-大众捷达普通/CI／CT／AT
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     8.5-9.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽-大众宝来1.6/1.8/1.8T
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.3-10.3
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽-大众高尔夫1.6/2.0
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     一汽-大众奥迪A4/ A6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.0/10.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     上海大众桑塔纳普通/2000
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.0/9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     上海大众帕萨特 1.8/1.8T
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.3/ 9.3
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     上海大众帕萨特2.0/2.8
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.3/10.1
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     上海大众POLO1.4/1.6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.4/10.3
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     上海大众高尔1.6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     上海别克赛欧1.6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.4
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     上海别克君威2.0/2.5/3.0
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     东风蓝鸟2.0/阳光2.0
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5/9.8
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     东风毕加索 1.6/2.0
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     东风爱丽舍 1.6/爱丽舍 VTS1.6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.6/10.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     东风塞纳 2.0
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.8
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     东风千里马1.6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.8
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     神龙富康1.4/1.6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.3/9.6
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     上海奇瑞1.6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     天津丰田威驰1.3/1.5
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.3/9.8
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     北京吉普2500
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     8.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     现代索娜塔2.0/2.7
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.1/10.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     长安福特嘉年华1.3/1.6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.2 / 9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     菲亚特西耶那1.3 16V/1.5
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.6/10.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     菲亚特派力奥1.3 16V/1.5
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.6/10.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     菲亚特周末风1.3 16V/1.5
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.6/10.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     广州本田98款雅阁2.0/2.3/3.0
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.1/8.9/9.4
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     广州本田03款雅阁2.0/2.4/3.0
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.8/9.7/10.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     广州本田奥德赛2.3
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     吉利美日1.3／优利欧&gt;1.3
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.3
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     长安铃木奥拓0.8/ 羚羊1.0/1.3
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.4 / 9.0/9.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     昌河铃木北斗星CH6350B
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.3
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     华晨中华2.0/2.4
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5/9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     哈飞赛马1.3
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     海南马自达普利马/323/福美来
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.1 / 9.3 / 9.1
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     宝马 3、5、7系列
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.8/10.8/10.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     大宇 王子 2.0 / 蓝龙 1.5
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     8.8/9.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     本田 思域 1.6 / 里程 3.5
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.4/9.6
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     日产 风度 2.0/3.0
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.5/10
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     丰田 凌志IS200/GS300/LS430
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10/10.5/10.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     丰田 世纪/皇冠
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     8.6/10.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     丰田 花冠1.6/佳美2.2GL/2.4
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.5/9.8
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     奔驰 E280／E320
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.0
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     沃尔沃 S40
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.3
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     不低于93
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     福特&nbsp;&nbsp;&nbsp; WINDSTAR V6/TAURUS V6
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.0/9.3
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     林肯&nbsp;&nbsp;&nbsp; 大陆 V8/马克 V8
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     9.0/9.8
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     93-97
                                 </p>
                             </td>
                         </tr>
                         <tr>
                             <td width="256" bgcolor="#ffffff">
                                 <p>
                                     欧宝&nbsp;&nbsp;&nbsp;&nbsp; 1.8
                                 </p>
                             </td>
                             <td width="84" bgcolor="#ffffff">
                                 <p>
                                     10.5
                                 </p>
                             </td>
                             <td width="204" bgcolor="#ffffff">
                                 <p>
                                     97
                                 </p>
                             </td>
                         </tr>
                         </tbody>
                         </table>

                         </p>
                     </div>


                 </div>
             </div>
        </div>

    </div><br><br>


    <!--content end-->
    <%@include file="tail.jsp"%>

</div>


</body>
</html>