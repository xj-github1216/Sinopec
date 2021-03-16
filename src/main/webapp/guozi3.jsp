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
                        <p>     &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 本报讯 近日，国务院国资委启动国有重点企业对标世界一流管理提升行动，对加强管理体系和管理能力建设作出部署。各企业认真落实国资委会议要求，迅速组织开展对标提升行动。截至8月20日，中国石化、三峡集团、国机集团等67户中央企业召开集团对标提升行动动员部署会议，扎实推进对标提升行动全面覆盖、层层落地<br>
                            　　6月13日，国资委正式印发《关于开展对标世界一流管理提升行动的通知》，对国有重点企业开展对标提升行动作出部署。<br>
                            　　国资委提出，要综合分析世界一流企业的优秀实践，深入查找企业管理的薄弱环节，持续加强企业管理的制度体系、组织体系、责任体系、执行体系、评价体系等建设，全面提升管理能力和水平，具体包括战略管理、组织管理、运营管理、财务管理、科技管理、风险管理、人力资源管理、信息化管理等8个方面。对标提升行动要坚持一企一策、一行一策，聚焦管理薄弱环节，制定对标提升行动实施方案和对标提升工作清单，有序推进实施。国资委将通过视频会议、现场研讨、调研督导等方式，推荐优秀企业管理成果和经验，促进相互交流和借鉴。<br>
                            　　 国资委要求，下一步，各地国资委和中央企业要认真落实党中央、国务院决策部署，按照《通知》要求，强化目标引领，强化精准对标，强化能力建设，强化体系建设，尽快补齐短板和弱项，有效增强竞争实力，促进国有资产保值增值，推动国有资本和国有企业做强做优做大。<br>
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