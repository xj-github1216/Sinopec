<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>人才招聘</title>
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
        .yewanlist p{
            color: #8b8b8b;
            line-height: 32px;
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
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">人才招聘</h3><br>
                    <div class="yewai">
                        <div class="yewanlist">
                            <h3 class="f16 fb text-00 mb10">岗位职责：</h3>
                            <p>
                                1、负责区域内电力市场供需信息的调研；<br>
                                2、负责区域内与电力建设相关的政府和行业主管部门公共关系的建立与维护；<br>
                                3、负责区域内项目前期开发与商务洽谈，和项目审批手续的办理；<br>
                                4、负责区域内项目建设过程中所需的地方关系协调。
                            </p>
                        </div>
                    </div>
                    <div class="yewai">
                        <div class="yewanlist">
                            <h3 class="f16 fb text-00 mb10">任职资格：</h3>
                            <p>
                                1、30岁以上，大专以上学历，年富力强，有较强的独立工作能力和公关能力；<br>
                                2、5年以上项目开发工作经历，独立承担过2个以上工程项目前期开发的经历，有电力工程项目开发经验或背景者优先；<br>
                                3、有项目资源、背景关系资源者优先；能适应长期出差或驻外。<br>
                                4、具有分布式开发经验者优先；具有当地政府关系者优先。
                            </p>
                        </div>
                    </div>

                    <a href="" class="yinping">点击应聘此职位</a>





                </div>
            </div>
        </div>

    </div><br><br>


    <!--content end-->
    <%@include file="tail.jsp"%>

</div>


</body>
</html>