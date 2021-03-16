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
                        <div class="subNav"><a href="qiyedongtai.jsp#anchorName">企业动态</a></div>
                        <div class="subNav subnava"><a href="qiyedongtai.jsp#anchorName">国资动态</a></div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15 relative">国务院国资委明确下半年重点工作<span class="kaiyuan"><span>来源：中国石化报</span>&nbsp;&nbsp;<span>发布时间：2021-03-05</span></span></h3><br>
                    <div class="crightpp">
                        <p>     &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 本报讯 日前，国务院国资委党委书记、主任郝鹏接受采访时表示，上半年中央企业充分发挥了压舱石、主力军作用，经济运行好于预期，指标逐月修复，有效投资加速，社会责任彰显，下半年要突出抓好五方面重点工作，力争绝大多数中央企业效益持续较快增长、力争中央企业总体效益实现正增长，努力把损失补回来。<br>
                            　　一是突出抓好提质增效稳增长。组织中央企业开展提质增效专项行动，抢抓扩大内需的机遇开拓市场，主动对接国家重大区域发展战略和地方投资建设需求，提升管理效益，加大非生产性成本费用压降力度，加快清理低效无效资产和非主业、非优势业务。<br>
                            　　二是突出抓好企业改革落实落地。以实施国企改革三年行动方案为重要抓手，在完善中国特色现代企业制度、健全市场化经营机制、深化混合所有制改革等方面发力攻坚，切实提升改革综合成效。<br>
                            　　三是突出抓好关键核心技术攻关。加强与各方面协同创新，努力在卡脖子问题上尽快取得更多突破性进展，增强产业链供应链的稳定性和竞争力。<br>
                            　　四是突出抓好国有资本布局优化和结构调整。编制好“十四五”规划，在聚焦主业实业上持续发力，加快5G等新产业布局和“两新一重”建设，稳步推进战略性重组和专业化整合，提高资源资本配置效率。<br>
                            　　五是突出抓好重大风险防范化解。健全防控机制，深入摸排和整治各类风险隐患，力求标本兼治，把风险化解在源头、消灭在萌芽，坚决守住不发生重大风险的底线。（据人民日报）   <br>
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