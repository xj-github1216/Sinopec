<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>人才招聘</title>
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
    <div class="content">
        <div class="w1200">
            <div class="chanye clearFloat">
                <h3 class="f24 fb text-66">工程项目</h3><br>
                <div class="cleft floatLeft">
                    <div class="cznav">
                        <div class="subNav">工程实例</div>
                        <div class="subNav subnava">野外实验站</div>
                    </div>
                </div>
                <div class="cright floatRight">
                    <h3 class="f24 text-33 border-d-b-d9d9d9 pb15">人才招聘</h3><br>
                    <div class="yewai">
                        <div class="yewanlist">
                            <h3 class="f16 fb text-00 mb10">北京国润天能新能源科技股份有限公司：</h3>
                            <p>
                                联系电话：010-65102077-802<br>
                                联系邮箱：122@gorunsolar.com<br>
                                公司地址：北京市朝阳区建国路77号华贸中心3号写字楼26层01A02A号
                            </p>
                        </div>
                    </div>
                    <div class="baidu">
                        <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
                        <div style="width:757px;height:425px;border:#ccc solid 1px;" id="dituContent"></div>
                        <script type="text/javascript">
                            //创建和初始化地图函数：
                            function initMap(){
                                createMap();//创建地图
                                setMapEvent();//设置地图事件
                                addMapControl();//向地图添加控件
                                addMarker();//向地图中添加marker
                            }

                            //创建地图函数：
                            function createMap(){
                                var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
                                var point = new BMap.Point(116.487364,39.915312);//定义一个中心点坐标
                                map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
                                window.map = map;//将map变量存储在全局
                            }

                            //地图事件设置函数：
                            function setMapEvent(){
                                map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
                                map.enableScrollWheelZoom();//启用地图滚轮放大缩小
                                map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
                                map.enableKeyboard();//启用键盘上下左右键移动地图
                            }

                            //地图控件添加函数：
                            function addMapControl(){
                                //向地图中添加缩放控件
                                var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
                                map.addControl(ctrl_nav);
                                //向地图中添加缩略图控件
                                var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
                                map.addControl(ctrl_ove);
                                //向地图中添加比例尺控件
                                var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
                                map.addControl(ctrl_sca);
                            }

                            //标注点数组
                            var markerArr = [{title:"北京国润天能新能源科技股份有限公司",content:"北京市朝阳区建国路77号华贸中心3号写字楼26层01A02A号",point:"116.487296|39.91525",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
                            ];
                            //创建marker
                            function addMarker(){
                                for(var i=0;i<markerArr.length;i++){
                                    var json = markerArr[i];
                                    var p0 = json.point.split("|")[0];
                                    var p1 = json.point.split("|")[1];
                                    var point = new BMap.Point(p0,p1);
                                    var iconImg = createIcon(json.icon);
                                    var marker = new BMap.Marker(point,{icon:iconImg});
                                    var iw = createInfoWindow(i);
                                    var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
                                    marker.setLabel(label);
                                    map.addOverlay(marker);
                                    label.setStyle({
                                        borderColor:"#808080",
                                        color:"#333",
                                        cursor:"pointer"
                                    });

                                    (function(){
                                        var index = i;
                                        var _iw = createInfoWindow(i);
                                        var _marker = marker;
                                        _marker.addEventListener("click",function(){
                                            this.openInfoWindow(_iw);
                                        });
                                        _iw.addEventListener("open",function(){
                                            _marker.getLabel().hide();
                                        })
                                        _iw.addEventListener("close",function(){
                                            _marker.getLabel().show();
                                        })
                                        label.addEventListener("click",function(){
                                            _marker.openInfoWindow(_iw);
                                        })
                                        if(!!json.isOpen){
                                            label.hide();
                                            _marker.openInfoWindow(_iw);
                                        }
                                    })()
                                }
                            }
                            //创建InfoWindow
                            function createInfoWindow(i){
                                var json = markerArr[i];
                                var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
                                return iw;
                            }
                            //创建一个Icon
                            function createIcon(json){
                                var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
                                return icon;
                            }

                            initMap();//创建和初始化地图
                        </script>

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