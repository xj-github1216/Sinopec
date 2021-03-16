<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>光伏产品内页</title>
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <!--nav-->
    <script type="text/javascript" src="js/nav.js"></script>
    <!--slide-->
    <script type="text/javascript" src="js/slide.js"></script>


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

    <style>
        .cznav{
            background: #f5f5f5;
        }
        .subNav{
            background: none;
            color: #8b8b8b;
        }
        .subnava{
            background: url("images/inrt4.png") no-repeat;
            color: #fff;
        }
        .subNav:hover{
            background: url("images/inrt4.png") no-repeat;
            color: #fff;
        }
        .top_slide_wrap{
            height: 200px;
            overflow:visible;
            border: 2px solid #d8d8d8;
        }
        .slide_box li{
            height: 200px;
        }

        .top_slide_wrap .op_btns{
            width: 260px;
        }
        .top_slide_wrap .op_btns .op_btn{
            margin-top: -119px;
        }
        .top_slide_wrap .bx-wrapper .bx-caption{
            display: none;
        }
       .top_slide_wrap  .op_btns .op_prev{
            left: -45px;
           background: url("images/share1.png") no-repeat;
        }
        .top_slide_wrap  .op_btns .op_next{
            background: url("images/share2.png") no-repeat;
            right: -46px;
        }
        .top_slide_wrap .slide_box img{
            height: 200px;
        }
    </style>
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
    <div class="content">
        <div class="w1200">
            <div class="chanye clearFloat">
                <h3 class="f24 fb text-66">工程项目</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav">工程实例</div>
                        <div class="subNav subnava">野外实验站</div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">野外实验站</h3><br>
                    <div class="crightp">
                        <div class="gfchan">
                            <!--top_slide_wrap-->
                            <div class="top_slide_wrap">
                                <ul class="slide_box bxslider">
                                    <li>
                                        <a href=""><img src="images/innew.jpg" alt=""  title="城市预测"></a>
                                    </li>
                                    <li>
                                        <a href=""><img src="images/innew.jpg" alt="" title="城市预测"></a>
                                    </li>
                                    <li>
                                        <a href=""><img src="images/innew.jpg" alt=""  title="城市预测"></a>
                                    </li>
                                </ul>
                                <div class="op_btns clearfix">
                                    <div>
                                        <a href="#" class="op_btn op_prev"><span></span></a>
                                        <a href="#" class="op_btn op_next"><span></span></a>
                                    </div>

                                </div>
                            </div>
                            <script type="text/javascript">
                                (function(){
                                    $(".bxslider").bxSlider({
                                        auto:true,
                                        captions: true,
                                        prevSelector:$(".top_slide_wrap .op_prev")[0],nextSelector:$(".top_slide_wrap .op_next")[0]
                                    });
                                })();
                            </script><br><br>
                            <!--top_slide_wrap end-->
                        </div><br>
                        <p>
                            单晶硅太阳能电池的光电转换效率为17%左右，最高的达到24%，是所有种类的太阳能电池中光电转换效率最高的。
                            单晶硅一般采用钢化玻璃以及防水树脂进行封装，因此其坚固耐用。
                        </p>
                    </div>
                <br><br>
                </div>
            </div>
        </div>

    </div><br><br>


    <!--content end-->
    <%@include file="tail.jsp"%>

</div>


</body>
</html>