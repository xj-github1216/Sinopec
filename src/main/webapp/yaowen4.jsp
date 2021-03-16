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
                        <div class="subNav subnava"><a href="gongsiyaowen.jsp#anchorName">公司要闻</a></div>
                        <div class="subNav"><a href="qiyedongtai.jsp#anchorName">企业动态</a></div>
                        <div class="subNav"><a href="guozidongtaii.jsp#anchorName">国资动态</a></div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15 relative">张玉卓到公司驻沪部分企业调研<span class="kaiyuan"><span>来源：中国石化报</span>&nbsp;&nbsp;<span>发布时间：2020-11-06</span></span></h3><br>
                    <div class="crightpp">
                        <p>     &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;本报讯 记者赵士振报道：11月4日~5日，集团公司董事长、党组书记张玉卓到上海海洋石油局、高桥石化、上海研究院、上海工程公司、赛诺佩克等部分驻沪企业调研，看望慰问一线员工，察看生产和科研现场，听取工作汇报，要求认真学习贯彻十九届五中全会精神，切实践行新发展理念，在构建“一基两翼三新”发展格局、打造世界领先洁净能源化工公司中作出新的更大贡献。<br>
                            　　4日，张玉卓来到上海海洋石油局，看望慰问劳模代表，参观局史陈列馆，与正在南海海域和渤海湾地区施工的勘探三号、勘探六号平台员工视频连线。张玉卓说，上海海洋石油局有着光荣历史传统，多年来在海上勘探领域艰苦创业、倾情奉献，取得很好的成绩。面对新形势、新任务，上海海洋石油局要认真贯彻落实习近平总书记重要论述和指示批示精神，深入学习贯彻十九届五中全会精神，大力传承石油精神、弘扬石化传统，不断增强紧迫感责任感，聚焦重点目标，加大创新力度，加快勘探步伐，努力实现大突破、大发现，为保障国家能源安全、构建公司“一基两翼三新”发展格局而努力。<br>
                            　　在高桥石化，张玉卓来到生产调度指挥中心和炼油一部中控室，看望慰问一线员工，了解生产经营、安全环保等工作情况，研究探讨公司今后发展，强调要切实履行好政治责任、经济责任、社会责任，认真落实集团公司党组工作部署，抓好持续攻坚创效，进一步深化改革、强化管理，加强党建和干部员工队伍建设。要坚持抓主要矛盾、抓系统优化、抓底线防控、抓化危为机，全力应对疫情和低油价冲击，奋力推进各项工作。要从严从实抓好HSSE工作，在日常生产管理、资源能源利用等方面深入贯彻绿色发展理念，持续提升绿色发展能力。<br>
                            　　作为我国石油化学工业和中国石化科技开发的一个重要基地，上海院近年来牵头承担了多项国家级项目，取得一大批具有国际先进水平的重大科技成果。张玉卓先后来到中国石化碳纤维及复合材料重点实验室、中国石化合成纤维加工应用中心、中国石化甲醇转化技术重点实验室和绿色化工与工业催化国家重点实验室，深入了解重点科研项目推进情况，强调要深入贯彻习近平总书记在科学家座谈会上的重要讲话精神，不断提高政治站位，进一步增强加快推进科技创新的责任感紧迫感使命感，把准主攻方向，加大创新力度，全面提升自主创新能力。坚持产学研用一体化，既着眼现实需求，加大力度做实支撑技术；又着眼长远发展，增强技术储备。聚焦关键技术，加快人才培养，强化合作交流，不断提升核心竞争力。<br>
                            　　在上海工程公司，张玉卓详细了解生产经营、市场开拓和党的建设等工作，听取工作汇报，强调要立足长远、胸怀壮志，切实践行新发展理念，在建设技术先导型公司中站排头、争第一。要紧紧围绕提高发展质量和效益，坚持走高端、创特色，积极开拓市场，推进技术进步，形成拳头产业，持续提升综合实力。要坚决落实集团公司决策部署，深入开展持续攻坚创效行动，努力取得更好经营业绩，为集团公司全面完成全年目标任务作出积极贡献。<br>
                            　　4日正值第三届中国国际进口博览会开幕。张玉卓强调，驻沪企业要切实提高政治站位，坚决树立底线思维，高度重视安全生产，着力防范化解重大安全风险，确保不出任何问题。要以最高标准、最严要求做好环境保护工作，深入推进绿色发展，深化绿色企业创建，打造中国石化绿色发展名片，以实际行动助力进博会顺利举行。<br>
                            　　5日，张玉卓还到巴斯夫集团大中华区总部拜会参观，双方就进一步合作进行深入交流。集团公司副总经理喻宝才、刘宏斌一同参加。<br>
                        </p><br>
                        <p class="text-center"><img src="images/new4.jpg" alt=""/></p><br>

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