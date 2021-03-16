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
                        <div class="subNav subnava"><a href="gongsiyaowen.jsp#anchorName">公司要闻</a></div>
                        <div class="subNav"><a href="qiyedongtai.jsp#anchorName">企业动态</a></div>
                        <div class="subNav"><a href="qiyedongtai.jsp#anchorName">国资动态</a></div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">公司要闻</h3><br>
                    <div class="newul">
                        <ul>
                            <li>
                                <div class="clearFloat">
                                    <img src="images/new1.jpg" alt="" width="281" height="250" class="floatLeft mr40"/>
                                    <h3 class="f18 text-3c pt15">张玉卓到集团公司驻河北企业调研</h3>
                                    <span class="display f12 line-height-28 text-969696">2016年3月12日 11:14</span>
                                    <span class="f14 line-height-28 text-64">
                                         12月10日，集团公司董事长、党组书记张玉卓到公司驻河北企业调研，深入石家庄炼化、新星公司生产一线和装置现场，了解生产经营、安全环保、党的建设等工作情况，看望慰问干部员工，强调要深入学习贯彻党的十九届五中全会精神，准确把握新发展阶段、新发展理念、新发展格局的丰富内涵和实践要求，按照党组决策部署，自觉担当使命，积极推进转型升级、千方百计降本增效，努力创造更好经营业绩...
                                    </span>
                                    <br><br>
                                    <a href="yaowen1.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <img src="images/new2.jpg" alt="" width="281" height="250" class="floatLeft mr40"/>
                                    <h3 class="f18 text-3c pt15">张玉卓到集团公司驻陕西内蒙古企业调研</h3>
                                    <span class="display f12 line-height-28 text-969696">2020年12月10日 11:14</span>
                                    <span class="f14 line-height-28 text-64">
                                        12月8日~9日，集团公司董事长、党组书记张玉卓到公司驻陕西、内蒙古企业调研，深入陕西石油、新星公司、华北油气、中天合创、内蒙古石油生产一线和装置现场，了解生产经营、安全环保、党的建设情况和“十四五”发展规划，看望慰问干部员工，强调以习近平新时代中国特色社会主义思想为指导，深入学习贯彻党的十九届五中全会精神，认真落实党组部署，以奋进姿态全力以赴打好提质增效进攻仗，确保全面完成全年目标任务...                                    </span>
                                    <br><br>
                                    <a href="yaowen2.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <img src="images/new3.jpg" alt="" width="281" height="250" class="floatLeft mr40"/>
                                    <h3 class="f18 text-3c pt15">中国石化与华为技术有限公司签署战略合作协议 </h3>
                                    <span class="display f12 line-height-28 text-969696">2020年11月10日</span>
                                    <span class="f14 line-height-28 text-64">
                                        11月9日，中国石化与华为技术有限公司战略合作协议签约仪式在京举行。集团公司董事长张玉卓、总经理马永生，华为技术有限公司轮值董事长徐直军见证签约仪式并举行会谈。集团公司党组副书记赵东、副总经理李永林，华为技术有限公司企业业务副总裁、全球能源业务部部长孙福友参加。集团公司副总经理喻宝才与华为技术有限公司高级副总裁、中国地区部总裁鲁勇代表双方签署战略合作协议。
                                    </span>
                                    <br><br>
                                    <a href="yaowen3.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <img src="images/new4.jpg" alt="" width="281" height="250" class="floatLeft mr40"/>
                                    <h3 class="f18 text-3c pt15">张玉卓到公司驻沪部分企业调研</h3>
                                    <span class="display f12 line-height-28 text-969696">2020年11月06日 12:14</span>
                                    <span class="f14 line-height-28 text-64">
                                        11月4日~5日，集团公司董事长、党组书记张玉卓到上海海洋石油局、高桥石化、上海研究院、上海工程公司、赛诺佩克等部分驻沪企业调研，看望慰问一线员工，察看生产和科研现场，听取工作汇报，要求认真学习贯彻十九届五中全会精神，切实践行新发展理念，在构建“一基两翼三新”发展格局、打造世界领先洁净能源化工公司中作出新的更大贡献。
                                    </span>
                                    <br><br>
                                    <a href="yaowen4.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <img src="images/new5.jpg" alt="" width="281" height="250" class="floatLeft mr40"/>
                                    <h3 class="f18 text-3c pt15">古雷炼化一体化项目首套装置中交 </h3>
                                    <span class="display f12 line-height-28 text-969696">2020年09月29日 11:14</span>
                                    <span class="f14 line-height-28 text-64">
                                         9月28日，古雷炼化一体化项目首套工艺装置35万吨/年聚丙烯装置，如期顺利中交，标志着古雷炼化一体化项目全面进入装置中交的冲刺阶段。
                                    </span>
                                    <br><br>
                                    <a href="yaowen5.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <img src="images/new6.jpg" alt="" width="281" height="250" class="floatLeft mr40"/>
                                    <h3 class="f18 text-3c pt15">总书记，我考上大学了！</h3>
                                    <span class="display f12 line-height-28 text-969696">2020年09月24日 12:14</span>
                                    <span class="f14 line-height-28 text-64">
                                        2013年2月3日，习近平总书记沿着陡峭的山路，来到山大沟深的甘肃省临夏回族自治州东乡族自治县布楞沟村看望贫困群众，在村民马麦志家的土炕上与其家人亲切交谈。他叮嘱马麦志11岁的儿子马建忠一定要好好学习，长大后为国家献出一分力量。
                                    </span>
                                    <br><br>
                                    <a href="yaowen6.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <img src="images/new7.jpg" alt="" width="281" height="250" class="floatLeft mr40"/>
                                    <h3 class="f18 text-3c pt15">国内最大举升载荷带压作业装置面世</h3>
                                    <span class="display f12 line-height-28 text-969696">2020年09月24日 11:14</span>
                                    <span class="f14 line-height-28 text-64">
                                        9月21日，随着石化机械自主研制的225吨带压作业装置运抵涪陵页岩气田开展工业试验，国内最大举升载荷带压作业装置面世。225吨带压作业装置是“十三五”国家科技重大专项《深层页岩气开发关键装备及工具研制》取得的一项重要成果，整机最大举升载荷225吨，最大下压载荷110吨，可满足深层页岩气开发对带压设备作业能力及安全可靠性的特殊要求。
                                    </span>
                                    <br><br>
                                    <a href="yaowen7.jsp#anchorName" class="xqy">详 情</a>
                                </div>
                            </li>
                            <li>
                                <div class="clearFloat">
                                    <img src="images/newli.jpg" alt="" width="281" height="250" class="floatLeft mr40"/>
                                    <h3 class="f18 text-3c pt15">青宁管道创管径最大距离最长穿越纪录 </h3>
                                    <span class="display f12 line-height-28 text-969696">2020年09月07日 21:14</span>
                                    <span class="f14 line-height-28 text-64">
                                         9月5日，集团公司重点工程青宁（青岛-南京）输气管道工程EPC二标段G40沪陕高速公路穿越一次成功，穿越距离和管径均创集团公司管道穿越施工新纪录，为工程按时中交奠定基础。
                                    </span>
                                    <br><br>
                                    <a href="yaowen8.jsp#anchorName" class="xqy">详 情</a>
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