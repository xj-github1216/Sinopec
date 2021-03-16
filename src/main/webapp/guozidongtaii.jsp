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
                        <div class="subNav"><a href="qiyedongtai.jsp#anchorName">企业动态</a></div>
                        <div class="subNav subnava"><a href="guozidongtaii.jsp#anchorName">国资动态</a></div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">国资动态</h3><br>
                    <div class="newul">
                        <ul>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">始终把防风险遏事故作为第一要务</h3>
                                    <span class="display f12 line-height-28 text-969696">2021年03月05日</span>
                                    <span class="f14 line-height-28 text-64">
                                         2月17日，国务院安委办、应急管理部召开视频调度会，总结春节假期安全防范工作情况，分析当前安全形势和突出问题，部署节后安全防范重点工作。
                                    </span>
                                    <br><br>
                                    <a href="guozi1.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">坚定不移做强做优做大国资国企</h3>
                                    <span class="display f12 line-height-28 text-969696">2021年03月05日</span>
                                    <span class="f14 line-height-28 text-64">
                                        12月24日至25日，国务院国资委在京召开中央企业负责人会议，强调要全面贯彻习近平总书记关于国资国企改革发展和党的建设重要论述，坚持稳中求进工作总基调，以推动高质量发展为主题，以深化供给侧结构性改革为主线，深化国资国企改革，强化创新驱动发展，优化调整布局结构，健全国资监管体制，防范化解重大风险，提升党的建设质量，坚定不移做强做优做大国有资本和国有企业，乘势而上开启“十四五”奋斗新征程。                                   </span>
                                    <br><br>
                                    <a href="guozi2.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">国资委推进国有重点企业对标世界一流管理提升行动  </h3>
                                    <span class="display f12 line-height-28 text-969696">2021年03月05日</span>
                                    <span class="f14 line-height-28 text-64">
                                         近日，国务院国资委启动国有重点企业对标世界一流管理提升行动，对加强管理体系和管理能力建设作出部署。各企业认真落实国资委会议要求，迅速组织开展对标提升行动。截至8月20日，中国石化、三峡集团、国机集团等67户中央企业召开集团对标提升行动动员部署会议，扎实推进对标提升行动全面覆盖、层层落地。
                                    </span>
                                    <br><br>
                                    <a href="guozi3.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">国务院国资委明确下半年重点工作</h3>
                                    <span class="display f12 line-height-28 text-969696">2020年11月06日 12:14</span>
                                    <span class="f14 line-height-28 text-64">
                                        日前，国务院国资委党委书记、主任郝鹏接受采访时表示，上半年中央企业充分发挥了压舱石、主力军作用，经济运行好于预期，指标逐月修复，有效投资加速，社会责任彰显，下半年要突出抓好五方面重点工作，力争绝大多数中央企业效益持续较快增长、力争中央企业总体效益实现正增长，努力把损失补回来。
                                    </span>
                                    <br><br>
                                    <a href="guozi4.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <h3 class="f18 text-3c pt15">加强防疫常态化条件下安全生产工作  </h3>
                                    <span class="display f12 line-height-28 text-969696">2020年09月29日 11:14</span>
                                    <span class="f14 line-height-28 text-64">
                                         近日，国务院安委会办公室、应急管理部发出通知，就加强疫情防控常态化条件下安全生产工作作出部署，要求各地区、各有关部门和单位要将习近平总书记近期关于安全生产的重要指示精神和李克强总理的批示要求，以及全国安全生产电视电话会议部署，及时传达到基层和各行业领域企业，抓紧抓实安全生产各项工作，坚决遏制重特大事故。
                                    </span>
                                    <br><br>
                                    <a href="guozi5.jsp#anchorName" class="xqy">详 情</a>
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