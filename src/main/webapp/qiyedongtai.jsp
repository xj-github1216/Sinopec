<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>新闻资讯</title>
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
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">企业动态</h3><br>
                    <div class="newul">
                        <ul>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">海南石油非油销售量效创新高</h3>
                                    <span class="display f12 line-height-28 text-969696">2021年03月05日</span>
                                    <span class="f14 line-height-28 text-64">
                                         今年以来，海南石油抓住元旦、春节销售契机，大力开展年货节商品进社区、客户答谢会、大宗团购等营销活动，非油基础品类销售额同比增长75%，其中1月销售额创单月新高，效益同比大幅增长。
                                    </span>
                                    <br><br>
                                    <a href="qiye1.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">扬子石化超计划完成炼油生产任务</h3>
                                    <span class="display f12 line-height-28 text-969696">2021年03月05日</span>
                                    <span class="f14 line-height-28 text-64">
                                        今年以来，扬子石化紧盯市场变化，以稳运行、降成本、强优化为目标，提升炼油绩效。1月至2月，汽油、柴油、航煤、丙烯、沥青等生产任务均超计划完成，为实现全年目标打下坚实基础。                                   </span>
                                    <br><br>
                                    <a href="qiye2.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">湛江石油油品零售完成率居首位 </h3>
                                    <span class="display f12 line-height-28 text-969696">2021年03月05日</span>
                                    <span class="f14 line-height-28 text-64">
                                         2月，广东湛江石油以提升进站率、通过率、加满率、回头率、满意率为抓手，坚持以客户为中心，在硬件、管理、服务等方面持续做好员工培训，为提量增效打好基础。2月油品零售完成率超过150%，在广东石油排名第一。
                                    </span>
                                    <br><br>
                                    <a href="qiye3.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">湖北化肥合成氨装置开出新水平</h3>
                                    <span class="display f12 line-height-28 text-969696">2020年11月06日 12:14</span>
                                    <span class="f14 line-height-28 text-64">
                                        2020年，湖北化肥通过严格工艺管控、实施技术改造、深度优化调整等措施，挖掘合成氨装置潜力，使投运42年的老装置开出新水平，合成氨日产量连创新高，比上年增产39%，多项经济技术指标创最好水平。今年前两个月，合成氨装置运行水平稳中向好。
                                    </span>
                                    <br><br>
                                    <a href="qiye4.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">销售西北助塔河炼化降库存 </h3>
                                    <span class="display f12 line-height-28 text-969696">2020年09月29日 11:14</span>
                                    <span class="f14 line-height-28 text-64">
                                         销售西北分公司多措并举保障塔河炼化淡季生产后路畅通，2月计划完成率超100%，助力炼厂成品油库存稳定在合理水平。
                                    </span>
                                    <br><br>
                                    <a href="qiye5.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>

                        </ul>
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