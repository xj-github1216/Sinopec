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
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15 relative">加强防疫常态化条件下安全生产工作  <span class="kaiyuan"><span>来源：中国石化报</span>&nbsp;&nbsp;<span>发布时间：2021-03-05</span></span></h3><br>
                    <div class="crightpp">
                        <p>     &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 本报讯 近日，国务院安委会办公室、应急管理部发出通知，就加强疫情防控常态化条件下安全生产工作作出部署，要求各地区、各有关部门和单位要将习近平总书记近期关于安全生产的重要指示精神和李克强总理的批示要求，以及全国安全生产电视电话会议部署，及时传达到基层和各行业领域企业，抓紧抓实安全生产各项工作，坚决遏制重特大事故。 <br>
                            　　通知强调，要压紧压实企业安全生产主体责任，增强每一个企业特别是主要负责人抓安全生产的主动性和自觉性。对重点企业和不放心企业盯住不放，组织力量上门“开小灶”，分区分类、一企一策，严格监管。坚持线上线下相结合、执法与服务相结合，督促企业建立健全内部安全管理和技术团队，每一个关键环节都要落实人防技防措施，坚决杜绝漏管失控。 <br>
                            　　通知要求，在抓好涉疫场所、疫情防控物资生产企业安全服务的同时，加强重点行业领域安全精准治理，突出强化危化品、煤矿、非煤矿山、道路交通、建筑施工、城市运行等相关领域安全治理，对油气罐区、高风险矿井、“头顶库”、仓储设施、易燃易爆品堆场等要派人死看硬守。对问题隐患突出、风险大的地区和企业发出整改督办函，开展重点监管、异地交叉检查、“四不两直”明察暗访。围绕从根本上消除事故隐患，全面开展安全生产专项整治三年行动，着力完善安全生产责任链条、制度办法、重点工程和工作机制，健全公共安全隐患排查和安全预防控制体系。<br>
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