<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>发展历程</title>
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
                <h3 class="f24 fb text-66">关于我们</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav">公司简介</div>
                        <div class="subNav subnava">董事长致辞</div>
                        <div class="subNav">企业文化</div>
                        <div class="subNav">发展历程</div>
                        <div class="subNav">荣誉资质</div>
                        <div class="subNav">分支机构</div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15 relative">菏泽神州20MWP光伏发电项目正式开工动土 <span class="kaiyuan"><span>来源：柘城</span>&nbsp;&nbsp;<span>发布时间：2016-02-29 17：11：39</span></span></h3><br>
                    <div class="crightpp">
                        <p>     &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;2016年2月29日8点18分由北京国润天能能源控股有限公司承建的菏泽神州光伏发电项目正式开工动土，菏泽项目第一根管桩在朝阳温暖的阳光下，正式打桩成功！<br>
                            　　菏泽神州节能光伏发电项目于2014年6月26日由菏泽市发展和改革委员会文件核准建设，建设规模20MWp。<br>
                            　　公司对该工程高度重视，周密部署，做出了大量积极有效的筹备工作，逐一落实了项目开工所需的各项条件。开工仪式结束后，项目负责人将联系征地、基础开挖等相关事宜，争取加快推进工程进度。<br>
                            　　项目全体人员及参建单位将在公司的统一部署下，进行统筹规划，合理安排施工人员和机械，克服施工条件恶劣等困难，全力以赴完成工程建设目标，争取早日投产发电，为公司创造更大的经济效益。
                        </p><br>
                        <p class="text-center"><img src="images/slid4.jpg" alt=""/></p><br>
                        <p class="text-center"><img src="images/slid4.jpg" alt=""/></p>

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