<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>野外实验站</title>
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
                <h3 class="f24 fb text-66">工程项目</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav">工程实例</div>
                        <div class="subNav subnava">野外实验站</div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">野外实验站</h3><br>
                   <div class="yewai">
                       <div class="yewanlist">
                           <h3 class="f16 fb text-00 mb10">项目介绍</h3>
                           <p>
                               太阳能野外实验站是敦煌市新能源示范城市重点项目，经国家能源局批准，由敦煌市人民政府与北京国润天能能源控股有
                               限公司共同建设。实验站由短期光伏检测场、长期光伏检测场、太阳能热利用检测场、数据汇集中心以及绿色能源展厅五
                               个部分组成，项目总投资1.3亿元。
                           </p><br>
                           <p>
                               <img src="images/slid3.jpg" alt="" width="509" height="258"/>
                           </p>
                       </div>
                   </div>
                    <div class="yewai">
                        <div class="yewanlist">
                            <h3 class="f16 fb text-00 mb10">项目建设目的</h3>
                            <p>
                                实验检测：建立标准化的太阳能光伏及太阳能热利用相关产品野外检测体系。<br>
                                评估认证：成为国内首家开展太阳能产品野外检测的第三方机构。<br>
                                技术引进：引进新技术与新产品，推动我国太阳能技术多元化发展。<br>
                                教育培训：开展实验教学，普及太阳能知识，为国内培养太阳能人才。
                            </p><br>
                            <p>
                                <img src="images/slid3.jpg" alt="" width="509" height="258"/>
                            </p>
                        </div>
                    </div>
                    <div class="yewai">
                        <div class="yewanlist">
                            <h3 class="f16 fb text-00 mb10">项目的必要性</h3>
                            <p>
                                实验站采用科学的检测手段筛选出优质合格产品，并通过严格的质量要求和规范的评估方法，建立完善的太阳能野外测试
                                质量保障体系。太阳能野外实验站是保障太阳能产品质量和大规模发展应用的必要环节。
                            </p><br>
                            <p>
                                <img src="images/slid3.jpg" alt="" width="509" height="258"/>
                            </p>
                            <p>
                                <img src="images/slid4.jpg" alt="" width="504" height="372"/>
                            </p>
                        </div>
                    </div>
                    <div class="yewai">
                        <div class="yewanlist">
                            <h3 class="f16 fb text-00 mb10">项目建设内容</h3>
                            <p>
                                短期光伏检测场：<br>
                                气象观测、组件野外检测、组件加速老化检测、聚光太阳电池检测、独立光伏系统检测、户用光伏系统检测。<br><br>

                                长期光伏检测场：<br>
                                单晶、多晶、薄膜再固定、单轴跟踪、双轴跟踪一年以上的实验检测。<br><br>

                                太阳能热利用检测场：<br>
                                槽式太阳能集热管测试、单一回路槽式热发电系统测试、太阳能菲涅尔式发电系统测试、太阳能碟式热发电系统测试、其他新型太阳能热发电系统的野外检测。
                            </p><br>
                            <p>
                                <img src="images/slid3.jpg" alt="" width="509" height="258"/>
                            </p>
                            <p>
                                <img src="images/slid4.jpg" alt="" width="504" height="372"/>
                            </p>
                        </div>
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