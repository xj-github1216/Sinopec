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
    <link rel="stylesheet" href="css/SinopecBase.css">
    <link rel="stylesheet" href="css/SinopecCommon.css">
    <link rel="stylesheet" href="css/SinopecColumn.css">
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
    <a name="anchorName4"></a>

    <!--content-->
    <div class="content">
        <div class="w1200">
            <div class="chanye clearFloat">
                <h3 class="f24 fb text-66">关于我们</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav"><a href="gongsijianjie.jsp#anchorName1">公司简介</a></div>
                        <div class="subNav"><a href="dongshizhang.jsp#anchorName2">董事长致辞</a></div>
                        <div class="subNav"><a href="qiyewenhua.jsp#anchorName3">企业文化</a></div>
                        <div class="subNav subnava"><a href="fazhan.jsp#anchorName4">发展历程</a></div>
                        <div class="subNav"><a href="rongyuzizhi.jsp#anchorName5">荣誉资质</a></div>
                        <div class="subNav"><a href="fenzhijiegou.jsp#anchorName6">分支机构</a></div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">发展历程</h3><br>
                    <div class="crightp">
                        <p><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从1983年中国石化总公司成立，到2018年，中国石化集团公司（以下简称中石化）已走过了35年的发展之路。从国之重器到民生必需，从传统行业到新兴领域，都活跃着中石化的身影。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年《财富》世界500强排行榜上，中石化以2675.18亿美元的营业收入位列第3位，比上一年提高1位。这是中国石化自1999年首次排名73位以来第19次进入世界500强排名，亦是连续七年高居世界500强企业前五名。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以“中国石油化工行业领军者”来定位中石化毫不为过。然而，透过其辉煌的成绩，我们也需看到中石化不断完善业务短板，拉近甚至超越全球顶尖水平的不懈努力。<br><br>
                            <b>中国石化35年的蜕变</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我国石化工业起步于上世纪五六十年代，但陷于管理分散、技术落后的沼泽中难以脱身，与发达国家相比更是存在差距。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1978年中国原油产量达到1亿吨以后，由于经济管理体制的条块分割，资源无法有效利用，浪费很大，每千美元GDP的油耗，不仅高于美国、日本，比邻国印度也要高。建立国家石油化工体系迫在眉睫。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为提高经济效益，增加财政收入，改善国家经济状况，并作为实现工农业生产总值“翻两番”的重大举措之一，1983年党中央、国务院“经过充分论证，下了最大决心”，决定成立跨部门、跨行业、跨地区的大型经济实体——中国石油化工总公司。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;石化总公司发挥集中力量办大事的体制优势，扩建和新建了一批炼油装置，启动并建成了一批乙烯、化纤、化肥工程，推进了油、化、纤、肥一体化发展，逐步建立起门类齐全、品种配套、技术先进、具有相当规模的现代石化工业体系。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1983年到1997年，是石化总公司飞速发展的时期，也是我国石化工业快速发展的十五年。原油加工量从0.75亿吨提高到1.25亿吨，增长66.7%，原油一次加工能力的世界排名从第八位上升到第四位；乙烯产量从55.6万吨提高到280万吨，增长超过4倍，乙烯生产能力的世界排名上升到第四位。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1998年石油石化两大集团重组，石化总公司变更为中国石化集团。从那时到2013年的15年，是中石化经历了重组、改制和跨越的十五年，也是其走向市场化、国际化的十五年。原油产量从3532万吨上升到6949万吨、增长96.8%；天然气产量从23亿立方米上升到202亿立方米、增长7.8倍；原油加工量从8060万吨上升到22309万吨、增长1.8倍；乙烯产量从227万吨上升到954万吨、增长3.2倍；成品油境内经营量从4176万吨上升到15891万吨、增长2.8倍。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;到如今，中石化的规模更加庞大，一系列数据显示了其实力：2017年，中石化油气产量约4.46亿桶油当量，同比增长3.37%；原油产量约2.936亿桶；天然气产量达9125亿立方英尺，同比增加19.11%。原油加工量约2.385亿吨，汽油产量5703万吨，柴油产量6676万吨，煤油产量2688万吨，乙烯产量达1161万吨。此外，公司境内成品油总经销量约1.778亿吨，同比增加2.93%。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;35岁的中石化，从最初的新组建公司已成长为行业领军者，具备了相对成熟的国际竞争力。全国政协原副主席、第一任中国石化总公司总经理陈锦华在《国事忆述》中讲到：“中国的国有企业，特别是特大型企业和企业集团，可以改革，可以发展，可以不断做强做大。”<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对外经济贸易大学一带一路能源贸易与发展研究中心主任董秀成接受《能源》杂志记者采访时也认为，如何实现“做强做优”是中石化接下来要思考的重要发展问题<br><br>
                            <b>从上游短板到页岩气样本</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国石化的传统优势在中游和下游，而上游在过去长期是一块短板。两大公司重组以来，中石化的上游短板就一直存在，中石化在上游勘探开发板块与中石油差距明显。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;截至2013年底，中石化股份公司证实储量约为44亿桶油当量，与中海油持平，不足中石油证实储量的1/5。与中石油、中海油相比，上游资源对中石化整体业务链的钳制更为明显，原油加工能力与上游资源的严重失衡是逼迫其加速收购的关键驱动力。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;受制于人的上游板块成为中石化历任管理层心里的一根刺，多年来中石化也一直苦心于在国内外找到更多上游权益。然而补上这个短板非常不易，国内好的区块已经划给了中石油，国外好的区块早被埃克森美孚、壳牌、BP等跨国石油企业占据，要么像中海油一样并购一家中型石油企业，实现上游储量和产量的跨越性增长，要么就指望通过勘探发现一个大的油气藏区。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;尽管中石化一直在上游短板区努力，但始终没有改变人们对中石化上游偏弱的印象，直到其对涪陵页岩气区块的成功开发，中石化真正成了上游页岩气开发的领先者。在董秀成看来，国家对于涪陵页岩气的成功是十分满意的，荣获了国家科学技术进步一等奖。中石化在新疆和西南等地油气田开发的进展十分迅速，想要进一步完善上游板块的话，仍需继续深化勘探业务。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中石化重组20年来，在国内上游领域以四川盆地、鄂尔多斯盆地为主阵地，实现天然气业务跨越式发展。2017年产气257.4亿立方米，是1998年3408亿立方米的604倍。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;经国土资源部评审认定，涪陵页岩气田累计探明储量达6008亿方，成为全球除北美之外最大的页岩气田。2015年，涪陵页岩气田顺利完成一期50亿方/年产能建设目标；2017年，如期建成100亿方/年产能的大气田。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无独有偶，中石化在地跨重庆綦江和贵州习水的丁山地区，确定了第二个海相页岩气勘探突破区。据负责川东南页岩气勘探的勘探南方分公司总经理郭旭升介绍，目前他们将川东南地区划分为大焦石坝、丁山、南川、林滩场-仁怀、南天湖五个有利区，合计面积3909平方公里，资源量2.1万亿方，其中埋深＜3500m有利区面积2777平方公里，资源量1.5万亿方，埋深在3500-4500m有利区面积1132平方公里，资源量0.6万亿方。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.1万亿方的资源量奠定了川东南探区国内最大页岩气田的地位，即便与常规天然气田相比，中石化川东南探区也足以称得上是大型气田之一。涪陵页岩气田树立了我国能源开发史上新的里程碑，开启了我国能源革命的新征程，不但建成第一个国家级页岩气示范区，也为全球页岩气开发提供了中国样本。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在原油生产方面，中石化采取“东部油区精耕细作老区，西部地区加快效益上产”的方针。2017年，东部老区自然递减率为9.1%，创历史最好成绩；塔河油田的发现填补了我国古生界海相大油田的空白，累计探明石油储量13.5亿吨。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着油价从低谷迅速回升，上游板块利润可期度提高，中石化在上游板块的投入或将获得回报。当然，体量巨大的中石化仍面临资产优化的困境，如何把握全球机遇，科学预测行业动向或许将成为中国石化具有前瞻性的一步。<br><br>
                            <b>从引进来到走出去的炼化板块</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1972年1月22日，李先念、华国锋、余秋里联名向周恩来报送了国家计委《关于进口成套化纤、化肥技术设备的报告》。该报告中说：为了充分利用我国石油、天然气资源，迅速发展化学纤维和化肥原料，拟向国外进口成套化纤、化肥设备和部分的关键设备。化纤方面，拟从法国、日本进口四套设备，约需2.7亿美元。建成后每年可生产合成纤维24万吨，约等于500万吨棉花，可织布40亿尺。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;周恩来总理在《进口化纤设备谈判进展情况》报告批示中指出“能否提前先搞日本一套化肥设备，一套三菱油化设备，一套日本旭化成（公司），是否都是从石油中提炼的？”第一批进口化纤、化肥设施顺势确定下来。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“引进来”并非长久之计，特别是在关系国计民生的石油炼化领域。乙烯被称为“石化之母”，是衡量一个国家石油化工发展水平的重要标志。中石化成立35年来，乙烯业务向高质量持续发展，形成了茂名、赛科、镇海、中沙、附件、扬子、齐鲁、中韩等8套百万吨级生产装置。乙烯产能由1983年的60万吨/年增至目前的1113万吨/年，增加了18倍之多；乙烯产量由当年的55万吨增至2017年的1161万吨，增长了约21倍。<br><br>
                            <b>镇海炼化大乙烯</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中石化在乙烯业务发展中坚持“引进-消化吸收-集成创新-自主创新”的发展思路，在关键装备国产化和核心、专有技术研发方面迈出重要步伐。2013年8月13日，首次采用中国石化自主研发的乙烯成套工艺技术建设的武汉80万吨/年乙烯项目全面投产。同时，乙烯“三机”等核心设备首次全部国产化。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;芳烃成套技术以生产对二甲苯为核心，是代表一个国家石油化工发展水平的标识性技术。自上世纪80年以来，技术核心——吸附分离技术长期未能掌握，直到2011年方才成功攻克这一壁垒，成为继美、法之后第三个掌握该技术的国家。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着炼化技术的创新发展，在上世纪90年代，中石化的炼化技术开始出口海外市场。“十二五”期间，中石化直属研究、设计单位技术贸易收入达到142亿元。MIP、延迟焦化、DCC、大型乙烯裂解炉、SBS、聚丙烯预聚等技术分别出口古巴、泰国、马来西亚、意大利、美国等地。催化裂化催化剂批量出口埃克森美孚、瓦莱罗、壳牌和雪佛龙等著名国际大公司的多家炼厂，催化汽油吸附脱硫（S-Zorb）吸附剂、聚烯烃催化剂出口美国、中东。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;近年来，中石化还积极与国际大型石油石化公司在境内外开展炼化合作，如福建联合石化、扬子巴斯夫、天津中沙、沙特延布、俄罗斯西布尔等一批境内外炼化合作项目均已建成投产。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;董秀成表示，中石化在“走出去”的过程中，上中下游都有涉及。走出去主要有两种方式，一种是合资模式，比如中国石化与沙特阿美延布炼厂；另一种是技术或者劳务输出，即建好厂之后交给别人。相比之下，后者是比较初级的模式，合资模式下的长期持有对于“走出去”更为有利。<br><br>
                            <b>与时俱进的体制改革</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;保持活力对于企业，特别是大型企业来讲是生命力的重要体现。中石化从未停止向市场化探索的过程，作为“国字号”企业，是改革开放的主力军。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国石化总公司成立后第一次重大改革，就是1984年国务院批准的中国石化总公司《进一步推进改革，提高经济效益的方案》，规定从1985年至1990年的6年内，自筹固定资产投资300亿元，建成从国外引进的4套特大型石化成套项目和三个大型化肥项目，加快发展现代石油化工生产力。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6年后，石化总公司累计实现利税900亿元，其中1990年当年实现利税200亿元。在第一次改革方案超额完成以后，1998年国务院决定对全国石油化工进行更高层次的改革，全面实行上下游、产供销、内外贸一体化。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当时，原中国石油化工总公司和中国石油天然气总公司相互交换部分油田企业和炼化企业，并将原隶属地方政府的省、市、自治区石油公司相应地划转到两大集团公司，分别组成中国石油化工集团公司和中国石油天然气集团公司。大致形成南北划分、两大集团的平行竞争格局。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1999年开始的整体股份制改革，是中国石化在管理体制上接轨国际的重要改革措施。2000年2月，成立中国石油化工股份有限公司，将主业和辅业分离，将优良资产和不良资产分离，企业职能与社会职能分离。以1999年9月30日为评估的基准日，评估后中国石化股份公司的总资产为2495多亿元，总负债1513亿元，净资产982亿元，资产负债率为60.63%。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;陈锦华在《国事忆述》中总结了中国石化股份公司改制上市成功的主要表现：优化了产业结构和资产结构；募集了巨额的资金，明显增加了所有者权益，改善了资本负债结构；引进了战略投资者，扩大了对外合作；明晰产权，改善了股本结构，提高了国有资本的控制力和运营效率；改善了企业经济管理，增强了竞争能力。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“不忘初心，牢记使命。”与时俱进的体制改革，使中石化这个“年轻”的巨头企业不断完善自身，并得以在全球的舞台上展示出独特的中国样本，打造了中国石化的品牌打出了中国制造新名片。<br><br>
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