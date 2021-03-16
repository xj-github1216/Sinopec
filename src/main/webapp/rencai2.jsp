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
    <!--from-->
    <script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>

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
                    <div class="rform">
                        <form class="registerform">
                            <table width="100%">
                                <tr>
                                    <td style="width:85px;"><span class="need">*</span>应聘职位：</td>
                                    <td style="width:205px;"><input type="text" value="" name="name" class="inputxt" datatype="*" /></td>
                                </tr>

                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
                                    <td style="width:205px;"><input type="text" value="" name="name" class="inputxt" datatype="s6-18"  errormsg="姓名至少6个字符,最多18个字符！" /></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                                    <td style="width:205px;"><input type="radio" value="1" name="gender" id="male" class="pr1" datatype="*" errormsg="请选择性别！" /><label for="male" style="margin-right: 10px;">男</label> <input type="radio" value="2" name="gender" id="female" class="pr1" /><label for="female">女</label></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>出生年月：</td>
                                    <td style="width:205px;"><input type="text" datatype="*" value="" placeholder="格式：1994-1-15"  class="inputxt"  /></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>民 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族：</td>
                                    <td style="width:205px;"><input type="text" value=""  class="inputxt" datatype="*" /></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>毕业时间：</td>
                                    <td style="width:205px;"><input type="text" value="" placeholder="格式：1994-1-15" name="name" class="inputxt" datatype="*" /></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;">身&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高：</td>
                                    <td style="width:205px;"><input type="text" value="" class="inputxt" /></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</td>
                                    <td style="width:205px;"><input type="text" value="" name="name" class="inputxt" datatype="*" /></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>外&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语：</td>
                                    <td style="width:205px;"><input type="text" value="" name="name" class="inputxt" datatype="*" /></td>
                                </tr>
                                <tr style="clear: both; float: left; width: 64.5%;">
                                    <td style="width:85px;">户籍地址：</td>
                                    <td style="width:370px;"><input type="text" value=""  class="inputxt" style="width: 370px;"/></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</td>
                                    <td style="width:205px;"><input type="text" value="" name="name" class="inputxt" datatype="m" errormsg="请输入正确的手机号码！" /></td>
                                </tr>
                                <tr style="clear: both; float: left; width: 64.5%;">
                                    <td style="width:85px;"> 通讯地址：</td>
                                    <td style="width:370px;"><input type="text" value=""  class="inputxt" style="width: 370px;"/></td>
                                </tr>
                                <tr class="flsit">
                                    <td style="width:85px;"><span class="need">*</span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</td>
                                    <td style="width:205px;"><input type="text" value="" name="name" class="inputxt" datatype="e" errormsg="请输入正确的邮箱地址！" /></td>
                                </tr>
                                <tr style="clear: both; float: left; width: 100%;">
                                    <td style="width:40px;padding-left: 44px;"> 培<br>训<br>及<br>学<br>历</td>
                                    <td style="width:744px;"><textarea  altercss="gray" class="gray" name="msg" value="" style="width: 744px;height: 122px;"></textarea></td>
                                </tr>
                                <tr style="clear: both; float: left; width: 100%;">
                                    <td style="width:40px;padding-left: 44px;"> <span class="need">*</span><br>工<br>作<br>经<br>历</td>
                                    <td style="width:744px;"><textarea  datatype="*" altercss="gray" class="gray" name="msg" value="" style="width: 744px;height: 122px;"></textarea></td>
                                </tr>
                                <tr style="clear: both; float: left; width: 100%;">
                                    <td style="width:40px;padding-left: 44px;"> 自<br>我<br>评<br>价</td>
                                    <td style="width:744px;"><textarea  altercss="gray" class="gray" name="msg" value="" style="width: 744px;height: 122px;"></textarea></td>
                                </tr>
                                <tr style="clear: both; float: left; width: 100%;">
                                    <td style="width:40px;padding-left: 44px;"> 上传</td>
                                    <td style="width:744px;"><input type="file"/></td>
                                </tr>
                                <tr style="clear: both;width: 150px;margin: 0 auto;">
                                    <td colspan="2" style="padding:10px 0 18px 0;">
                                        <input type="submit" value="提 交"  style="padding-left: 0;"/> <input type="reset" value="重 置" style="padding-left: 0;"/>
                                    </td>
                                </tr>
                            </table>
                            <script type="text/javascript">
                                $(function(){
                                    //$(".registerform").Validform();  //就这一行代码！;

                                    $(".registerform").Validform();
                                })
                            </script>
                        </form>



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