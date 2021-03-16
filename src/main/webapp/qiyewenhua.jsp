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
    <a name="anchorName3"></a>

    <div class="content">
        <div class="w1200">
            <div class="chanye clearFloat">
                <h3 class="f24 fb text-66">关于我们</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav"><a href="gongsijianjie.jsp#anchorName1">公司简介</a></div>
                        <div class="subNav"><a href="dongshizhang.jsp#anchorName2">董事长致辞</a></div>
                        <div class="subNav subnava"><a href="qiyewenhua.jsp#anchorName3">企业文化</a></div>
                        <div class="subNav"><a href="fazhan.jsp#anchorName4">发展历程</a></div>
                        <div class="subNav"><a href="rongyuzizhi.jsp#anchorName5">荣誉资质</a></div>
                        <div class="subNav"><a href="fenzhijiegou.jsp#anchorName6">分支机构</a></div>
                     </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">企业文化</h3><br>
                    <div class="crightp">
                        <p>
                            <b>一、企业文化</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;企业文化是构成企业核心竞争力的关键所在，是企业发展的原动力。以“爱我中华、振兴石化”的企业精神和“三老四严”、“苦干实干”、“精细严谨”等优良传统为重要内涵的企业文化在中国石化的改革发展中起到了有力的引领与支撑作用，是激励中国石化攻坚克难、不断前进的制胜法宝。为扎实培育和践行社会主义核心价值观，有效落实中央“创新、协调、绿色、开放、共享”的发展理念，积极适应市场化和国际化发展要求，中国石化企业文化需要在继承优良传统的基础上不断创新与发展，以进一步凝聚广大员工干事创业的精神力量，引领与推动公司持续健康发展。<br><br>
                            <b>二、企业使命</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;企业使命表明公司存在的根本目的和理由。中国石化坚持把人类对美好生活的向往当作企业发展的方向,致力于提供更先进的技术、更优质的产品和更周到的服务，为社会发展助力加油；坚持走绿色低碳的可持续发展道路，加快构建有利于节约资源和保护环境的产业结构和生产方式，为推进生态文明建设做贡献；坚持合作共赢的发展理念，使公司在不断发展壮大的同时，为各利益相关方带来福祉。<br><br>
                            <b>三、企业愿景</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;企业愿景是企业的长远发展目标，表明企业发展方向和远景蓝图。为实现上述愿景，中国石化将致力于以下四方面实践：<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;致力于成为可持续发展企业。全面实施“价值引领、创新驱动、资源统筹、开放合作、绿色低碳”发展战略，迅速适应环境变化，加快转方式调结构、提质增效升级，使公司在已领先的竞争领域和未来的经营环境中努力保持持续的盈利增长和能力提升，保证公司长盛不衰。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;致力于成为利益相关方满意企业。更加突出技术进步和以人为本，努力提供优质的产品、技术和服务，展现良好的社会责任形象，让员工、客户、股东、社会公众以及业务所在国（地区）的民众满意，努力成为高度负责任、高度受尊敬的卓越企业。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;致力于成为绿色高效能源化工企业。以能源、化工作为主营方向，做好战略布局和业务结构优化，在发展好传统业务的同时，不断开发和高效利用页岩气、地热、生物质能等新兴产业。开发绿色低碳生产技术，研发生产环保新材料，促进煤炭资源清洁化利用，努力成为绿色高效的能源化工企业。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;致力于成为世界一流企业。世界一流企业不仅需要一流的规模，更需要一流的质量和效益，一流的企业文化管理和品牌形象，以及一流的市场化、国际化竞争能力。中国石化要对照世界一流企业的标准，通过艰苦不懈的努力，成为治理规范、管理高效、文化先进、市场化程度高、国际化经营能力强、拥有世界一流技术、人才和品牌的先进企业。<br><br>
                            <b>四、核心价值观</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;企业价值观是全体员工共同遵循的，在企业制定战略和进行生产经营行为时必须坚守的原则和标准。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人本——以人为本，发展企业。从广大客户和社会公众的需要出发，确定企业发展方向，研发一流产品，提供一流服务。把员工作为企业发展的主体力量，为员工全面发展创造条件，让员工生活得更加幸福。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任——报国为民，造福人类。继承弘扬“爱我中华、振兴石化”的企业精神，切实履行好国有企业的经济、政治和社会责任。同步贡献业务所在国（地区），履行好相关的经济、法律和社会责任。全体员工坚守“有岗必有责，上岗必担责”，为企业发展拼搏奉献。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;诚信——重信守诺，合规经营。把信用立企作为企业的发展之基，依法经营，规范运作，做到“每一滴油都是承诺”，为企业树立良好品牌形象。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;精细——精细严谨，止于至善。以严格的要求和一丝不苟的态度，养成精细严谨的工作作风，追求生产上精耕细作、经营上精打细算、管理上精雕细刻、技术上精益求精，努力提升生产经营管理水平。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创新——立足引领，追求卓越。坚持创新驱动，把发展动力转到依靠创新驱动上来，大力推进科技创新、管理创新和商业模式创新，引领市场发展，打造行业标杆，成就卓越品质。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共赢——合作互利，共同发展。坚持开放包容、精诚合作、互惠和谐。遵循和尊重业务所在国（地区）法律法规、文化习俗，汲取、融汇合作方的优秀文化和先进经验。帮助客户提升价值，企业发展惠及周边社区民众，与利益相关方共同发展、互利共赢。<br><br>
                            <b>五、企业作风</b><br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;企业作风是企业在长期的生产经营活动中形成的工作风气，是企业内质的外在表现。中国石化坚持弘扬“苦干实干”、“三老四严”等石油石化优良传统，将“严细实”贯穿到企业经营管理的全过程。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;严：就是“严字当头”。对待工作，有严格的要求、严密的组织、严肃的态度、严明的纪律。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;细：就是“细字当先”。工作中要始终拿着“放大镜”，对每个节点、每个工序、每个需要检查或注意的地方，一丝不苟，一点一点去做好过程控制和节点控制。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实：就是“实字当家”。坚持当老实人、说老实话、办老实事，踏踏实实工作，清清白白做人，静下心来谋发展，沉下身子做事情。<br><br>
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