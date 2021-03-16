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

    <%--设置锚点--%>
    <a name="anchorName2"></a>

    <!--content-->
    <div class="content">
        <div class="w1200">
            <div class="chanye clearFloat">
                <h3 class="f24 fb text-66">关于我们</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav"><a href="gongsijianjie.jsp#anchorName1">公司简介</a></div>
                        <div class="subNav subnava"><a href="dongshizhang.jsp#anchorName2">董事长致辞</a></div>
                        <div class="subNav"><a href="qiyewenhua.jsp#anchorName3">企业文化</a></div>
                        <div class="subNav"><a href="fazhan.jsp#anchorName4">发展历程</a></div>
                        <div class="subNav"><a href="rongyuzizhi.jsp#anchorName5">荣誉资质</a></div>
                        <div class="subNav"><a href="fenzhijiegou.jsp#anchorName6">分支机构</a></div>
                     </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">董事长致辞</h3><br>
                    <div class="crightp">
                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019年是新中国成立70周年，也是中国石化极不平凡的一年。面对风险挑战明显上升的内外部环境，在以习近平同志为核心的党中央坚强领导下，公司各级领导班子团结带领广大干部员工，坚持以习近平新时代中国特色社会主义思想为指导，以迎接庆祝新中国成立70周年为动力，抓住开展“不忘初心、牢记使命”主题教育和接受中央巡视及问题整改重要契机，稳中求进、担当作为、狠抓落实，推动各项工作取得新进展新成效。全年实现营业收入3.0万亿元、同比（下同）增长2.3%，利润总额1009亿元、增长4.3%，净利润791亿元、增长9.1%，实现税费3122亿元。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;深化供给侧结构性改革，加快推进产业转型升级。认真贯彻落实习近平总书记能源安全新战略和重要指示批示精神，加大国内油气勘探开发力度，稳油增气降本成效明显，油气勘探再获一批新突破，文23储气库等一批重点工程建成投用。炼化基地加快建设，中科炼化项目建成中交，中安联合等一批重点项目建成投产，一批低硫船燃项目布局落实。加油站综合服务体建设和智能化建设加快推进。国际合作迈向更宽领域、更深层次，新业务新业态孕育成长。科技创新成果丰硕，高温高盐油藏大幅提高采收率技术、对位芳纶成套技术等一批重点项目研发取得积极进展，支撑引领了产业结构调整。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;深入推进体制机制改革，全力巩固行稳致远根基。深入贯彻党的十九届四中全会精神，积极探索建立中国特色现代企业制度，管理体制改革、总部机构调整等积极推进，配套机制改革有序实施，公司治理体系建设迈出新步伐。三项制度改革、混合所有制改革、支持配合国家管网公司组建等重点改革稳步推进，改革呈现全面发力、多点突破、纵深推进的新格局。健全内控风控体系，加强合规管理体系建设，强化依法依规治企，保障了稳健经营。 <br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;强化管党治党责任，推动全面从严治党向纵深发展。高质量开展“不忘初心、牢记使命”主题教育，自觉接受中央巡视，统筹抓实问题整改，学习贯彻习近平新时代中国特色社会主义思想走深走实，做到“两个维护”更加坚定自觉。以党的政治建设为统领，制定并落实加强党的政治建设重点措施，为基层减负工作持续深化，政治纪律和政治规矩更加严明。积极践行新时代党的组织路线，持续加强领导班子和干部人才队伍建设。突出责任、质量、实效，推进党建与业务工作深度融合，党建质量不断提升。实施纪检监察体制改革，保持惩治腐败高压态势，深化巡视巡察工作，全面清理驻京办（联络处），开展纠治“四风”专项行动，加大警示教育力度，不敢腐的震慑持续强化，不能腐的笼子越扎越紧，不想腐的堤坝加快构筑。落实意识形态工作责任制，建好管好用好主阵地。积极开展传承石油精神、弘扬石化传统教育，大力宣传“最美奋斗者”闵恩泽院士、“时代楷模”陈俊武院士等先进典型，凝聚起干事创业正能量。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;积极履行社会责任，持续彰显央企使命担当。从讲政治的高度，全力做好新中国成立70周年、国际进口博览会等重大活动的服务保障任务。认真落实党中央脱贫攻坚决策部署，全年投入扶贫资金2.31亿元，对口支援和定点扶贫资金1.65亿元，助力西藏班戈县、安徽颍上县脱贫“摘帽”，公司扶贫案例获得中国企业扶贫50佳案例。积极应对气候变化，深入实施绿色企业行动计划和能效提升计划，扎实推进污染防治攻坚战。推进公益事业常态化发展，深入实施健康快车、情暖驿站等公益项目，让公司发展成果更多惠及人民群众。尊重项目所在地文化传统和法律法规，推动社区实现经济、环境、社会协调发展，在境内外赢得广泛赞誉。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成绩来之不易，这是以习近平同志为核心的党中央坚强领导的结果，是社会各界关心帮助的结果，是广大客户和消费者高度信赖的结果，是海内外合作伙伴协作支持的结果。在此，我代表公司董事会、管理层，代表公司全体干部员工，向所有关心、支持和帮助中国石化的朋友们表示衷心的感谢！<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2020年是我国全面建成小康社会和“十三五”规划的收官之年，也是新时代公司改革发展进程中的关键之年。近期，新冠肺炎疫情肆虐，市场需求大幅萎缩，国际油市风云突变，金融市场剧烈动荡。面对新形势新任务，我们将更加紧密地团结在以习近平同志为核心的党中央周围，以习近平新时代中国特色社会主义思想为指导，深入贯彻落实党中央、国务院决策部署，贯彻新发展理念，落实高质量发展要求，坚持稳中求进工作总基调，聚焦提质增效升级，深化供给侧结构性改革，加快创新驱动发展，完善公司治理体系，坚定不移全面从严治党，努力创造更加优异成绩，为全面建成小康社会做出更大贡献！<br><br>

                            <span style="color: #014099;font-size: 24px">我们将持续加强对外合作，与您携手共创更加灿烂美好的明天！</span>
                        </p>
                        <p class="text-right">
                            <img src="images/qianming.jpg" alt=""/>
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