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
    <a name="anchorName5"></a>

    <div class="content">
        <div class="w1200">
            <div class="chanye clearFloat">
                <h3 class="f24 fb text-66">关于我们</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav"><a href="gongsijianjie.jsp#anchorName1">公司简介</a></div>
                        <div class="subNav"><a href="dongshizhang.jsp#anchorName2">董事长致辞</a></div>
                        <div class="subNav"><a href="qiyewenhua.jsp#anchorName3">企业文化</a></div>
                        <div class="subNav"><a href="fazhan.jsp#anchorName4">发展历程</a></div>
                        <div class="subNav subnava"><a href="rongyuzizhi.jsp#anchorName5">荣誉资质</a></div>
                        <div class="subNav"><a href="fenzhijiegou.jsp#anchorName6">分支机构</a></div>
                     </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">荣誉资质</h3><br>
                    <div class="crightp">
                        <p>
                            <%-- 荣誉资质 --%>
                            <table width="100%" class="ms-rteTable-default" cellspacing="0">
                            <tbody>
                            <tr>
                                <td class="ms-rteTable-default" style="width: 5%;">
                                    <strong>序号</strong></td>
                                <td class="ms-rteTable-default" style="width: 50%;">
                                    <strong>项目名称</strong></td>
                                <td class="ms-rteTable-default" style="width: 30%;">
                                    <strong>奖励种类</strong></td>
                                <td class="ms-rteTable-default" style="width: 10%;">
                                    <strong>等级</strong></td>
                                <td class="ms-rteTable-default" style="width: 5%;">
                                    <strong>年度</strong></td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">1</td>
                                <td class="ms-rteTable-default">芳烃绩效评价分析模型系统开发及应用</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2017</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">2</td>
                                <td class="ms-rteTable-default">原油远洋运输智能优化技术</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2017</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">3</td>
                                <td class="ms-rteTable-default">中国石化炼油&quot;十三五&quot;达标考核体系研究与应用</td>
                                <td class="ms-rteTable-default">中国石化第二十六届管理现代化创新成果</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2017</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">4</td>
                                <td class="ms-rteTable-default">中国能源展望2030、2050</td>
                                <td class="ms-rteTable-default">国家能源局软科学研究优秀成果</td>
                                <td class="ms-rteTable-default">一等奖</td>
                                <td class="ms-rteTable-default">2017</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">5</td>
                                <td class="ms-rteTable-default">电动汽车发展对中长期石油需求的影响</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2016</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">6</td>
                                <td class="ms-rteTable-default">石化产品碳足迹技术开发及应用</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2016</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">7</td>
                                <td class="ms-rteTable-default">中国石化生物航煤生产技术(SRJET技术)</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">一等奖</td>
                                <td class="ms-rteTable-default">2015</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">8</td>
                                <td class="ms-rteTable-default">中国石油消费峰值研究</td>
                                <td class="ms-rteTable-default">国家能源局软科学研究优秀成果</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2015</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">9</td>
                                <td class="ms-rteTable-default">中国石化新型煤化工产业发展战略研究</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2014</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">10</td>
                                <td class="ms-rteTable-default">我国炼油行业可持续发展和油品质量升级研究</td>
                                <td class="ms-rteTable-default">国家能源局软科学研究优秀成果</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2013</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">11</td>
                                <td class="ms-rteTable-default">中国石化主要石油石化产品市场预测体系</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2012</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">12</td>
                                <td class="ms-rteTable-default">欧盟REACH法规研究与实践</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2012</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">13</td>
                                <td class="ms-rteTable-default">中国石化化工生产计划与效益测算系统</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2010</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">14</td>
                                <td class="ms-rteTable-default">烯烃装置绩效评价系统模型开发</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2010</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">15</td>
                                <td class="ms-rteTable-default">中国石化国际油价预测体系系统开发与建设项目</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2010</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">16</td>
                                <td class="ms-rteTable-default">我国炼油工业可持续发展研究和进口原料来源分析</td>
                                <td class="ms-rteTable-default">国家能源局软科学研究优秀成果</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2010</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">17</td>
                                <td class="ms-rteTable-default">中国石油化工行业外资准入研究</td>
                                <td class="ms-rteTable-default">国家能源局软科学研究优秀成果</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2009</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">18</td>
                                <td class="ms-rteTable-default">进口现货原油资源优化开发项目</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2008</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">19</td>
                                <td class="ms-rteTable-default">中国石化可持续发展战略研究报告</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2008</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">20</td>
                                <td class="ms-rteTable-default">原油评价数据库系统</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2007</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">21</td>
                                <td class="ms-rteTable-default">中国石化产业损害预警系统</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2007</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">22</td>
                                <td class="ms-rteTable-default">中国石化供应链总部优化应用模型项目</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">一等奖</td>
                                <td class="ms-rteTable-default">2006</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">23</td>
                                <td class="ms-rteTable-default">提高汽柴油质量的措施及政策趋向</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2005</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">24</td>
                                <td class="ms-rteTable-default">国家战略石油储备专题规划研究</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2004</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">25</td>
                                <td class="ms-rteTable-default">炼油化工一体化企业MPIMS模型开发</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2004</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">26</td>
                                <td class="ms-rteTable-default">我国标准化工作现状及其未来发展的对策研究</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2003</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">27</td>
                                <td class="ms-rteTable-default">中国加入WTO过渡期后国内三大合成材料行业竞争力分析</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2003</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">28</td>
                                <td class="ms-rteTable-default">乙烯和几种重要合成材料的市场、产品开发和生产技术进展</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2003</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">29</td>
                                <td class="ms-rteTable-default">车用乙醇汽油的研究开发及应用</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">一等奖</td>
                                <td class="ms-rteTable-default">2003</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">30</td>
                                <td class="ms-rteTable-default">原油资源优化项目</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2002</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">31</td>
                                <td class="ms-rteTable-default">江汉盐化工装置关停及扭亏解困方案和实施跟踪研究</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2002</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">32</td>
                                <td class="ms-rteTable-default">对科技期刊实施质量管理 为石化集团科技进步服务</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2002</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">33</td>
                                <td class="ms-rteTable-default">″十五″我国石化工业发展战略与思路系列研究</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">二等奖</td>
                                <td class="ms-rteTable-default">2001</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">34</td>
                                <td class="ms-rteTable-default">运用WTO规则合法保护我国石油石化产业利益的对策研究</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2001</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">35</td>
                                <td class="ms-rteTable-default">《钢制压力容器焊接工艺评定》标准</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2001</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">36</td>
                                <td class="ms-rteTable-default">项目经济效益统一测算价格分析</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">2000</td>
                            </tr>
                            <tr>
                                <td class="ms-rteTable-default">37</td>
                                <td class="ms-rteTable-default">石油化工规划参考资料(合成树脂、合成纤维、基本有机原料)</td>
                                <td class="ms-rteTable-default">中国石化科技进步奖</td>
                                <td class="ms-rteTable-default">三等奖</td>
                                <td class="ms-rteTable-default">1999</td>
                            </tr>
                            </tbody>
                            </table>
                            <%-- 荣誉资质 --%>
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