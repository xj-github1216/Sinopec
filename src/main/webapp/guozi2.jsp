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
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15 relative">始终把防风险遏事故作为第一要务 <span class="kaiyuan"><span>来源：中国石化报</span>&nbsp;&nbsp;<span>发布时间：2021-03-05</span></span></h3><br>
                    <div class="crightpp">
                        <p>     &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 本报讯 12月24日至25日，国务院国资委在京召开中央企业负责人会议，强调要全面贯彻习近平总书记关于国资国企改革发展和党的建设重要论述，坚持稳中求进工作总基调，以推动高质量发展为主题，以深化供给侧结构性改革为主线，深化国资国企改革，强化创新驱动发展，优化调整布局结构，健全国资监管体制，防范化解重大风险，提升党的建设质量，坚定不移做强做优做大国有资本和国有企业，乘势而上开启“十四五”奋斗新征程。<br>
                            　　会议指出，“十四五”时期，要紧密围绕党的十九届五中全会擘画的宏伟蓝图，努力推动国资央企高质量发展迈上新台阶，科技自立自强展现新作为，国有经济布局实现新优化，国资国企改革取得新突破，党的领导党的建设得到新加强。<br>
                            　　会议强调，中央企业做好2021年工作，要保持战略定力，坚持系统观念，突出高质量发展，紧紧围绕构建新发展格局来谋划、来推动。要全面贯彻新时代党的建设总要求和新时代党的组织路线，围绕迎接建党100周年、全国国企党建会召开5周年，扎实开展“中央企业党建创新拓展年”，以高质量党建引领中央企业高质量发展。（据国务院国资委）<br>
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