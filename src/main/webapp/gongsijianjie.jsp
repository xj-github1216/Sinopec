<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>关于我们</title>
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
    <a name="anchorName1"></a>

    <div class="content">
        <div class="w1200">
            <div class="chanye clearFloat">
                <h3 class="f24 fb text-66">关于我们</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav subnava"><a href="gongsijianjie.jsp#anchorName1">公司简介</a></div>
                        <div class="subNav"><a href="dongshizhang.jsp#anchorName2">董事长致辞</a></div>
                        <div class="subNav"><a href="qiyewenhua.jsp#anchorName3">企业文化</a></div>
                        <div class="subNav"><a href="fazhan.jsp#anchorName4">发展历程</a></div>
                        <div class="subNav"><a href="rongyuzizhi.jsp#anchorName5">荣誉资质</a></div>
                        <div class="subNav"><a href="fenzhijiegou.jsp#anchorName6">分支机构</a></div>
                     </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">公司简介</h3><br>
                    <div class="crightp">
                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>中国石油化工集团有限公司</b>（以下简称公司）的前身是成立于1983年7月的中国石油化工总公司。1998年7月，按照党中央关于实施石油石化行业战略性重组的部署，在原中国石油化工总公司基础上重组成立中国石油化工集团公司，2018年8月，经公司制改制为中国石油化工集团有限公司。公司是特大型石油石化企业集团，注册资本3265亿元人民币，董事长为法定代表人，总部设在北京。公司对其全资企业、控股企业、参股企业的有关国有资产行使资产受益、重大决策和选择管理者等出资人的权力，对国有资产依法进行经营、管理和监督，并相应承担保值增值责任。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司主营业务范围包括：实业投资及投资管理；石油、天然气的勘探、开采、储运（含管道运输）、销售和综合利用；煤炭生产、销售、储存、运输；石油炼制；成品油储存、运输、批发和零售；石油化工、天然气化工、煤化工及其他化工产品的生产、销售、储存、运输；新能源、地热等能源产品的生产、销售、储存、运输；石油石化工程的勘探、设计、咨询、施工、安装；石油石化设备检修、维修；机电设备研发、制造与销售；电力、蒸汽、水务和工业气体的生产销售；技术、电子商务及信息、替代能源产品的研究、开发、应用、咨询服务；自营和代理有关商品和技术的进出口；对外工程承包、招标采购、劳务输出；国际化仓储与物流业务等。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，公司是中国最大的成品油和石化产品供应商、第二大油气生产商，是世界第一大炼油公司、第三大化工公司，加油站总数位居世界第二，在2019年《财富》世界500强企业中排名第2位。 <br><br>
                        </p>
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