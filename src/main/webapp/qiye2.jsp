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

    <%--设置锚点--%>
    <a name="anchorName"></a>

    <div class="content">
        <div class="w1200">
            <div class="chanye clearFloat">
                <h3 class="f24 fb text-66">新闻中心</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav"><a href="gongsiyaowen.jsp#anchorName">公司要闻</a></div>
                        <div class="subNav subnava"><a href="qiyedongtai.jsp#anchorName">企业动态</a></div>
                        <div class="subNav"><a href="guozidongtaii.jsp#anchorName">国资动态</a></div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15 relative">扬子石化超计划完成炼油生产任务 <span class="kaiyuan"><span>来源：中国石化报</span>&nbsp;&nbsp;<span>发布时间：2021-03-05</span></span></h3><br>
                    <div class="crightpp">
                        <p>     &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 本报讯 今年以来，扬子石化紧盯市场变化，以稳运行、降成本、强优化为目标，提升炼油绩效。1月至2月，汽油、柴油、航煤、丙烯、沥青等生产任务均超计划完成，为实现全年目标打下坚实基础。<br>
                            　　扬子石化加大形势任务教育力度，围绕全年奋斗目标和重点工作讲清形势、讲明任务，引导干部员工抓好持续攻坚创效措施，做好层层分解和落实。牢固树立平稳运行是创效增效基础的理念，在炼油厂持续开展平稳率竞赛，加大非计划停工管理及考核力度，提高全专业不间断巡检、工艺标准化管理、质量全过程管控、设备完整性管理等工作的有效性，规范预警处置、原因调查和结果考核，尽最大努力避免异常发生。<br>
                            　　在此基础上，他们积极开展技术攻关，全力强优化增效益。一方面，优化原油品种，控制低性价比原油加工比例，提高高性价比原油加工量，控制炼油加工损失。另一方面，优化原油加工路线，全力增产高附加值产品。在沥青生产方面，抓住市场持续向好机遇，努力提高沥青产销量，创效数百万元。在汽油、柴油、液化气和丙烯生产方面，紧盯价格走势，动态优化调整丙烯和液化气收率，通过表单化、全员化管理措施，提指标增效益，超计划完成生产任务。<br>
                            　　扬子石化坚持一切成本皆可控、一切费用皆可降，发动党员带头从小处着手，将降本减费措施落实到生产中。以比学赶帮超和对标管理激发动力，将主要装置关键技术经济指标与炼化企业同类型装置对比，严格落实节能降耗措施，提升指标促进效益最大化。抓实火炬气排放与回收管控，各装置火炬排放点监控全覆盖，通过日统计、周回顾、月评比，促进火炬气回收量增加。（陶 炎 周晓琪）<br>
                        </p><br>
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