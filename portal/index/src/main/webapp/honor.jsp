<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <meta charset="utf-8"/>
    <title>荣耀专区</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="renderer" content="webkit"/>
    <link rel="alternate" media="only screen and (max-width: 720px)">
    <link rel="shortcut icon" href="favicon.ico"/>
    <script src="/js/jquery-1.11.1.min.js"></script>
    <script>
        (function (window) {
            var document = window.document;
            // 下线跳转
            var offlineConfig = {
                time: "",
                url: ""
            }
            if (offlineConfig.time && offlineConfig.url && new Date(offlineConfig.time) < new Date()) {
                window.location.href = offlineConfig.url;
            }
            // 国际化
            window.pageConfig = {
                "locale": "zh-CN",
                "areaCode": "CN",
                "publishTime": "2019/03/27 00:02:31"
            };
        })(window);
    </script>
    <link rel="stylesheet" href="vmall/common.css"/>
    <link rel="stylesheet" href="vmall/ec.core.base.min.css"/>
    <link rel="stylesheet" href="vmall/footer.css"/>
    <link rel="stylesheet" href="vmall/index.min.css"/>
    <link rel="stylesheet" href="vmall/style(1).css"/>
    <link rel="stylesheet" href="vmall/style(2).css"/>
    <link rel="stylesheet" href="vmall/style(3).css"/>
    <link rel="stylesheet" href="vmall/style(4).css"/>
    <link rel="stylesheet" href="vmall/style(5).css"/>
    <link rel="stylesheet" href="vmall/swiper.min.css"/>
    <link rel="stylesheet" type="text/css" href="vmall/common.css-v=20190327000320.css">
    <style id="hash-790914946">
        /*轮播图*/
        .mod-floatslider .mod21-banner {
            position: relative;
            overflow: hidden
        }

        .mod-floatslider .banner-slideshow {
            left: 50%;
            position: relative
        }

        .mod-floatslider .ec-slider {
            position: relative;
            overflow: hidden
        }

        .mod-floatslider .ec-slider-list {
            overflow: hidden;
            position: absolute
        }

        .mod-floatslider .ec-slider-list img {
            vertical-align: top
        }

        .mod-floatslider .ec-slider-item {
            float: left;
            width: 100%
        }

        .mod-floatslider .ec-slider-item-img {
            margin: 0 auto;
            text-align: center
        }

        .mod-floatslider .ec-slider-item-img img {
            width: 100%;
        }

        .mod-floatslider .ec-slider-nav {
            font-size: 1px;
            line-height: 1px;
            height: 15px;
            position: absolute;
            bottom: 14px;
            left: 50%;
            margin-left: -200px;
            width: 400px;
            text-align: center;
        }

        .mod-floatslider .ec-slider-nav span {
            border-radius: 14px;
            border: 0px solid #FFF;
            display: inline-block;
            height: 14px;
            line-height: 14px;
            text-align: center;
            color: #fff;
            margin-left: 10px;
            width: 14px;
            background-image: url(vmall/fe89b2e4-ca1d-42ae-b6ac-a7f54e5d6a4b.png) /*tpa=http://res2.vmallres.com/shopdc/pic/fe89b2e4-ca1d-42ae-b6ac-a7f54e5d6a4b.png*/;
            cursor: default;
            opacity: 1;
            filter: alpha(opacity=100);
            background-color: transparent;
        }

        .mod-floatslider .ec-slider-nav .current {
            background-color: transparent;
            background-image: url('vmall/8547e797-492c-4cd7-9c94-e262217e9278.png') /*tpa=https://res2.vmallres.com/shopdc/pic/8547e797-492c-4cd7-9c94-e262217e9278.png*/;
        }

        .mod-floatslider .button-slider-prev,
        .mod-floatslider .button-slider-next {
            position: absolute;
            z-index: 3;
            width: 17px;
            height: 28px;
            top: 50%;
            margin-top: -14px;
            border-radius: 2px
        }

        .mod-floatslider .button-slider-prev {
            left: 8px;
            background-position: -17px -24px
        }

        .mod-floatslider .button-slider-next {
            right: 8px;
            background-position: 4px -24px
        }

        .mod-floatslider .button-slider-prev-high,
        .mod-floatslider .button-slider-next-high,
        .mod-floatslider .button-slider-prev:hover,
        .mod-floatslider .button-slider-next:hover {
            background-color: rgba(191, 191, 191, .8);
            background-color: #CCC;
            *background-color: #CCC
        }

        .mod-floatslider .button-slider-prev-high,
        .mod-floatslider .button-slider-prev:hover {
            background-position: -37px -24px
        }

        .mod-floatslider .button-slider-next-high,
        .mod-floatslider .button-slider-next:hover {
            background-position: -56px -24px
        }
    </style>
    <style id="hash--1385650143">
        /*图模块*/
        .mod-pic {
            position: relative
        }

        .mod-pic .J_anchors {
            top: 0
        }

        .mod-pic .pic-wrap {
            position: relative;
            z-index: 1;
            width: 10000%;
            left: 50%;
            margin-left: -5000%;
            overflow: hidden;
            text-align: center;
        }
    </style>
    <style id="hash--801200667">
        /*荣耀专区*/
        .nav-home .naver a:hover::before,
        .nav-home .naver .current::before {
            background: #00b5e2
        }

        .nav-home .naver-sub .naver-sub-wrap .grid-items:hover .grid-title {
            color: #00b5e2
        }

        .nav-home .naver .current {
            color: #00b5e2
        }

        .nav-home .naver-sub .naver-sub-wrap .p-title .s2 a:hover {
            color: #00b5e2;
        }

        .nav-home .naver a:hover {
            color: #00b5e2
        }

        .nav-home .search-bar .search-bar-key a:hover {
            color: #00b5e2;
        }

        .nav-home .grid-items .grid-price {
            color: #00b5e2
        }

        .nav-home .naver-sub .naver-sub-wrap .p-title .s1 a:hover {
            color: #00b5e2;
        }
    </style>
</head>

<body style="background-color:#fff;">
<div class="J_page">
    <div class="J_row clearfix ">
        <div class="J_col col-side-full clearfix ">
            <div class="J_mod mod-ad-collapse"
                 style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">
                <!-- 收缩广告 -->
                <div class="ad-collapse " style="display: none; ">
                    <div class="img">
                        <a class="j-todo"
                           style="display:block;position:relative;height:auto; text-align:center;width:1920px;left:50%;margin-left:-960px; "
                           href="javascript:; ">
                            <img src="vmall/55d1d84d-e489-4174-b45b-d39c0cae24c6.jpg">
                        </a>
                    </div>
                </div>
                <div class="banner-min">
                    <div class="img">
                        <a class="j-todo"
                           style="display:block;position:relative;height:auto; text-align:center;width:1920px;left:50%;margin-left:-960px; "
                           target="_blank "
                           href="javascript:if(confirm(%27https://sale.vmall.com/ry-company.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://sale.vmall.com/ry-company.html%27 ">
                            <img src="vmall/55d1d84d-e489-4174-b45b-d39c0cae24c6.jpg">
                        </a>
                    </div>
                </div>
                <div class="btns">
                    <a title="折叠 " href="javascript:; " class="btn btn-up ">-</a>
                    <a title="展开 " href="javascript:; " class="btn btn-down ">+</a>
                    <a class="btn btn-close " href="javascript:; " title="关闭 ">x</a>
                </div>
                <!-- /收缩广告 -->
            </div>
            <div class="J_mod mod-shortcut shortcut " style="overflow:visible; " disable-edit="true "
                 disable-release="true " disable-copy="true ">
                <style>
                    .shortcut .dropdown-more dl {
                        border-bottom: 0px solid #eaeaea;
                        padding-bottom: 0px;
                    }

                    .shortcut .dropdown-more dl a {
                        color: #3a3a3a;
                    }

                    .shortcut .dropdown-more a {
                        color: #3a3a3a;
                    }

                    .shortcut .code p {
                        color: #717171;
                    }
                </style>
                <div class="shortcut ">
                    <div class="layout ">
                        <div class="s-sub ">
                            <ul>
                                <li><a href="index.htm "
                                       onclick="pushHeaderMsg( '首页', 'https://www.vmall.com') ">首页</a></li>
                                <li>
                                    <a href="javascript:if(confirm(%27http://consumer.huawei.com/cn/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://consumer.huawei.com/cn/%27 "
                                       target="_blank ">华为官网</a></li>
                                <li>
                                    <a href="javascript:if(confirm(%27http://www.honor.cn/ \n\nThis file was not retrieved by Teleport Ultra, blause it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.honor.cn/%27 "
                                       target="_blank ">荣耀官网</a></li>
                                <li>
                                    <a href="javascript:if(confirm(%27http://club.huawei.com/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://club.huawei.com/%27 "
                                       target="_blank ">花粉俱乐部</a></li>
                                <li>
                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fpriority \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fpriority%27 "
                                       rel="nofollow ">V码(优购码)</a></li>
                                <li>
                                    <a href="javascript:if(confirm(%27http://company.vmall.com/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://company.vmall.com/%27 "
                                       target="_blank ">企业购</a></li>
                                <li class="s-hwep hide " id="li-enterprise-preferential "></li>
                                <li><a id="showSelectRegion " href="javascript:; ">Select Region</a></li>
                            </ul>
                        </div>
                        <div class="s-main ">
                            <ul>
                                <li id="unlogin_status ">
                                    <div id="top_unlogin " class="header-toolbar ">
                                        <!-- 2017-02-15-头部-工具栏-焦点为header-toolbar-item增加ClassName:hover -->
                                        <div class="header-toolbar-item ">
                                            <div class="i-login ">
                                                <div class="h ">
                                                    <div class=" ">
                                                        <!--
                                                <script>
                                                document.write('<a id="top-index-loginUrl " href="javascript:; " onclick="location.href=' + window.loginLink + ' ; " rel="nofollow ">请登录</a>');
                                                </script>
                                                -->
                                                        <a id="top-index-loginUrl " href="javascript:; "
                                                           onclick="location.href=window.loginLink; " rel="nofollow ">请登录</a>
                                                        <a href="javascript:; "
                                                           onclick="location.href=window.registerLink; "
                                                           rel="nofollow ">&nbsp;&nbsp;注册</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li id="login_status " class="hide ">
                                    <div id="top_login " class="header-toolbar hide ">
                                        <div class="s-dropdown ">
                                            <div class="h h-wide " id="up_loginName-hover ">
                                                <a class="icon-dropdown "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%3Ft%3D1515640858430 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%3Ft%3D1515640858430%27 "
                                                   target="_blank "><span id="up_loginName "></span></a>&nbsp;
                                            </div>
                                            <div class="b ">
                                                <!-- 2017-06-19-个人信息-start -->
                                                <div class="dropdown-i-mall ">
                                                    <div class="i-mall-prompt clearfix ">
                                                        <div class="user-head fl ">
                                                            <div class="user-canvas ">
                                                                <span id="user-vip-level-tips "
                                                                      class="icon-vip-level-0 "></span>
                                                                <div class="canvas-bg ">
                                                                    <div class="canvas-left ">
                                                                        <div id="canvas-left "
                                                                             style="transform: rotateZ(-121deg); "></div>
                                                                    </div>
                                                                    <div class="canvas-right ">
                                                                        <div id="canvas-right "></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <img src="vmall/bg71.png "
                                                                 class="user-img-shade ">
                                                            <p class="user-img ">
                                                                <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%3Ft%3D1547106937940timestamp \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%3Ft%3D1547106937940timestamp%27 "
                                                                   rel="nofollow " timeType="timestamp "
                                                                   target="_blank "
                                                                   onclick="pushLoginMsg( '已登录', '头像') ">
                                                                    <img id="customerPic "
                                                                         src="vmall/img_not_logged_in.png" alt="默认头像 "
                                                                         imgpath="https://res.vmallres.com/20190107/images"/>
                                                                </a>
                                                            </p>
                                                        </div>
                                                        <div class="user-info fl ">
                                                            <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%3Ft%3D1547106937940timestamp \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%3Ft%3D1547106937940timestamp%27 "
                                                               rel="nofollow " target="_blank "
                                                               onclick="pushLoginMsg( '已登录', '用户名')">
                                                                <div class="user-info-name "
                                                                     id="up_loginName_info "></div>
                                                            </a>
                                                            <div class="user-info-detail clearfix " id="vip-info ">
                                                                <a id="authentication_y " class="icon-realname hide ">已实名</a>
                                                                <a id="authentication_n"
                                                                   href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fauthmember%2Faccesstoken \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fauthmember%2Faccesstoken%27 "
                                                                   rel="nofollow " class="icon-realname disabled hide "
                                                                   onclick="pushLoginMsg( '已登录', '未实名') ">未实名</a>
                                                                <a class="icon-mail "
                                                                   href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Fmsg%3Ft%3D1547106937940timestamp \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Fmsg%3Ft%3D1547106937940timestamp%27 "
                                                                   rel="nofollow " timeType="timestamp "
                                                                   onclick="pushLoginMsg( '已登录', '消息中心') ">消息中心 <span
                                                                        id="top-newMsgCount " class="hide ">0</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="i-mall-uc ">
                                                        <dl class="clearfix ">
                                                            <dt><span class="fl ">我的订单</span>
                                                                <a class="fr "
                                                                   href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp%27 "
                                                                   timeType="timestamp ">更多&gt;</a>
                                                            </dt>
                                                        </dl>
                                                        <div class="i-mall-uc-con ">
                                                            <dl class="clearfix ">
                                                                <dd>
                                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp%26tab%3Dunpaid \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp%26tab%3Dunpaid%27 "
                                                                       timeType="timestamp ">待支付</a>
                                                                </dd>
                                                                <dd>
                                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp%26tab%3Dsend \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp%26tab%3Dsend%27 "
                                                                       timeType="timestamp ">待收货</a>
                                                                </dd>
                                                                <dd>
                                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp%26tab%3Dnocomment \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp%26tab%3Dnocomment%27 "
                                                                       timeType="timestamp ">待评价</a>
                                                                </dd>
                                                                <dd>
                                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Fexchange%3Ft%3D1515640858430timestamp \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Fexchange%3Ft%3D1515640858430timestamp%27 "
                                                                       timeType="timestamp ">退换货</a>
                                                                </dd>
                                                                <dd>
                                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Frecycle%2Findex%2Faihuishou%3Ft%3D1515640858430timestamp \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Frecycle%2Findex%2Faihuishou%3Ft%3D1515640858430timestamp%27 "
                                                                       timeType="timestamp ">旧机回收</a>
                                                                </dd>
                                                            </dl>
                                                        </div>
                                                    </div>
                                                    <div class="i-mall-huaban ">
                                                        <ul class="clearfix ">
                                                            <li>
                                                                <p class="p-img ">
                                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Fnewpoint%3Ft%3D1515640858430 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Fnewpoint%3Ft%3D1515640858430%27 "
                                                                       target="_blank ">
                                                                        <span class="img01 "></span>
                                                                    </a>
                                                                </p>
                                                                <p class="p-dec ">积分</p>
                                                                <p class="p-price "><span id="userPointBalance ">--&nbsp;</span></a>
                                                                    分</p>
                                                            </li>
                                                            <li>
                                                                <p class="p-img ">
                                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Fcoupon%3Ft%3D1515640858430 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Fcoupon%3Ft%3D1515640858430%27 "
                                                                       target="_blank ">
                                                                        <span class="img02 "></span>
                                                                    </a>
                                                                </p>
                                                                <p class="p-dec ">优惠券</p>
                                                                <p class="p-price ">
                                                                    <span id="top-couponCount ">--&nbsp;</span>张
                                                                </p>
                                                            </li>
                                                            <li>
                                                                <p class="p-img ">
                                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Fbalance%3Ft%3D1515640858430 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Fbalance%3Ft%3D1515640858430%27 "
                                                                       target="_blank ">
                                                                        <span class="img03 "></span>
                                                                    </a>
                                                                </p>
                                                                <p class="p-dec ">代金券</p>
                                                                <p class="p-price "><span
                                                                        id="balanceAmount ">--&nbsp;</span>元</p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="i-out ">
                                                        <a href="javascript:if(confirm(%27https://hwid1.vmall.com/CAS/logout?service=https://www.vmall.com \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://hwid1.vmall.com/CAS/logout?service=https://www.vmall.com%27 ">
                                                            退出登录
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 2017-06-19-个人信息-end -->
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <a href="javascript:if(confirm(%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/account/login?url=%2Fmember%2Forder%3Ft%3D1515640858430timestamp%27 "
                                       timeType="timestamp ">我的订单</a>
                                </li>
                                <li>
                                    <div class="s-dropdown s-dropdown-link ">
                                        <div class="h ">
                                            <a class="icon-dropdown ">客户服务</a>
                                        </div>
                                        <div class="b ">
                                            <div class="dropdown-more ">
                                                <dl>
                                                    <dt><a href="index.html "
                                                           target="_blank ">帮助中心</a></dt>
                                                    <dt>
                                                        <a href="javascript:if(confirm(%27http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af%27 "
                                                           target="_blank ">联系客服</a></dt>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="s-dropdown ">
                                        <div class="h ">
                                            <a href="# " target="_blank " class="icon-dropdown ">网站导航</a>
                                        </div>
                                        <div class="b ">
                                            <div class="dropdown-navs clearfix ">
                                                <p><a href="index.htm "></a></p>
                                                <div class="dropdown-navs-icon ">
                                                    <a href="index.htm ">商城首页</a>
                                                </div>
                                                <p><br/></p>
                                                <dl>
                                                    <dt>频道</dt>
                                                    <dd>
                                                        <div class="item "><a href="huawei.htm "
                                                                              tppabs="https://www.vmall.com/huawei "
                                                                              target="_blank ">华为专区</a></div>
                                                        <div class="item "><a href="honor.htm "
                                                                              tppabs="https://www.vmall.com/honor "
                                                                              target="_blank ">荣耀专区</a></div>
                                                        <div class="item "><a
                                                                href="javascript:if(confirm(%27http://company.vmall.com/client.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://company.vmall.com/client.html%27 "
                                                                tppabs="http://company.vmall.com/client.html "
                                                                target="_blank ">企业购</a></div>
                                                    </dd>
                                                </dl>
                                                <dl>
                                                    <dt>产品</dt>
                                                    <dd>
                                                        <div class="item "><a href="list-36.htm "
                                                                              tppabs="https://www.vmall.com/list-36 "
                                                                              target="_blank ">手机</a></div>
                                                        <div class="item "><a href="list-43.htm "
                                                                              tppabs="https://www.vmall.com/list-43 "
                                                                              target="_blank ">智能家居</a></div>
                                                        <div class="item "><a href="list-40.htm "
                                                                              tppabs="https://www.vmall.com/list-40 "
                                                                              target="_blank ">平板&amp;笔记本</a></div>
                                                        <div class="item "><a href="list-54.htm "
                                                                              tppabs="https://www.vmall.com/list-54 "
                                                                              target="_blank ">通用配件</a></div>
                                                        <div class="item "><a href="list-59.htm "
                                                                              tppabs="https://www.vmall.com/list-59 "
                                                                              target="_blank ">智能穿戴</a></div>
                                                        <div class="item "><a href="list-47.htm "
                                                                              tppabs="https://www.vmall.com/list-47 "
                                                                              target="_blank ">专属配件</a></div>
                                                    </dd>
                                                </dl>
                                                <dl>
                                                    <dt>增值服务</dt>
                                                    <dd>
                                                        <div class="item "><a href="recycle.htm "
                                                                              tppabs="https://www.vmall.com/recycle "
                                                                              target="_blank ">以旧换新</a></div>
                                                        <div class="item "><a href="10086344499475.html#10086230774569 "
                                                                              tppabs="https://www.vmall.com/product/10086344499475.html#10086230774569 "
                                                                              target="_blank ">礼品包装</a></div>
                                                        <div class="item "><a href="tcsProductIndex.htm "
                                                                              tppabs="https://www.vmall.com/order/tcsProductIndex "
                                                                              target="_blank ">补购保障</a></div>
                                                        <div class="item "><a href="batteryRenew.htm "
                                                                              tppabs="https://www.vmall.com/order/batteryRenew "
                                                                              target="_blank ">99元换电池</a></div>
                                                    </dd>
                                                </dl>
                                                <dl>
                                                    <dt>会员</dt>
                                                    <dd>
                                                        <div class="item "><a href="privilege.htm "
                                                                              tppabs="https://www.vmall.com/privilege "
                                                                              target="_blank ">会员频道</a></div>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="downloadApp ">
                                    <div class="s-dropdown ">
                                        <div class="h ">
                                            <a class="icon-dropdown ">手机版</a>
                                        </div>
                                        <div class="b ">
                                            <div class="dropdown-code ">
                                                <div class="clearfix dropdown-code-detail "
                                                     style="border-bottom:1px solid #e5e5e5;padding-bottom:20px;margin-bottom:20px; ">
                                                    <a href="appdownload.htm "
                                                       tppabs="https://www.vmall.com/appdownload " target="_blank "
                                                       onclick="pushHeaderMsg(&#39;下载客户端img&#39;,&#39;https://www.vmall.com/appdownload&#39;) ">
                                                        <img src="vmall/vdXKxUJLNEyWA82x5BBx.jpg "
                                                             tppabs="https://res.vmallres.com/pimages//sale/2018-12/vdXKxUJLNEyWA82x5BBx.jpg "
                                                             class="code-img "/> </a>
                                                    <div class="code-info "><h2>华为商城APP</h2>
                                                        <p class="red ">新人专享好礼<br/>最高5000积分</p>
                                                        <span class="icon-andrid "></span></div>
                                                </div>
                                                <div class="clearfix dropdown-code-detail "><a> <img
                                                        src="vmall/zyczwPf1z8ih80U7fIs9.jpg "
                                                        tppabs="https://res.vmallres.com/pimages//sale/2018-12/zyczwPf1z8ih80U7fIs9.jpg "
                                                        class="code-img "/> </a>
                                                    <div class="code-info "><h2>华为商城公众号</h2>
                                                        <p>微信扫一扫</p>                                        <span
                                                                class="icon-wechat "></span></div>
                                                </div>
                                                <div class="clearfix dropdown-code-detail "><a> <img
                                                        src="vmall/6Y7SW4v4hnJ9kl9fDC9d.jpg "
                                                        tppabs="https://res.vmallres.com/pimages//sale/2018-12/6Y7SW4v4hnJ9kl9fDC9d.jpg "
                                                        class="code-img "/> </a>
                                                    <div class="code-info "><h2>微信小程序</h2>
                                                        <p>微信扫一扫</p>                                        <span
                                                                class="icon-wechat "></span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="s-dropdown s-dropdown-minicart ">
                                        <div class="h h-wide " id="header-toolbar-minicart ">
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/cart2?t=1515640858430timestamp \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/cart2?t=1515640858430timestamp%27 "
                                               tppabs="https://www.vmall.com/cart?t=1515640858430timestamp "
                                               class="icon-minicart " rel="nofollow " timeType="timestamp "
                                               target="blank ">
                                                <span>购物车(<span id="header-cart-total ">0</span>)</span>
                                            </a>
                                        </div>
                                        <div class="b " id="header-toolbar-minicart-content ">
                                            <!-- 2017-06-19-迷你购物车-start -->
                                            <div class="dropdown-minicart ">
                                                <div class="minicart-pro-empty minicart-pro-empty-index "
                                                     id="minicart-pro-empty ">
                                                    <p><span class="icon-minicart "></span></p>
                                                    <p>您的购物车是空的，赶紧选购吧~</p>
                                                </div>
                                                <div class="minicart-pro-list minicart-pro-list-scroll hide "
                                                     id="minicart-pro-list-block ">
                                                    <ul class="minicart-pro-list " id="minicart-goods-list "></ul>
                                                    <div class="minicart-pro-settleup " id="minicart-pro-settleup ">
                                                        <p>
                                                            <span>总计：</span>
                                                            <span><b id="micro-cart-totalPrice ">&yen;&nbsp;0</b><s
                                                                    id="micro-cart-totalOriginPrice ">&yen;&nbsp;0</s></span>
                                                        </p>
                                                        <a class="button-minicart " id="button-minicart-go2confirm "
                                                           href="javascript:; "
                                                           onclick="ec.account.isLogin() ? ec.minicart.confirm() : window.location.href=window.loginLink; ">结算</a>
                                                        <a class="button-minicart disabled "
                                                           id="disbutton-minicart-go2confirm "
                                                           style="display:none; ">结算</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- 2017-06-19-迷你购物车-end -->
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 选择地区 -->
                <textarea id="selectRegion-tips " style="display: none; ">
    <div class="box-content "><div class="box-lan-choose "><dl><dt>Asia Pacific</dt><dd class="box-button "><a
            class="box-choose "
            href="javascript:if(confirm(%27http://www.vmall.hk/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.vmall.hk/%27 "
            tppabs="http://www.vmall.hk/ ">香港</a><a class="box-choose "
                                                    href="javascript:if(confirm(%27https://store.hihonor.com/in/?utm_source=vmall&utm_medium=navigation&utm_campaign=daily \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://store.hihonor.com/in/?utm_source=vmall&utm_medium=navigation&utm_campaign=daily%27 "
                                                    tppabs="https://store.hihonor.com/in/?utm_source=vmall&utm_medium=navigation&utm_campaign=daily ">India</a><a
            class="box-choose "
            href="javascript:if(confirm(%27http://www.vmall.my/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.vmall.my/%27 "
            tppabs="http://www.vmall.my/ ">Malaysia</a></dd></dl><dl class="box-lan-choose-area "><dt>The United States</dt><dd
            class="box-button "><a class="box-choose "
                                   href="javascript:if(confirm(%27https://store.hihonor.com/us \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://store.hihonor.com/us%27 "
                                   tppabs="https://store.hihonor.com/us ">United States</a></dd></dl><dl
            class="box-lan-choose-area "><dt>Europe</dt><dd class="box-button "><a class="box-choose "
                                                                                   href="javascript:if(confirm(%27http://www.vmall.ru/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.vmall.ru/%27 "
                                                                                   tppabs="http://www.vmall.ru/ ">Россия</a><a
            class="box-choose "
            href="javascript:if(confirm(%27https://store.hihonor.com/fr \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://store.hihonor.com/fr%27 "
            tppabs="https://store.hihonor.com/fr ">France</a><a class="box-choose "
                                                                href="javascript:if(confirm(%27https://store.hihonor.com/de \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://store.hihonor.com/de%27 "
                                                                tppabs="https://store.hihonor.com/de ">Deutschland</a><a
            class="box-choose "
            href="javascript:if(confirm(%27https://store.hihonor.com/it \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://store.hihonor.com/it%27 "
            tppabs="https://store.hihonor.com/it ">Italia</a><a class="box-choose "
                                                                href="javascript:if(confirm(%27https://store.hihonor.com/es \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://store.hihonor.com/es%27 "
                                                                tppabs="https://store.hihonor.com/es ">Espa?a</a><a
            class="box-choose "
            href="javascript:if(confirm(%27https://store.hihonor.com/uk \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://store.hihonor.com/uk%27 "
            tppabs="https://store.hihonor.com/uk ">UK</a></dd></dl><dl class="box-lan-choose-area "><dt>Middle East</dt><dd>
            class="box-button "><a
            href="javascript:if(confirm(%27http://www.vmall.hk/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.vmall.hk/%27 "
            tppabs="http://www.vmall.hk/ " target="_self " textvalue="Saudi Arabia "></a><a class="box-choose "
                                                                                            href="javascript:if(confirm(%27http://www.honorarabia.com/uae/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.honorarabia.com/uae/%27 "
                                                                                            tppabs="http://www.honorarabia.com/uae/ ">United Arab Emirates</a><a
            class="box-choose "
            href="javascript:if(confirm(%27http://www.honorarabia.com/ksa/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.honorarabia.com/ksa/%27 "
    >Saudi Arabia</a></dd></dl></div></div>
    </textarea>
            </div>

            <div class="J_mod mod-nav-home nav-home-330694 ">
                <div class="nav-home ">
                    <div class="layout ">
                        <div class="left ">
                            <!-- logo-start -->
                            <div class="logo logo-area ">
                                <a href="index.htm " title="Vmall.com - 华为商城 ">
                                    <img src="vmall/014ae064-f179-40f7-aa7a-995c5c57a401.png" alt="Vmall.com - 华为商城 ">
                                </a>
                                <em></em>
                                <a href="honor.htm " tppabs="https://www.vmall.com/honor ">
                                    <img src="vmall/6b68e1c4-c817-40e7-97e3-489e7f1d4ddc.png "/>
                                </a>
                            </div>
                            <!-- logo-end -->

                            <!-- 导航-start -->
                            <div class="naver " data-flag="true ">
                                <ul id="naver-list clearfix ">
                                    <li>
                                        <a href="list-159.htm "
                                           onclick="_paq.push([ 'trackLink', '点击首页活动导航第1位', 'link', '']);ec.code.addAnalytics({hicloud:true}); "
                                           target="_blank ">
                                            <span>荣耀手机</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="list-161.htm "
                                           onclick="_paq.push([ 'trackLink', '点击首页活动导航第1位', 'link', '']);ec.code.addAnalytics({hicloud:true}); "
                                           target="_blank ">
                                            <span>笔记本&amp;平板</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="list-217.htm"
                                           onclick="_paq.push([ 'trackLink', '点击首页活动导航第1位', 'link', '']);ec.code.addAnalytics({hicloud:true}); "
                                           target="_blank ">
                                            <span>潮流穿戴</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="list-163.htm "
                                           onclick="_paq.push([ 'trackLink', '点击首页活动导航第1位', 'link', '']);ec.code.addAnalytics({hicloud:true}); "
                                           target="_blank ">
                                            <span>智能家居</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="list-165.htm "
                                           onclick="_paq.push([ 'trackLink', '点击首页活动导航第1位', 'link', '']);ec.code.addAnalytics({hicloud:true}); "
                                           target="_blank ">
                                            <span>炫彩配件</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- 导航-end -->

                            <div class="naver-sub" style="display:block">

                                <div class="naver-sub-wrap" style="display: none">
                                    <div class="p-title clearfix">
                                        <div class="s1 fl ">
                                            <a href="list-159.htm "target="_blank ">
                                                <span>${listCategory[0].hpcName}</span>
                                            </a>
                                        </div>
                                        <div class="s2 fl clearfix">
                                            <a href="list-171.htm " target="_blank "
                                               class="fl">${listCategory[0].categoryList[0].hpcName}</a>
                                            <a href="list-173.htm " target="_blank "
                                               class="fl">${listCategory[0].categoryList[1].hpcName}</a>
                                        </div>
                                    </div>
                                    <ul id="zxnav_0_prolist " class="grid-list clearfix">
                                        <!-- $item.addItems.navs == 'nav0' 保存后取值-->
                                        <!-- $item.navs == 'nav0' 默认取值(组件拖入页面时)-->
                                        <li class="grid-items " data-track="fasle " data--code="2601010077502 ">
                                            <a class="thumb " target="_blank " href="10086983017283.html#10086258120116 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[0].phonesList[0].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[0].phonesList[0].phoneName}</div>
                                                <p class="grid-price ">
                                                    &#165;${listCategory[0].phonesList[0].phoneOriginalprice}
                                                </p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="fasle " data-sbom-code="2601010038102">
                                            <a class="thumb " target="_blank"
                                               href="10086785341226.html#10086431508342">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[0].phonesList[1].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[0].phonesList[1].phoneName}</div>
                                                <p class="grid-price ">
                                                    &#165;${listCategory[0].phonesList[1].phoneOriginalprice}
                                                </p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2601010083802 ">
                                            <a class="thumb " target="_blank "
                                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086789934944.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086789934944.html#10086772693857%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[0].phonesList[2].imageList[1].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[0].phonesList[2].phoneName}</div>
                                                <p class="grid-price ">
                                                    &#165;${listCategory[0].phonesList[2].phoneOriginalprice}
                                                </p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2601010014008 ">
                                            <a class="thumb " target="_blank "
                                               href="javascript:if(confirm(%27https://www.vmall.com/product/570379791.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/570379791.html#574239706%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[0].phonesList[3].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[0].phonesList[3].phoneName}</div>
                                                <p class="grid-price ">
                                                    &#165;${listCategory[0].phonesList[3].phoneOriginalprice}
                                                </p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2601010058702 ">
                                            <a class="thumb " target="_blank "
                                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086286769025.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086286769025.html#10086094496460%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[0].phonesList[4].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[0].phonesList[4].phoneName}</div>
                                                <p class="grid-price ">
                                                    &#165;${listCategory[0].phonesList[4].phoneOriginalprice}
                                                </p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2601010050702 ">
                                            <a class="thumb " target="_blank "
                                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086305784772.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086305784772.html#10086617332760%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[0].phonesList[5].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[0].phonesList[5].phoneName}</div>
                                                <p class="grid-price ">
                                                    &#165;${listCategory[0].phonesList[5].phoneOriginalprice}
                                                </p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2601010055502 ">
                                            <a class="thumb " target="_blank "
                                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086712964531.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086712964531.html#10086906323992%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[0].phonesList[6].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[0].phonesList[6].phoneName}</div>
                                                <p class="grid-price ">
                                                    &#165;${listCategory[0].phonesList[6].phoneOriginalprice}
                                                </p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="naver-sub-wrap " style="display: none; ">
                                    <div class="p-title clearfix ">
                                        <div class="s1 fl ">
                                            <a href="list-161.htm " target="_blank ">
                                                <span>${listCategory[1].hpcName}</span>
                                            </a>
                                        </div>
                                        <div class="s2 fl clearfix ">
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-395 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-395%27"
                                               target="_blank "
                                               class="fl ">${listCategory[1].categoryList[0].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-177 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-177%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[1].categoryList[1].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-401 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-401%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[1].categoryList[2].hpcName}</a>
                                        </div>
                                    </div>
                                    <ul id="zxnav_1_prolist " class="grid-list clearfix">
                                        <li class="grid-items " data-track="true " data-sbom-code="2801010002401 ">
                                            <a class="thumb " target="_blank "
                                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086350349834.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086350349834.html#10086734411761%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[1].phonesList[0].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[1].phonesList[0].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[1].phonesList[0].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2801010002401 ">
                                            <a class="thumb " target="_blank "
                                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086350349834.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086350349834.html#10086734411761%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[1].phonesList[1].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[1].phonesList[1].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[1].phonesList[1].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2701010007703 ">
                                            <a class="thumb" target="_blank " href="javascript:if(confirm(%27https://www.vmall.com/product/10086527872485.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086527872485.html#10086108080224%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[1].phonesList[2].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[1].phonesList[2].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[1].phonesList[2].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2701010000802 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/516255415.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/516255415.html#865440091%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[1].phonesList[3].imageList[1].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[1].phonesList[3].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[1].phonesList[3].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="1201010004504 ">
                                            <a class="thumb " target="_blank " href="javascript:if(confirm(%27https://www.vmall.com/product/405225095.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/405225095.html#852174199%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[1].phonesList[4].imageList[1].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[1].phonesList[4].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[1].phonesList[4].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="1201010004404 ">
                                            <a class="thumb" target="_blank " href="javascript:if(confirm(%27https://www.vmall.com/product/121879018.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/121879018.html#729361012%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[1].phonesList[5].imageList[1].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[1].phonesList[5].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[1].phonesList[5].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2701010000201 ">
                                            <a class="thumb " target="_blank " href="javascript:if(confirm(%27https://www.vmall.com/product/306161153.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/306161153.html#234223211%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[1].phonesList[6].imageList[1].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[1].phonesList[6].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[1].phonesList[6].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="naver-sub-wrap " style="display: none; ">
                                    <div class="p-title clearfix ">
                                        <div class="s1 fl ">
                                            <a href="list-217.htm " target="_blank "><span>${listCategory[2].hpcName}</span></a>
                                        </div>
                                        <div class="s2 fl clearfix ">
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-219 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-219%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[2].categoryList[0].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-219 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-219%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[2].categoryList[1].hpcName}</a>
                                        </div>
                                    </div>
                                    <ul id="zxnav_2_prolist " class="grid-list clearfix ">
                                        <li class="grid-items " data-track="true " data-sbom-code="2901010004801 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/10086268042691.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086268042691.html#10086253509221%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[2].phonesList[0].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[2].phonesList[0].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[2].phonesList[0].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2901010006001 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/10086482881108.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086482881108.html#10086302750215%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[2].phonesList[1].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[2].phonesList[1].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[2].phonesList[1].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2901010005601 ">
                                            <a class="thumb " target="_blank " href="javascript:if(confirm(%27https://www.vmall.com/product/10086568646192.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086568646192.html#10086093637498%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" "src="${listCategory[2].phonesList[2].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[2].phonesList[2].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[2].phonesList[2].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2901020005601 ">
                                            <a class="thumb " target="_blank "href="javascript:if(confirm(%27https://www.vmall.com/product/10086686072684.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086686072684.html#10086455419044%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[2].phonesList[3].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[2].phonesList[3].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[2].phonesList[3].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2901020005801 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/10086913521308.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086913521308.html#10086949141018%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[2].phonesList[4].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[2].phonesList[4].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[2].phonesList[4].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2202010000401 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/993405255.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/993405255.html#419942774%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[2].phonesList[5].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[2].phonesList[5].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[2].phonesList[5].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="2202010000201 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/369652507.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/369652507.html#532696479%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="${listCategory[2].phonesList[6].imageList[0].bigimgPath}">
                                                </p>
                                                <div class="grid-title ">${listCategory[2].phonesList[6].phoneName}</div>
                                                <p class="grid-price ">&#165;${listCategory[2].phonesList[6].phoneOriginalprice}</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="naver-sub-wrap " style="display: none; ">
                                    <div class="p-title clearfix ">
                                        <div class="s1 fl ">
                                            <a href="list-163.htm" target="_blank "><span>${listCategory[3].hpcName}</span></a>
                                        </div>
                                        <div class="s2 fl clearfix ">
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-183 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-183%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[0].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-181 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-181%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[1].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-185 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-185%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[2].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-383 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-383%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[3].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-437 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-437%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[4].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-439 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-439%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[5].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-385 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-385%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[6].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-391 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-391%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[7].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-415 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-415%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[8].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-389 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-389%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[9].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-417 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-417%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[10].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-387 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-387%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[11].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-419 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-419%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[12].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-441 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-441%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[13].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-393 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-393%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[3].categoryList[14].hpcName}</a>
                                        </div>
                                    </div>
                                    <ul id="zxnav_3_prolist " class="grid-list clearfix ">
                                        <li class="grid-items " data-track="true " data-sbom-code="3102060004501 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/10086862057573.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086862057573.html#10086477642869%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1546411816762mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀YOYO智能音箱</div>
                                                <p class="grid-price ">&#165;199</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="3001010010301 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/10086007028117.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086007028117.html#10086094709326%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1539912533064mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀路由 X2</div>
                                                <p class="grid-price ">&#165;149</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="3001010008801 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/10086958063836.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086958063836.html#10086943604110%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1542765330080mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀路由2S</div>
                                                <p class="grid-price ">&#165;199</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="3001010000601 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/202235028.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/202235028.html#964803411%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1542768241169mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀分布式路由</div>
                                                <p class="grid-price ">&#165;799</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="1104010004801 ">
                                            <a class="thumb " target="_blank " href="javascript:if(confirm(%27https://www.vmall.com/product/582146467.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/582146467.html%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/142_142_1500025136978mp.jpg">
                                                </p>
                                                <div class="grid-title ">荣耀路由X1</div>
                                                <p class="grid-price ">&#165;99</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="10111040102203 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/1822.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/1822.html#329588060%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1539913652353mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀路由 标准版</div>
                                                <p class="grid-price ">&#165;159</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="1506010001301 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/690174055.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/690174055.html#361227976%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1538969920769mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀盒子Pro</div>
                                                <p class="grid-price ">&#165;419</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="naver-sub-wrap " style="display: none; ">
                                    <div class="p-title clearfix ">
                                        <div class="s1 fl ">
                                            <a href="list-165.htm " target="_blank "><span>${listCategory[4].hpcName}</span></a>
                                        </div>
                                        <div class="s2 fl clearfix ">
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-191 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-191%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[0].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-189 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-189%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[1].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-193 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-193%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[2].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-209 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-209%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[3].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-281 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-281%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[4].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-305 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-305%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[5].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-307 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-307%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[6].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-309 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-309%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[7].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-311 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-311%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[8].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-574 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-574%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[9].hpcName}</a>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-323 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-323%27 "
                                               target="_blank "
                                               class="fl ">${listCategory[4].categoryList[10].hpcName}</a>
                                        </div>
                                    </div>
                                    <ul id="zxnav_4_prolist " class="grid-list clearfix ">
                                        <li class="grid-items " data-track="true " data-sbom-code="3102050007101 ">
                                            <a class="thumb " target="_blank " href="javascript:if(confirm(%27https://www.vmall.com/product/10086335437779.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086335437779.html#10086738650172%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1540862995742mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀FlyPods无线耳机</div>
                                                <p class="grid-price ">&#165;799</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="3102150056001 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/10086504520076.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086504520076.html#10086476641219%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1545622624955mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀MINI照片打印机</div>
                                                <p class="grid-price ">&#165;599</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="3102060000503 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/200162339.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/200162339.html#666644070%27 ">
                                                <p class="grid-img">
                                                    <img alt=" " src="vmall/428_428_1542764207163mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀音乐小巨蛋</div>
                                                <p class="grid-price ">&#165;179</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="1304080001401 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/194128141.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/194128141.html#553811697%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1538985401864mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀智能体脂秤</div>
                                                <p class="grid-price ">&#165;129</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="1303030003603 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/875753311.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/875753311.html#699422424%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1542768804311mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀xSport 运动蓝牙耳机</div>
                                                <p class="grid-price ">&#165;229</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="1302020001104 ">
                                            <a class="thumb " target="_blank " href="javascript:if(confirm(%27https://www.vmall.com/product/259735704.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/259735704.html%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/142_142_1475026046650mp.jpg">
                                                </p>
                                                <div class="grid-title ">荣耀10000mAh移动电源</div>
                                                <p class="grid-price ">&#165;129</p>
                                            </a>
                                        </li>
                                        <li class="grid-items " data-track="true " data-sbom-code="3102130005902 ">
                                            <a class="thumb " target="_blank" href="javascript:if(confirm(%27https://www.vmall.com/product/10086872833199.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086872833199.html#10086132726986%27 ">
                                                <p class="grid-img ">
                                                    <img alt=" " src="vmall/428_428_1538991969182mp.png">
                                                </p>
                                                <div class="grid-title ">荣耀心晴耳机</div>
                                                <p class="grid-price ">&#165;129</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                            </div>

                        </div>

                        <div class="right ">
                            <!-- 搜索条-start -->
                            <div class="search-bar relative " id="searchBar-area ">
                                <div class="search-bar-form " id="search-bar-form ">
                                    <form method="get" onsubmit="return search(this) ">
                                        <input type="text " class="text " maxlength="100 " id="search-kw "
                                               autocomplete="off ">
                                        <input type="submit " class="button " value="搜索 ">
                                        <input type="hidden " id="channelType " name="channelType " value="0">
                                        <input type="hidden " id="default-search " value="HUAWEI P10 荣耀9 ">
                                    </form>
                                </div>
                                <div class="search-bar-key" id="search-bar-key " style="display: block; ">
                                    <div class="searchBar-key ">
                                        <a href=" " target="_blank ">荣耀V20</a>
                                        <a href=" " target="_blank ">荣耀Magic2</a>
                                    </div>
                                </div>
                                <div id="search-history " class="search-bar-tips hide " style="display: none; ">
                                    <ul id="search-history-list "></ul>
                                    <div class="tips-btn ">
                                        <i>icon</i><span id="cleanUp ">清空历史数据</span>
                                    </div>
                                </div>
                            </div>
                            <!-- 搜索条-end -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="J_mod mod-floatslider " style="margin-top:0px;margin-bottom:0px; " data-analytics='{"Id ":"6 ","name ":"轮播图 "}'>
                <!-- PC轮播图 -->
                <div class="mod21-banner" style="min-width: 1000px; height:; background:url() no-repeat center center ; ">
                    <div class="banner-slideshow " style="width:1920px;margin-left:-960px; ">
                        <div class="ec-slider " style="height:; " data-width="1920">
                            <ul class="ec-slider-list ">
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="javascript:if(confirm(%27https://sale.vmall.com/honor.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://sale.vmall.com/honor.html%27 "
                                           target="_blank " data-track="true ">
                                            <img src="${listCarousel[0].carPath}" alt="荣耀企业购"style="height:;"/>
                                        </a>
                                    </div>
                                </li>
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="javascript:if(confirm(%27https://sale.vmall.com/ry-company.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://sale.vmall.com/ry-company.html%27 "
                                           tppabs="https://sale.vmall.com/ry-company.html " target="_blank "
                                           data-track="true ">
                                            <img src="${listCarousel[1].carPath}" alt="荣耀企业购" style="height:; "/>
                                        </a>
                                    </div>
                                </li>
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="javascript:if(confirm(%27https://sale.vmall.com/honorhome.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://sale.vmall.com/honorhome.html%27 "
                                           tppabs="https://sale.vmall.com/honorhome.html " target="_blank "
                                           data-track="true ">
                                            <img src="${listCarousel[2].carPath}" alt="荣耀家庭 "
                                                 style="height:; "/>
                                        </a>
                                    </div>
                                </li>
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="javascript:if(confirm(%27https://sale.vmall.com/honorsmart.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://sale.vmall.com/honorsmart.html%27 "
                                           tppabs="https://sale.vmall.com/honorsmart.html " target="_blank "
                                           data-track="true ">
                                            <img src="${listCarousel[3].carPath}" alt="荣耀配件 "
                                                 style="height:; "/>
                                        </a>
                                    </div>
                                </li>
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="javascript:if(confirm(%27https://www.vmall.com/product/10086134839130.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086134839130.html%27 "
                                           target="_blank "
                                           data-track="true ">
                                            <img src="${listCarousel[4].carPath}" alt="荣耀V20 "
                                                 style="height:; "/>
                                        </a>
                                    </div>
                                </li>
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="10086983017283.html "
                                           target="_blank "
                                           data-track="true ">
                                            <img src="${listCarousel[5].carPath}" alt="荣耀企业购 "
                                                 style="height:; "/>
                                        </a>
                                    </div>
                                </li>
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="javascript:if(confirm(%27https://www.vmall.com/product/10086789934944.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086789934944.html%27 "
                                           target="_blank "
                                           data-track="true ">
                                            <img src="${listCarousel[6].carPath}"alt="荣耀活动 " style="height:; "/>
                                        </a>
                                    </div>
                                </li>
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="10086785341226.html" target="_blank "
                                           data-track="true ">
                                            <img src="${listCarousel[7].carPath}" alt="荣耀10 " style="height:; "/>
                                        </a>
                                    </div>
                                </li>
                                <li class="ec-slider-item ">
                                    <div class="ec-slider-item-img " style="width:1920px; ">
                                        <a href="javascript:if(confirm(%27https://www.vmall.com/product/10086286769025.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086286769025.html%27 " target="_blank " data-track="true ">
                                            <img src="${listCarousel[8].carPath}" alt="荣耀企业购 " style="height:; "/>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /PC轮播图 -->
            </div>
            <div class="J_mod mod-titleNav-area mod-330698 tpl-style-2" style="background:#fff;margin-top:;margin-bottom: ">
                <style>
                    .mod-titleNav-area.tpl-style-2.mod-330698 {
                        margin-top: 60px;
                        margin-bottom: 15px;
                    }

                    .mod-titleNav-area.mod-330698 .honnor .channel-title:after {
                        content: '';
                        position: absolute;
                        left: 0;
                        top: 2px;
                        width: 8px;
                        height: 34px;
                        background: #00b5e2;
                        -webkit-border-radius: 3px;
                        -moz-border-radius: 3px;
                        border-radius: 3px;
                    }

                    .mod-titleNav-area.mod-330698 .honnor .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330698 .honnor .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330698 .honnor .channel-more a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330698 .honnor .channel-more a:after {
                        content: '';
                        position: absolute;
                        right: 0;
                        top: 0px;
                        width: 20px;
                        height: 20px;
                        background: url(vmall/icon-honor.png) /*tpa=https://res8.vmallres.com/20180504/images/echannel/icon/icon-honor.png*/ no-repeat;
                    }

                    .mod-titleNav-area .honnor .channel-more a:hover:after {
                        background-position: 0 -20px;
                    }

                    .mod-titleNav-area.mod-330698 .honnor a:hover {
                        color: #00b5e2;
                    }

                    .mod-titleNav-area.mod-330698 .huawei .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330698 .huawei .channel-title:before {
                        background: !important;
                    }

                    .mod-titleNav-area.mod-330698 .huawei .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330698 .huawei .channel-more a:hover {
                        border: 1px solid !important;
                        color: !important;
                    }

                    .mod-titleNav-area.mod-330698 .huawei .channel-more a:hover:after {
                        border-left: 6px solid !important;
                    }

                    .mod-titleNav-area.mod-330698 .huawei a:hover {
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330698 .huawei .channel-title:before {
                        background: #900;
                    }

                    .mod-titleNav-area.mod-330698 .huawei .channel-more a:hover {
                        border: 1px solid #900;
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330698 .huawei .channel-more a:hover:after {
                        border-left: 6px solid #900;
                    }
                </style>
                <div id="part-1 " class="hrefs "></div>
                <div class="huawei ">
                    <h2 class="channel-title ">
                        <span>热销爆款</span>
                    </h2>
                    <ul class="channel-nav ">
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <div class="J_row row-1200 clearfix ">
        <div class="J_col col-side-1200 clearfix ">
            <div class="J_mod mod-pic " data-popupconfig='{"title ":"标题 "}' data-cid=''
                 style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;background-color:; "
                 data-config='{"moduleType ":"normal "}' data-analytics='{"Id ":"2 ","name ":"图模块 "}'>
                <!-- 图模块 -->
                <div id="popup-content" style="visibility:hidden;height:0; ">请输入弹框内容</div>
                <div class="pic-wrap ">
                    <img src="vmall/b81a284d-c76d-4adc-bc59-f0c402291849.jpg "
                         tppabs="https://res5.vmallres.com/shopdc/pic/b81a284d-c76d-4adc-bc59-f0c402291849.jpg "
                         alt=" "/>
                </div>
                <div class="J_anchors ">

                    <a class="J_anchor anchor-hotList " href="10086983017283.html "
                       tppabs="https://www.vmall.com/product/10086983017283.html " data-track="true "
                       style="width:302px; height:279px; left:360px; top:0px; " target="_blank "></a>
                    <a class="J_anchor anchor-hotList " href="10086785341226.html "
                       tppabs="https://www.vmall.com/product/10086785341226.html " data-track="true "
                       style="width:299px; height:277px; left:660px; top:1px; " target="_blank "></a>
                    <a class="J_anchor anchor-hotList "
                       href="javascript:if(confirm(%27https://www.vmall.com/product/10086286769025.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086286769025.html%27 "
                       tppabs="https://www.vmall.com/product/10086286769025.html " data-track="true "
                       style="width:297px; height:282px; left:961px; top:0px; " target="_blank "></a>
                    <a class="J_anchor anchor-hotList "
                       href="javascript:if(confirm(%27https://www.vmall.com/product/10086789934944.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086789934944.html%27 "
                       tppabs="https://www.vmall.com/product/10086789934944.html " data-track="true "
                       style="width:303px; height:280px; left:1257px; top:0px; " target="_blank "></a>
                    <a class="J_anchor anchor-hotList "
                       href="javascript:if(confirm(%27https://www.vmall.com/product/10086350349834.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086350349834.html%27 "
                       tppabs="https://www.vmall.com/product/10086350349834.html " data-track="true "
                       style="width:392px; height:198px; left:360px; top:280px; " target="_blank "></a>
                    <a class="J_anchor anchor-hotList "
                       href="javascript:if(confirm(%27https://www.vmall.com/product/10086335437779.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086335437779.html%27 "
                       tppabs="https://www.vmall.com/product/10086335437779.html " data-track="true "
                       style="width:408px; height:198px; left:752px; top:282px; " target="_blank "></a>
                    <a class="J_anchor anchor-hotList "
                       href="javascript:if(confirm(%27https://www.vmall.com/product/10086686072684.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086686072684.html%27 "
                       tppabs="https://www.vmall.com/product/10086686072684.html " data-track="true "
                       style="width:400px; height:198px; left:1160px; top:282px; " target="_blank "></a>
                </div>
                <!-- /图模块 -->
            </div>
            <div class="J_mod mod-pic " data-popupconfig='{"title ":"标题 "}' data-cid=''
                 style="margin-top:10px;margin-bottom:0px;margin-left:0px;margin-right:0px;background-color:; "
                 data-config='{"moduleType ":"normal "}' data-analytics='{"Id ":"2 ","name ":"图模块 "}'>
                <!-- 图模块 -->
                <div id="popup-content " style="visibility:hidden;height:0; ">请输入弹框内容</div>
                <div class="pic-wrap ">
                    <img src="vmall/7ae6c824-ac1b-4664-9a7e-c393fc74b4a5.png "
                         tppabs="https://res1.vmallres.com/shopdc/pic/7ae6c824-ac1b-4664-9a7e-c393fc74b4a5.png "
                         alt=" "/>
                </div>
                <div class="J_anchors ">

                    <a class="J_anchor anchor-hotList "
                       href="javascript:if(confirm(%27https://www.vmall.com/product/10086350349834.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086350349834.html%27 "
                       tppabs="https://www.vmall.com/product/10086350349834.html " data-track="true "
                       style="width:392px; height:190px; left:360px; top:0px; " target="_blank "></a>
                    <a class="J_anchor anchor-hotList "
                       href="javascript:if(confirm(%27https://www.vmall.com/product/10086335437779.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086335437779.html%27 "
                       tppabs="https://www.vmall.com/product/10086335437779.html " data-track="true "
                       style="width:408px; height:190px; left:754px; top:0px; " target="_blank "></a>
                    <a class="J_anchor anchor-hotList "
                       href="javascript:if(confirm(%27https://www.vmall.com/product/10086686072684.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086686072684.html%27 "
                       tppabs="https://www.vmall.com/product/10086686072684.html " data-track="true "
                       style="width:400px; height:190px; left:1159px; top:0px; " target="_blank "></a>
                </div>
                <!-- /图模块 -->
            </div>
        </div>
    </div>
    <div class="J_row clearfix ">
        <div class="J_col col-side-full clearfix ">
            <div class="J_mod mod-titleNav-area mod-330716 tpl-style-2 "
                 style="background:#fff;margin-top:;margin-bottom: ">
                <style>
                    .mod-titleNav-area.tpl-style-2.mod-330716 {
                        margin-top: 60px;
                        margin-bottom: 15px;
                    }

                    .mod-titleNav-area.mod-330716 .honnor .channel-title:after {
                        content: '';
                        position: absolute;
                        left: 0;
                        top: 2px;
                        width: 8px;
                        height: 34px;
                        background: #00b5e2;
                        -webkit-border-radius: 3px;
                        -moz-border-radius: 3px;
                        border-radius: 3px;
                    }

                    .mod-titleNav-area.mod-330716 .honnor .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330716 .honnor .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330716 .honnor .channel-more a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330716 .honnor .channel-more a:after {
                        content: '';
                        position: absolute;
                        right: 0;
                        top: 0px;
                        width: 20px;
                        height: 20px;
                        background: url(vmall/icon-honor.png) /*tpa=https://res8.vmallres.com/20180504/images/echannel/icon/icon-honor.png*/ no-repeat;
                    }

                    .mod-titleNav-area .honnor .channel-more a:hover:after {
                        background-position: 0 -20px;
                    }

                    .mod-titleNav-area.mod-330716 .honnor a:hover {
                        color: #00b5e2;
                    }

                    .mod-titleNav-area.mod-330716 .huawei .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330716 .huawei .channel-title:before {
                        background: !important;
                    }

                    .mod-titleNav-area.mod-330716 .huawei .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330716 .huawei .channel-more a:hover {
                        border: 1px solid !important;
                        color: !important;
                    }

                    .mod-titleNav-area.mod-330716 .huawei .channel-more a:hover:after {
                        border-left: 6px solid !important;
                    }

                    .mod-titleNav-area.mod-330716 .huawei a:hover {
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330716 .huawei .channel-title:before {
                        background: #900;
                    }

                    .mod-titleNav-area.mod-330716 .huawei .channel-more a:hover {
                        border: 1px solid #900;
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330716 .huawei .channel-more a:hover:after {
                        border-left: 6px solid #900;
                    }
                </style>
                <div id="part-2 " class="hrefs "></div>
                <div class="huawei ">
                    <h2 class="channel-title ">
                        <span>荣耀手机</span>
                    </h2>
                    <ul class="channel-nav " style="height: 36px; ">
                        <li>
                            <a href="list-171.htm " tppabs="https://www.vmall.com/list-171 "
                               target="_blank ">${listCategory[0].categoryList[0].hpcName}</a>
                        </li>
                        <li>
                            <a href="list-173.htm " tppabs="https://www.vmall.com/list-173 "
                               target="_blank ">${listCategory[0].categoryList[1].hpcName}</a>
                        </li>
                    </ul>
                    <div class="channel-more ">
                        <a href="list-159.htm " tppabs="https://www.vmall.com/list-159 " target="_blank ">更多</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="J_row row-1200 clearfix ">
        <div class="J_col col-side-1200 clearfix ">
            <div class="J_mod mod-product-single-huawei tpl-3 "
                 style="background: url( 'vmall/d8fb2a3e-8ec1-4657-b2eb-2917074cf606.png')/*tpa=https://res3.vmallres.com/shopdc/pic/d8fb2a3e-8ec1-4657-b2eb-2917074cf606.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"3 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330718 {
                        background: url(vmall/btn2.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330718 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330718 {
                        background: url(vmall/btn1.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330718 {
                        background: url(vmall/btn3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330718 {
                        background: url(vmall/btn5.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item"
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086134839130.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086134839130.html#10086695442401%27 "
                   tppabs="https://www.vmall.com/product/10086134839130.html#10086695442401 " target="_blank "
                   data-track="true " data-sbom-code="2601010087401 ">
                    <div class="p-text ">
                        <div class="title ">荣耀V20</div>
                        <div class="desc ">麒麟980处理器</div>
                        <div class="price ">
                            &#165;2999
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-4 "
                 style="background: url( 'vmall/3c5bdec2-b42e-4cd4-b01b-9d3cb7247d55.png')/*tpa=https://res9.vmallres.com/shopdc/pic/3c5bdec2-b42e-4cd4-b01b-9d3cb7247d55.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"4 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330720 {
                        background: url(vmall/btn2.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330720 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330720 {
                        background: url(vmall/btn1.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330720 {
                        background: url(vmall/btn3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330720 {
                        background: url(vmall/btn5.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item " href="10086983017283.html#10086258120116 "
                   tppabs="https://www.vmall.com/product/10086983017283.html#10086258120116 " target="_blank "
                   data-track="true " data-sbom-code="2601010077502 ">
                    <div class="p-text ">
                        <div class="title ">荣耀Magic2</div>
                        <div class="desc ">魔法全视屏 麒麟980AI芯片</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;3799
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/9889556b-e964-4464-b27d-021d08e1f98b.png')/*tpa=https://res7.vmallres.com/shopdc/pic/9889556b-e964-4464-b27d-021d08e1f98b.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330726 {
                        background: url(vmall/btn2-1.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330726 {
                        background: url(vmall/btn4-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330726 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330726 {
                        background: url(vmall/btn3-1.png) /*tpa=https://res0.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330726 {
                        background: url(vmall/btn5.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086372796926.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086372796926.html#10086740350995%27 "
                   tppabs="https://www.vmall.com/product/10086372796926.html#10086740350995 " target="_blank "
                   data-track="true " data-sbom-code="2601010063302 ">
                    <div class="p-text ">
                        <div class="title ">荣耀畅玩8C</div>
                        <div class="desc ">两天一充 莱茵护眼</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;999
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/2e40d264-fe8e-411a-8433-9b345e50264a.png')/*tpa=https://res3.vmallres.com/shopdc/pic/2e40d264-fe8e-411a-8433-9b345e50264a.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330724 {
                        background: url(vmall/btn2-1.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330724 {
                        background: url(vmall/btn4-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330724 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330724 {
                        background: url(vmall/btn3-1.png) /*tpa=https://res0.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330724 {
                        background: url(vmall/btn5.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086305784772.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086305784772.html#10086617332760%27 "
                   tppabs="https://www.vmall.com/product/10086305784772.html#10086617332760 " target="_blank "
                   data-track="true " data-sbom-code="2601010050702 ">
                    <div class="p-text ">
                        <div class="title ">荣耀Note10</div>
                        <div class="desc ">GT游戏加速 双卡双待 长续航</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;2699
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/cbe76549-063f-47e9-87e6-d315e627400f.png')/*tpa=https://res1.vmallres.com/shopdc/pic/cbe76549-063f-47e9-87e6-d315e627400f.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330722 {
                        background: url(vmall/btn2-1.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330722 {
                        background: url(vmall/btn4-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330722 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330722 {
                        background: url(vmall/btn3-1.png) /*tpa=https://res0.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330722 {
                        background: url(vmall/btn5.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086021281433.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086021281433.html#10086867635717%27 "
                   tppabs="https://www.vmall.com/product/10086021281433.html#10086867635717 " target="_blank "
                   data-track="true " data-sbom-code="2601010091902 ">
                    <div class="p-text ">
                        <div class="title ">荣耀畅玩8A</div>
                        <div class="desc ">6.09英寸珍珠全面屏</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;799
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/2f715162-5f84-4575-803c-e90b59b884b7.png')/*tpa=https://res3.vmallres.com/shopdc/pic/2f715162-5f84-4575-803c-e90b59b884b7.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330728 {
                        background: url(vmall/btn2-1.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330728 {
                        background: url(vmall/btn4-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330728 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330728 {
                        background: url(vmall/btn3-1.png) /*tpa=https://res0.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330728 {
                        background: url(vmall/btn5.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086291890006.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086291890006.html#10086565205556%27 "
                   tppabs="https://www.vmall.com/product/10086291890006.html#10086565205556 " target="_blank "
                   data-track="true " data-sbom-code="2601010042602 ">
                    <div class="p-text ">
                        <div class="title ">荣耀9i</div>
                        <div class="desc ">千元潮美旗舰</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;1199
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
        </div>
    </div>
    <div class="J_row clearfix ">
        <div class="J_col col-side-full clearfix ">
            <div class="J_mod mod-productDrag mod-330730 " data-hoverconfig='{"isSuspend ":true}'>
                <style>
                    .mod-productDrag.mod-330730 {
                        position: relative;
                        margin-top: 0px;
                        margin-bottom: 0px;
                        background: url() no-repeat center top;
                    }

                    .mod-productDrag.mod-330730 .drag-price {
                        color: #00b5e2;
                    }

                    .mod-productDrag.mod-330730 .coupon {
                        color: #00b5e2;
                        border: 1px solid #00b5e2;
                    }

                    .mod-productDrag .coupon:focus {
                        outline: none;
                    }

                    .mod-productDrag.mod-330730 .coupon:hover {
                        background: #00b5e2;
                        color: #fff;
                    }

                    .state-general-330730 {
                        background: url(vmall/btn2-2.png) /*tpa=https://res8.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330730 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330730 {
                        background: url(vmall/btn1.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330730 {
                        background: url(vmall/btn3-2.png) /*tpa=https://res9.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330730 {
                        background: url(vmall/btn5-1.png) /*tpa=https://res0.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <!--设置快速定位id-->
                <div class="layout swiper-container ">
                    <ul class="drag-list swiper-wrapper clearfix ">
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086134839130.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086134839130.html#10086075895498%27 "
                               tppabs="https://www.vmall.com/product/10086134839130.html#10086075895498 "
                               target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1545877216682mp.png "
                                         tppabs="https://res2.vmallres.com/pimages//product/6901443280988/428_428_1545877216682mp.png ">
                                </p>
                                <div class="drag-title ">荣耀V20</div>
                                <p class="drag-desc ">&nbsp; 麒麟980 魅眼全视屏</p>
                                <p class="drag-price ">
                                    <span>&#165;2999</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/570379791.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/570379791.html#304300558%27 "
                               tppabs="https://www.vmall.com/product/570379791.html#304300558 " target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1511746164971mp.jpg "
                                         tppabs="https://res0.vmallres.com/pimages//product/6901443210190/428_428_1511746164971mp.jpg ">
                                </p>
                                <div class="drag-title ">荣耀V10</div>
                                <p class="drag-desc ">&nbsp; 全面屏 GPU Turbo</p>
                                <p class="drag-price ">
                                    <span>&#165;2499</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086712964531.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086712964531.html#10086244917528%27 "
                               tppabs="https://www.vmall.com/product/10086712964531.html#10086244917528 "
                               target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1550887331041mp.png "
                                         tppabs="https://res2.vmallres.com/pimages//product/6901443256037/428_428_1550887331041mp.png ">
                                </p>
                                <div class="drag-title ">荣耀8X Max</div>
                                <p class="drag-desc ">&nbsp; 7.12英寸高屏占比珍珠屏</p>
                                <p class="drag-price ">
                                    <span>&#165;1499</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086576787089.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086576787089.html#10086608202937%27 "
                               tppabs="https://www.vmall.com/product/10086576787089.html#10086608202937 "
                               target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1553511577617mp.png "
                                         tppabs="https://res3.vmallres.com/pimages//product/6901443242641/428_428_1553511577617mp.png ">
                                </p>
                                <div class="drag-title ">荣耀Play</div>
                                <p class="drag-desc ">&nbsp; GPU Turbo 麒麟970AI芯片</p>
                                <p class="drag-price ">
                                    <span>&#165;1999</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086094364044.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086094364044.html#10086710725203%27 "
                               tppabs="https://www.vmall.com/product/10086094364044.html#10086710725203 "
                               target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1539912870678mp.png "
                                         tppabs="https://res2.vmallres.com/pimages//product/6901443229857/428_428_1539912870678mp.png ">
                                </p>
                                <div class="drag-title ">荣耀畅玩7</div>
                                <p class="drag-desc ">&nbsp; 小巧全面屏 智能听筒</p>
                                <p class="drag-price ">
                                    <span>&#165;599</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                    <div class="drag-btn swiper-button-prev btn-prev "><span></span></div>
                    <div class="drag-btn swiper-button-next btn-next "><span></span></div>
                </div>
                <script>
                    var couponList = window.couponList || {};
                </script>
            </div>
        </div>

    </div>
    <div class="J_row clearfix ">
        <div class="J_col col-side-full clearfix ">
            <div class="J_mod mod-titleNav-area mod-330732 tpl-style-2 "
                 style="background:#fff;margin-top:;margin-bottom: ">
                <style>
                    .mod-titleNav-area.tpl-style-2.mod-330732 {
                        margin-top: 60px;
                        margin-bottom: 15px;
                    }

                    .mod-titleNav-area.mod-330732 .honnor .channel-title:after {
                        content: '';
                        position: absolute;
                        left: 0;
                        top: 2px;
                        width: 8px;
                        height: 34px;
                        background: #00b5e2;
                        -webkit-border-radius: 3px;
                        -moz-border-radius: 3px;
                        border-radius: 3px;
                    }

                    .mod-titleNav-area.mod-330732 .honnor .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330732 .honnor .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330732 .honnor .channel-more a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330732 .honnor .channel-more a:after {
                        content: '';
                        position: absolute;
                        right: 0;
                        top: 0px;
                        width: 20px;
                        height: 20px;
                        background: url(vmall/icon-honor.png) /*tpa=https://res8.vmallres.com/20180504/images/echannel/icon/icon-honor.png*/ no-repeat;
                    }

                    .mod-titleNav-area .honnor .channel-more a:hover:after {
                        background-position: 0 -20px;
                    }

                    .mod-titleNav-area.mod-330732 .honnor a:hover {
                        color: #00b5e2;
                    }

                    .mod-titleNav-area.mod-330732 .huawei .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330732 .huawei .channel-title:before {
                        background: !important;
                    }

                    .mod-titleNav-area.mod-330732 .huawei .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330732 .huawei .channel-more a:hover {
                        border: 1px solid !important;
                        color: !important;
                    }

                    .mod-titleNav-area.mod-330732 .huawei .channel-more a:hover:after {
                        border-left: 6px solid !important;
                    }

                    .mod-titleNav-area.mod-330732 .huawei a:hover {
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330732 .huawei .channel-title:before {
                        background: #900;
                    }

                    .mod-titleNav-area.mod-330732 .huawei .channel-more a:hover {
                        border: 1px solid #900;
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330732 .huawei .channel-more a:hover:after {
                        border-left: 6px solid #900;
                    }
                </style>
                <div id="part-3 " class="hrefs "></div>
                <div class="huawei ">
                    <h2 class="channel-title ">
                        <span>笔记本电脑&amp;平板</span>
                    </h2>
                    <ul class="channel-nav " style="height: 36px; ">
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-395 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-395%27 "
                               tppabs="https://www.vmall.com/list-395 "
                               target="_blank ">${listCategory[1].categoryList[0].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-177 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-177%27 "
                               tppabs="https://www.vmall.com/list-177 "
                               target="_blank ">${listCategory[1].categoryList[1].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-401 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-401%27 "
                               tppabs="https://www.vmall.com/list-401 "
                               target="_blank ">${listCategory[1].categoryList[2].hpcName}</a>
                        </li>
                    </ul>
                    <div class="channel-more ">
                        <a href="list-161.htm " tppabs="https://www.vmall.com/list-161 " target="_blank ">更多</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="J_row row-1200 clearfix ">
        <div class="J_col col-side-1200 clearfix ">
            <div class="J_mod mod-product-single-huawei tpl-3 "
                 style="background: url( 'vmall/dfa12105-c683-4b8e-9f1d-82044c1ae201.png')/*tpa=https://res0.vmallres.com/shopdc/pic/dfa12105-c683-4b8e-9f1d-82044c1ae201.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"3 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330734 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330734 {
                        background: url(vmall/btn4-2.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330734 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330734 {
                        background: url(vmall/btn3-3.png) /*tpa=https://res6.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330734 {
                        background: url(vmall/btn5-2.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086350349834.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086350349834.html#10086734411761%27 "
                   tppabs="https://www.vmall.com/product/10086350349834.html#10086734411761 " target="_blank "
                   data-track="true " data-sbom-code="2801010002401 ">
                    <div class="p-text ">
                        <div class="title ">荣耀MagicBook</div>
                        <div class="desc ">12小时长续航 独显轻薄</div>
                        <div class="price ">
                            &#165;4999
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-4 "
                 style="background: url( 'vmall/916a0fac-4a87-4af8-a307-d023113d1082.png')/*tpa=https://res0.vmallres.com/shopdc/pic/916a0fac-4a87-4af8-a307-d023113d1082.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"4 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330736 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330736 {
                        background: url(vmall/btn4-2.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330736 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330736 {
                        background: url(vmall/btn3-3.png) /*tpa=https://res6.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330736 {
                        background: url(vmall/btn5-2.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086527872485.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086527872485.html#10086466203116%27 "
                   tppabs="https://www.vmall.com/product/10086527872485.html#10086466203116 " target="_blank "
                   data-track="true " data-sbom-code="2701010007702 ">
                    <div class="p-text ">
                        <div class="title ">荣耀平板5</div>
                        <div class="desc ">10.1英寸全高清屏</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;1199
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/93914a6c-b296-44c1-ba39-86a272b682d9.png')/*tpa=https://res5.vmallres.com/shopdc/pic/93914a6c-b296-44c1-ba39-86a272b682d9.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330738 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330738 {
                        background: url(vmall/btn4-2.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330738 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330738 {
                        background: url(vmall/btn3-3.png) /*tpa=https://res6.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330738 {
                        background: url(vmall/btn5-2.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086966382496.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086966382496.html#10086725814724%27 "
                   tppabs="https://www.vmall.com/product/10086966382496.html#10086725814724 " target="_blank "
                   data-track="true " data-sbom-code="2701010011601 ">
                    <div class="p-text ">
                        <div class="title ">荣耀平板5 8英寸</div>
                        <div class="desc ">麒麟710芯片 杜比音效 全高清屏</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;1099
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/57e4c8f3-6756-43f1-ba09-2ffd61cc5439.png')/*tpa=https://res9.vmallres.com/shopdc/pic/57e4c8f3-6756-43f1-ba09-2ffd61cc5439.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330740 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330740 {
                        background: url(vmall/btn4-2.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330740 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330740 {
                        background: url(vmall/btn3-3.png) /*tpa=https://res6.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330740 {
                        background: url(vmall/btn5-2.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086194505402.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086194505402.html#10086572770021%27 "
                   tppabs="https://www.vmall.com/product/10086194505402.html#10086572770021 " target="_blank "
                   data-track="true " data-sbom-code="2701010009501 ">
                    <div class="p-text ">
                        <div class="title ">荣耀Waterplay 8英寸</div>
                        <div class="desc ">IP 67级防尘防水</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;1499
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/a977cdf6-317d-43ee-a9c5-8f198812cade.png')/*tpa=https://res7.vmallres.com/shopdc/pic/a977cdf6-317d-43ee-a9c5-8f198812cade.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330742 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330742 {
                        background: url(vmall/btn4-2.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330742 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330742 {
                        background: url(vmall/btn3-3.png) /*tpa=https://res6.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330742 {
                        background: url(vmall/btn5-2.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/405225095.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/405225095.html#887012722%27 "
                   tppabs="https://www.vmall.com/product/405225095.html#887012722 " target="_blank " data-track="true "
                   data-sbom-code="1201010004501 ">
                    <div class="p-text ">
                        <div class="title ">荣耀畅玩平板2 9.6英寸</div>
                        <div class="desc ">高清大屏 清晰护眼</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;999
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/804c142b-7b6b-4b1c-af1b-343aa116d94a.png')/*tpa=https://res6.vmallres.com/shopdc/pic/804c142b-7b6b-4b1c-af1b-343aa116d94a.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330744 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330744 {
                        background: url(vmall/btn4-2.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330744 {
                        background: url(vmall/btn1-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330744 {
                        background: url(vmall/btn3-3.png) /*tpa=https://res6.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330744 {
                        background: url(vmall/btn5-2.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/121879018.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/121879018.html#729361012%27 "
                   tppabs="https://www.vmall.com/product/121879018.html#729361012 " target="_blank " data-track="true "
                   data-sbom-code="1201010004404 ">
                    <div class="p-text ">
                        <div class="title ">荣耀畅玩平板2 8英寸</div>
                        <div class="desc ">轻薄金属机身</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;999
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
        </div>
    </div>
    <div class="J_row clearfix">
        <div class="J_col col-side-full clearfix ">
            <div class="J_mod mod-titleNav-area mod-330746 tpl-style-2 "
                 style="background:#fff;margin-top:;margin-bottom: ">
                <style>
                    .mod-titleNav-area.tpl-style-2.mod-330746 {
                        margin-top: 60px;
                        margin-bottom: 15px;
                    }

                    .mod-titleNav-area.mod-330746 .honnor .channel-title:after {
                        content: '';
                        position: absolute;
                        left: 0;
                        top: 2px;
                        width: 8px;
                        height: 34px;
                        background: #00b5e2;
                        -webkit-border-radius: 3px;
                        -moz-border-radius: 3px;
                        border-radius: 3px;
                    }

                    .mod-titleNav-area.mod-330746 .honnor .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330746 .honnor .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330746 .honnor .channel-more a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330746 .honnor .channel-more a:after {
                        content: '';
                        position: absolute;
                        right: 0;
                        top: 0px;
                        width: 20px;
                        height: 20px;
                        background: url(vmall/icon-honor.png) /*tpa=https://res8.vmallres.com/20180504/images/echannel/icon/icon-honor.png*/ no-repeat;
                    }

                    .mod-titleNav-area .honnor .channel-more a:hover:after {
                        background-position: 0 -20px;
                    }

                    .mod-titleNav-area.mod-330746 .honnor a:hover {
                        color: #00b5e2;
                    }

                    .mod-titleNav-area.mod-330746 .huawei .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330746 .huawei .channel-title:before {
                        background: !important;
                    }

                    .mod-titleNav-area.mod-330746 .huawei .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330746 .huawei .channel-more a:hover {
                        border: 1px solid !important;
                        color: !important;
                    }

                    .mod-titleNav-area.mod-330746 .huawei .channel-more a:hover:after {
                        border-left: 6px solid !important;
                    }

                    .mod-titleNav-area.mod-330746 .huawei a:hover {
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330746 .huawei .channel-title:before {
                        background: #900;
                    }

                    .mod-titleNav-area.mod-330746 .huawei .channel-more a:hover {
                        border: 1px solid #900;
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330746 .huawei .channel-more a:hover:after {
                        border-left: 6px solid #900;
                    }
                </style>
                <div id="part-4 " class="hrefs "></div>
                <div class="huawei ">
                    <h2 class="channel-title ">
                        <span>潮流穿戴</span>
                    </h2>
                    <ul class="channel-nav " style="height: 36px; ">
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-219 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-219%27 "
                               tppabs="https://www.vmall.com/list-219 "
                               target="_blank ">${listCategory[2].categoryList[0].hpcName}</a>
                        </li>
                    </ul>
                    <div class="channel-more ">
                        <a href="list-217.htm " target="_blank ">更多</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="J_row row-1200 clearfix ">
        <div class="J_col col-side-1200 clearfix ">
            <div class="J_mod mod-product-single-huawei tpl-3 "
                 style="background: url( 'vmall/94854897-e473-49be-b8ba-8aa4143d5694.png')/*tpa=https://res4.vmallres.com/shopdc/pic/94854897-e473-49be-b8ba-8aa4143d5694.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"3 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330748 {
                        background: url(vmall/btn2.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330748 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330748 {
                        background: url(vmall/btn1-2.png) /*tpa=https://res9.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330748 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330748 {
                        background: url(vmall/btn5-3.png) /*tpa=https://res8.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086268042691.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086268042691.html#10086253509221%27 "
                   tppabs="https://www.vmall.com/product/10086268042691.html#10086253509221 " target="_blank "
                   data-track="true " data-sbom-code="2901010004801 ">
                    <div class="p-text ">
                        <div class="title ">荣耀手表魔法系列</div>
                        <div class="desc ">轻薄设计 强劲续航</div>
                        <div class="price ">
                            &#165;899
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-4 "
                 style="background: url( 'vmall/2ed19099-4a83-4eff-9f3e-49cc82e9cfee.png')/*tpa=https://res7.vmallres.com/shopdc/pic/2ed19099-4a83-4eff-9f3e-49cc82e9cfee.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"4 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330750 {
                        background: url(vmall/btn2.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330750 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330750 {
                        background: url(vmall/btn1-2.png) /*tpa=https://res9.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330750 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330750 {
                        background: url(vmall/btn5-3.png) /*tpa=https://res8.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086482881108.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086482881108.html#10086302750215%27 "
                   tppabs="https://www.vmall.com/product/10086482881108.html#10086302750215 " target="_blank "
                   data-track="true " data-sbom-code="2901010006001 ">
                    <div class="p-text ">
                        <div class="title ">荣耀手表梦幻系列</div>
                        <div class="desc ">轻薄潮美 强劲续航</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;899
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/7c05c8fe-97ae-4ad1-83a0-b51a61414387.png')/*tpa=https://res4.vmallres.com/shopdc/pic/7c05c8fe-97ae-4ad1-83a0-b51a61414387.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330752 {
                        background: url(vmall/btn2.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330752 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330752 {
                        background: url(vmall/btn1-2.png) /*tpa=https://res9.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330752 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330752 {
                        background: url(vmall/btn5-3.png) /*tpa=https://res8.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086686072684.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086686072684.html#10086455419044%27 "
                   tppabs="https://www.vmall.com/product/10086686072684.html#10086455419044 " target="_blank "
                   data-track="true " data-sbom-code="2901020005601 ">
                    <div class="p-text ">
                        <div class="title ">荣耀手环4</div>
                        <div class="desc ">触控大彩屏 实时心率检测</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;189
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/daa83ad7-9049-4840-874f-0064f64abcb6.png')/*tpa=https://res3.vmallres.com/shopdc/pic/daa83ad7-9049-4840-874f-0064f64abcb6.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330754 {
                        background: url(vmall/btn2.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330754 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330754 {
                        background: url(vmall/btn1-2.png) /*tpa=https://res9.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330754 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330754 {
                        background: url(vmall/btn5-3.png) /*tpa=https://res8.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086913521308.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086913521308.html#10086949141018%27 "
                   tppabs="https://www.vmall.com/product/10086913521308.html#10086949141018 " target="_blank "
                   data-track="true " data-sbom-code="2901020005801 ">
                    <div class="p-text ">
                        <div class="title ">荣耀手环4 Running版</div>
                        <div class="desc ">专业跑步检测</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;99
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/2166b341-af52-4a8e-9caa-510f6f3b7871.png')/*tpa=https://res5.vmallres.com/shopdc/pic/2166b341-af52-4a8e-9caa-510f6f3b7871.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330756 {
                        background: url(vmall/btn2.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330756 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330756 {
                        background: url(vmall/btn1-2.png) /*tpa=https://res9.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330756 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330756 {
                        background: url(vmall/btn5-3.png) /*tpa=https://res8.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086568646192.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086568646192.html#10086093637498%27 "
                   tppabs="https://www.vmall.com/product/10086568646192.html#10086093637498 " target="_blank "
                   data-track="true " data-sbom-code="2901010005601 ">
                    <div class="p-text ">
                        <div class="title ">荣耀小K 2 儿童手表</div>
                        <div class="desc ">七重定位，精准守护</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;299
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/172db8c1-c91b-46bf-a353-996648f2f743.png')/*tpa=https://res4.vmallres.com/shopdc/pic/172db8c1-c91b-46bf-a353-996648f2f743.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330758 {
                        background: url(vmall/btn2.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330758 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330758 {
                        background: url(vmall/btn1-2.png) /*tpa=https://res9.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330758 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330758 {
                        background: url(vmall/btn5-3.png) /*tpa=https://res8.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/369652507.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/369652507.html#532696479%27 "
                   tppabs="https://www.vmall.com/product/369652507.html#532696479 " target="_blank " data-track="true "
                   data-sbom-code="2202010000201 ">
                    <div class="p-text ">
                        <div class="title ">荣耀畅玩手环 A2</div>
                        <div class="desc ">OLED大屏，多点触控</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;99
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
        </div>
    </div>
    <div class="J_row clearfix ">
        <div class="J_col col-side-full clearfix ">
            <div class="J_mod mod-titleNav-area mod-335166 tpl-style-2 "
                 style="background:#fff;margin-top:;margin-bottom: ">
                <style>
                    .mod-titleNav-area.tpl-style-2.mod-335166 {
                        margin-top: 60px;
                        margin-bottom: 15px;
                    }

                    .mod-titleNav-area.mod-335166 .honnor .channel-title:after {
                        content: '';
                        position: absolute;
                        left: 0;
                        top: 2px;
                        width: 8px;
                        height: 34px;
                        background: #00b5e2;
                        -webkit-border-radius: 3px;
                        -moz-border-radius: 3px;
                        border-radius: 3px;
                    }

                    .mod-titleNav-area.mod-335166 .honnor .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-335166 .honnor .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-335166 .honnor .channel-more a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-335166 .honnor .channel-more a:after {
                        content: '';
                        position: absolute;
                        right: 0;
                        top: 0px;
                        width: 20px;
                        height: 20px;
                        background: url(vmall/icon-honor.png) /*tpa=https://res8.vmallres.com/20180504/images/echannel/icon/icon-honor.png*/ no-repeat;
                    }

                    .mod-titleNav-area .honnor .channel-more a:hover:after {
                        background-position: 0 -20px;
                    }

                    .mod-titleNav-area.mod-335166 .honnor a:hover {
                        color: #00b5e2;
                    }

                    .mod-titleNav-area.mod-335166 .huawei .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-335166 .huawei .channel-title:before {
                        background: !important;
                    }

                    .mod-titleNav-area.mod-335166 .huawei .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-335166 .huawei .channel-more a:hover {
                        border: 1px solid !important;
                        color: !important;
                    }

                    .mod-titleNav-area.mod-335166 .huawei .channel-more a:hover:after {
                        border-left: 6px solid !important;
                    }

                    .mod-titleNav-area.mod-335166 .huawei a:hover {
                        color: #900;
                    }

                    .mod-titleNav-area.mod-335166 .huawei .channel-title:before {
                        background: #900;
                    }

                    .mod-titleNav-area.mod-335166 .huawei .channel-more a:hover {
                        border: 1px solid #900;
                        color: #900;
                    }

                    .mod-titleNav-area.mod-335166 .huawei .channel-more a:hover:after {
                        border-left: 6px solid #900;
                    }
                </style>
                <div id="part-5 " class="hrefs "></div>
                <div class="huawei ">
                    <h2 class="channel-title ">
                        <span>炫彩配件</span>
                    </h2>
                    <ul class="channel-nav " style="height: 36px; ">
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-191 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-191%27 "
                               tppabs="https://www.vmall.com/list-191 "
                               target="_blank ">${listCategory[3].categoryList[0].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-189 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-189%27 "
                               tppabs="https://www.vmall.com/list-189 "
                               target="_blank ">${listCategory[3].categoryList[1].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-193 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-193%27 "
                               tppabs="https://www.vmall.com/list-193 "
                               target="_blank ">${listCategory[3].categoryList[2].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-305 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-305%27 "
                               tppabs="https://www.vmall.com/list-305 "
                               target="_blank ">${listCategory[3].categoryList[3].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-307 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-307%27 "
                               tppabs="https://www.vmall.com/list-307 "
                               target="_blank ">${listCategory[3].categoryList[4].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-183 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-183%27 "
                               tppabs="https://www.vmall.com/list-183 "
                               target="_blank ">${listCategory[3].categoryList[5].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-311 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-311%27 "
                               tppabs="https://www.vmall.com/list-311 "
                               target="_blank ">${listCategory[3].categoryList[6].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-323 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-323%27 "
                               tppabs="https://www.vmall.com/list-323 "
                               target="_blank ">${listCategory[3].categoryList[7].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-574 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-574%27 "
                               tppabs="https://www.vmall.com/list-574 "
                               target="_blank ">${listCategory[3].categoryList[8].hpcName}</a>
                        </li>
                    </ul>
                    <div class="channel-more">
                        <a href="list-163.htm" target="_blank ">更多</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="J_row row-1200 clearfix ">
        <div class="J_col col-side-1200 clearfix ">
            <div class="J_mod mod-product-single-huawei tpl-3 "
                 style="background: url( 'vmall/3bc4f3a7-ef39-4886-893d-5e1937239721.png')/*tpa=https://res6.vmallres.com/shopdc/pic/3bc4f3a7-ef39-4886-893d-5e1937239721.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"3 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330778 {
                        background: url(vmall/btn2-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330778 {
                        background: url(vmall/btn4-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330778 {
                        background: url(vmall/btn1-3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330778 {
                        background: url(vmall/btn3-5.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330778 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086066822495.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086066822495.html#10086162633318%27 "
                   tppabs="https://www.vmall.com/product/10086066822495.html#10086162633318 " target="_blank "
                   data-track="true " data-sbom-code="3102050009702 ">
                    <div class="p-text ">
                        <div class="title " style="color:#000000; ">荣耀FlyPods青春版</div>
                        <div class="desc " style="color:#000000; ">双击触控，降噪通话，12小时聆听</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;369
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/3191b781-4465-423c-bf87-170b66a01662.png')/*tpa=https://res7.vmallres.com/shopdc/pic/3191b781-4465-423c-bf87-170b66a01662.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330780 {
                        background: url(vmall/btn2-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330780 {
                        background: url(vmall/btn4-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330780 {
                        background: url(vmall/btn1-3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330780 {
                        background: url(vmall/btn3-5.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330780 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086335437779.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086335437779.html#10086738650172%27 "
                   tppabs="https://www.vmall.com/product/10086335437779.html#10086738650172 " target="_blank "
                   data-track="true " data-sbom-code="3102050007101 ">
                    <div class="p-text ">
                        <div class="title ">荣耀FlyPods无线耳机</div>
                        <div class="desc ">舒适，无感佩戴</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;749
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/2bc71bfa-cac4-4ab1-89ee-a3d4d30e77c3.png')/*tpa=https://res5.vmallres.com/shopdc/pic/2bc71bfa-cac4-4ab1-89ee-a3d4d30e77c3.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-376614 {
                        background: url(vmall/btn2-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-376614 {
                        background: url(vmall/btn4-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-376614 {
                        background: url(vmall/btn1-3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-376614 {
                        background: url(vmall/btn3-5.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-376614 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086328941253.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086328941253.html#10086146082592%27 "
                   tppabs="https://www.vmall.com/product/10086328941253.html#10086146082592 " target="_blank "
                   data-track="true " data-sbom-code="3102150056702 ">
                    <div class="p-text ">
                        <div class="title ">荣耀智能摄像机 云台版</div>
                        <div class="desc ">AI高清夜视</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;269
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/b84ebb69-cc05-47f8-8b83-9ba3b7b3a43c.png')/*tpa=https://res6.vmallres.com/shopdc/pic/b84ebb69-cc05-47f8-8b83-9ba3b7b3a43c.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-376612 {
                        background: url(vmall/btn2-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-376612 {
                        background: url(vmall/btn4-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-376612 {
                        background: url(vmall/btn1-3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-376612 {
                        background: url(vmall/btn3-5.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-376612 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/194128141.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/194128141.html#553811697%27 "
                   tppabs="https://www.vmall.com/product/194128141.html#553811697 " target="_blank " data-track="true "
                   data-sbom-code="1304080001401 ">
                    <div class="p-text ">
                        <div class="title ">荣耀智能体脂秤</div>
                        <div class="desc ">11项身体检测指标</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;99
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/9268a52a-1482-4fc1-9f30-dbbd0e5efd9b.png')/*tpa=https://res2.vmallres.com/shopdc/pic/9268a52a-1482-4fc1-9f30-dbbd0e5efd9b.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330782 {
                        background: url(vmall/btn2-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330782 {
                        background: url(vmall/btn4-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330782 {
                        background: url(vmall/btn1-3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330782 {
                        background: url(vmall/btn3-5.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330782 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/875753311.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/875753311.html#189161731%27 "
                   tppabs="https://www.vmall.com/product/875753311.html#189161731 " target="_blank " data-track="true "
                   data-sbom-code="1303030003602 ">
                    <div class="p-text ">
                        <div class="title ">荣耀xSport 运动蓝牙耳机</div>
                        <div class="desc ">10天待机，11小时续航</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;179
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/a38a5588-87ba-49cc-b9b2-c6ff38a1058b.png')/*tpa=https://res9.vmallres.com/shopdc/pic/a38a5588-87ba-49cc-b9b2-c6ff38a1058b.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330784 {
                        background: url(vmall/btn2-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330784 {
                        background: url(vmall/btn4-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330784 {
                        background: url(vmall/btn1-3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330784 {
                        background: url(vmall/btn3-5.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330784 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086292374682.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086292374682.html#10086801218246%27 "
                   tppabs="https://www.vmall.com/product/10086292374682.html#10086801218246 " target="_blank "
                   data-track="true " data-sbom-code="3102010010601 ">
                    <div class="p-text ">
                        <div class="title ">荣耀移动电源2 10000mAh</div>
                        <div class="desc ">18W双向快充/新国标认证</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;99
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-productDrag mod-330786 " data-hoverconfig='{"isSuspend ":true}'>
                <style>
                    .mod-productDrag.mod-330786 {
                        position: relative;
                        margin-top: 10px;
                        margin-bottom: 0px;
                        background: url() no-repeat center top;
                    }

                    .mod-productDrag.mod-330786 .drag-price {
                        color: #00b5e2;
                    }

                    .mod-productDrag.mod-330786 .coupon {
                        color: #00b5e2;
                        border: 1px solid #00b5e2;
                    }

                    .mod-productDrag .coupon:focus {
                        outline: none;
                    }

                    .mod-productDrag.mod-330786 .coupon:hover {
                        background: #00b5e2;
                        color: #fff;
                    }

                    .state-general-330786 {
                        background: url(vmall/btn2-5.png) /*tpa=https://res9.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330786 {
                        background: url(vmall/btn4-4.png) /*tpa=https://res6.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330786 {
                        background: url(vmall/btn1-4.png) /*tpa=https://res6.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330786 {
                        background: url(vmall/btn3-6.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330786 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <!--设置快速定位id-->
                <div class="layout swiper-container ">
                    <ul class="drag-list swiper-wrapper clearfix ">
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/3281.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/3281.html#8097%27 "
                               tppabs="https://www.vmall.com/product/3281.html#8097 " target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1542854594365mp.png "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443076543/428_428_1542854594365mp.png ">
                                </p>
                                <div class="drag-title ">荣耀 AM116半入耳式耳机</div>
                                <p class="drag-desc ">&nbsp; 佩戴舒适 清听时光</p>
                                <p class="drag-price ">
                                    <span>&#165;59</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086262026261.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086262026261.html#10086466979043%27 "
                               tppabs="https://www.vmall.com/product/10086262026261.html#10086466979043 "
                               target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1542855247819mp.png "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443218516/428_428_1542855247819mp.png ">
                                </p>
                                <div class="drag-title ">荣耀魔声耳机2</div>
                                <p class="drag-desc ">&nbsp; 给您如临现场的音质体验</p>
                                <p class="drag-price ">
                                    <span>&#165;229</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/583301172.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/583301172.html#527148837%27 "
                               tppabs="https://www.vmall.com/product/583301172.html#527148837 " target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1543022317597mp.png "
                                         tppabs="https://res8.vmallres.com/pimages//product/3102020000901/428_428_1543022317597mp.png ">
                                </p>
                                <div class="drag-title ">荣耀车载充电器（supercharge 快充版）</div>
                                <p class="drag-desc ">&nbsp; 赠5A Type C数据线</p>
                                <p class="drag-price ">
                                    <span>&#165;129</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/200162339.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/200162339.html#666644070%27 "
                               tppabs="https://www.vmall.com/product/200162339.html#666644070 " target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1542764207163mp-1.png "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443211142/428_428_1542764207163mp.png ">
                                </p>
                                <div class="drag-title ">荣耀音乐小巨蛋</div>
                                <p class="drag-desc ">&nbsp; 震撼音质 轻巧便携</p>
                                <p class="drag-price ">
                                    <span>&#165;179</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb"
                               href="javascript:if(confirm(%27https://www.vmall.com/product/2247.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/2247.html#7659%27 "
                               tppabs="https://www.vmall.com/product/2247.html#7659 " target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1542856082895mp.png "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443100118/428_428_1542856082895mp.png ">
                                </p>
                                <div class="drag-title ">荣耀引擎耳机plus</div>
                                <p class="drag-desc ">&nbsp; 延续经典，好看、好听、好品质</p>
                                <p class="drag-price ">
                                    <span>&#165;79</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb"
                               href="javascript:if(confirm(%27https://www.vmall.com/product/570114585.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/570114585.html#555447026%27 "
                               target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1543022906890mp.png "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443075201/428_428_1543022906890mp.png ">
                                </p>
                                <div class="drag-title ">荣耀小天鹅蓝牙音箱</div>
                                <p class="drag-desc ">&nbsp; 形如天鹅/音如天籁</p>
                                <p class="drag-price ">
                                    <span>&#165;99</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086029405648.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086029405648.html#10086943852365%27 "
                               tppabs="https://www.vmall.com/product/10086029405648.html#10086943852365 "
                               target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1542856174725mp.png "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443214174/428_428_1542856174725mp.png ">
                                </p>
                                <div class="drag-title ">荣耀多口充电器SuperCharge快充版</div>
                                <p class="drag-desc ">&nbsp; 轻巧便携 一个顶仨</p>
                                <p class="drag-price ">
                                    <span>&#165;129</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/26110352.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/26110352.html#863847336%27 "
                               tppabs="https://www.vmall.com/product/26110352.html#863847336 " target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1476438456332mp.jpg "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443147755/428_428_1476438456332mp.jpg ">
                                </p>
                                <div class="drag-title ">荣耀二合一数据线</div>
                                <p class="drag-desc ">&nbsp; 1.5米满足更多使用场景</p>
                                <p class="drag-price ">
                                    <span>&#165;69</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/2747.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/2747.html#7775%27 "
                               tppabs="https://www.vmall.com/product/2747.html#7775 " target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1468307075865mp.jpg "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443111183/428_428_1468307075865mp.jpg ">
                                </p>
                                <div class="drag-title ">荣耀自拍杆</div>
                                <p class="drag-desc ">&nbsp; 小巧轻便易携带</p>
                                <p class="drag-price ">
                                    <span>&#165;45</span>
                                </p>
                            </a>
                        </li>
                        <li class="drag-items swiper-slide ">
                            <a class="thumb "
                               href="javascript:if(confirm(%27https://www.vmall.com/product/10086254136857.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086254136857.html#10086301383956%27 "
                               tppabs="https://www.vmall.com/product/10086254136857.html#10086301383956 "
                               target="_blank ">
                                <p class="drag-img ">
                                    <img src="vmall/428_428_1523951293447mp.jpg "
                                         tppabs="https://res8.vmallres.com/pimages//product/6901443225897/428_428_1523951293447mp.jpg ">
                                </p>
                                <div class="drag-title ">荣耀 USB数据线</div>
                                <p class="drag-desc ">&nbsp; 充电迅速/传输稳定</p>
                                <p class="drag-price ">
                                    <span>&#165;19</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                    <div class="drag-btn swiper-button-prev btn-prev "><span></span></div>
                    <div class="drag-btn swiper-button-next btn-next "><span></span></div>
                </div>
                <script>
                    var couponList = window.couponList || {};
                </script>
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/0ab7747e-808f-4aac-a8a7-c5f7a25e9cc2.png')/*tpa=https://res7.vmallres.com/shopdc/pic/0ab7747e-808f-4aac-a8a7-c5f7a25e9cc2.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330788 {
                        background: url(vmall/btn2-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330788 {
                        background: url(vmall/btn4-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330788 {
                        background: url(vmall/btn1-3.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330788 {
                        background: url(vmall/btn3-5.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330788 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/812952235.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/812952235.html#221865572%27 "
                   tppabs="https://www.vmall.com/product/812952235.html#221865572 " target="_blank " data-track="true "
                   data-sbom-code="1303090003302 ">
                    <div class="p-text ">
                        <div class="title ">荣耀引擎耳机2代</div>
                        <div class="desc ">调音耳机</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;79
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-productDrag mod-330794 " data-hoverconfig='{"isSuspend ":true}'>
                <style>
                    .mod-productDrag.mod-330794 {
                        position: relative;
                        margin-top: 0px;
                        margin-bottom: 0px;
                        background: url() no-repeat center top;
                    }

                    .mod-productDrag.mod-330794 .drag-price {
                        color: #00b5e2;
                    }

                    .mod-productDrag.mod-330794 .coupon {
                        color: #00b5e2;
                        border: 1px solid #00b5e2;
                    }

                    .mod-productDrag .coupon:focus {
                        outline: none;
                    }

                    .mod-productDrag.mod-330794 .coupon:hover {
                        background: #00b5e2;
                        color: #fff;
                    }

                    .state-general-330794 {
                        background: url(vmall/btn2-6.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330794 {
                        background: url(vmall/btn4-1.png) /*tpa=https://res1.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330794 {
                        background: url(vmall/btn1-5.png) /*tpa=https://res4.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330794 {
                        background: url(vmall/btn3-7.png) /*tpa=https://res8.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330794 {
                        background: url(vmall/btn5.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <!--设置快速定位id-->
                <div style="position:relative;width:1200px;margin:0 auto; ">
                    <img src="vmall/20180529115230227.jpg "
                         tppabs="https://res.vmallres.com/pimages//sale/2018-05/20180529115230227.jpg "
                         style="width:100%; "/>
                </div>
            </div>
        </div>
    </div>
    <div class="J_row clearfix ">
        <div class="J_col col-side-full clearfix ">
            <div class="J_mod mod-pic " data-popupconfig='{"title ":"标题 "}' data-cid=''
                 style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;background-color:; "
                 data-config='{"moduleType ":"normal "}' data-analytics='{"Id ":"2 ","name ":"图模块 "}'>
                <!-- 图模块 -->
                <div id="popup-content " style="visibility:hidden;height:0; ">请输入弹框内容</div>
                <div class="pic-wrap ">
                    <a href="javascript:if(confirm(%27https://sale.vmall.com/honorsmart.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://sale.vmall.com/honorsmart.html%27 "
                       tppabs="https://sale.vmall.com/honorsmart.html " target="_blank " data-track="true "><img
                            src="vmall/9d194d40-c33c-4188-8a0f-9bbb3205824b.jpg "
                            tppabs="https://res2.vmallres.com/shopdc/pic/9d194d40-c33c-4188-8a0f-9bbb3205824b.jpg "
                            alt=" "/></a>
                </div>
                <div class="J_anchors ">

                </div>
                <!-- /图模块 -->
            </div>
            <div class="J_mod mod-titleNav-area mod-330760 tpl-style-2 "
                 style="background:#fff;margin-top:;margin-bottom: ">
                <style>
                    .mod-titleNav-area.tpl-style-2.mod-330760 {
                        margin-top: 60px;
                        margin-bottom: 15px;
                    }

                    .mod-titleNav-area.mod-330760 .honnor .channel-title:after {
                        content: '';
                        position: absolute;
                        left: 0;
                        top: 2px;
                        width: 8px;
                        height: 34px;
                        background: #00b5e2;
                        -webkit-border-radius: 3px;
                        -moz-border-radius: 3px;
                        border-radius: 3px;
                    }

                    .mod-titleNav-area.mod-330760 .honnor .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330760 .honnor .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330760 .honnor .channel-more a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330760 .honnor .channel-more a:after {
                        content: '';
                        position: absolute;
                        right: 0;
                        top: 0px;
                        width: 20px;
                        height: 20px;
                        background: url(vmall/icon-honor.png) /*tpa=https://res8.vmallres.com/20180504/images/echannel/icon/icon-honor.png*/ no-repeat;
                    }

                    .mod-titleNav-area .honnor .channel-more a:hover:after {
                        background-position: 0 -20px;
                    }

                    .mod-titleNav-area.mod-330760 .honnor a:hover {
                        color: #00b5e2;
                    }

                    .mod-titleNav-area.mod-330760 .huawei .channel-title a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330760 .huawei .channel-title:before {
                        background: !important;
                    }

                    .mod-titleNav-area.mod-330760 .huawei .channel-nav a:hover {
                        color:;
                    }

                    .mod-titleNav-area.mod-330760 .huawei .channel-more a:hover {
                        border: 1px solid !important;
                        color: !important;
                    }

                    .mod-titleNav-area.mod-330760 .huawei .channel-more a:hover:after {
                        border-left: 6px solid !important;
                    }

                    .mod-titleNav-area.mod-330760 .huawei a:hover {
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330760 .huawei .channel-title:before {
                        background: #900;
                    }

                    .mod-titleNav-area.mod-330760 .huawei .channel-more a:hover {
                        border: 1px solid #900;
                        color: #900;
                    }

                    .mod-titleNav-area.mod-330760 .huawei .channel-more a:hover:after {
                        border-left: 6px solid #900;
                    }
                </style>
                <div id="part-6 " class="hrefs "></div>
                <div class="huawei ">
                    <h2 class="channel-title ">
                        <span>智能家居</span>
                    </h2>
                    <ul class="channel-nav " style="height: 36px; ">
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-183 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-183%27 "
                               tppabs="https://www.vmall.com/list-183 "
                               target="_blank ">${listCategory[4].categoryList[0].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-185 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-185%27 "
                               tppabs="https://www.vmall.com/list-185 "
                               target="_blank ">${listCategory[4].categoryList[1].hpcName}</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm(%27https://www.vmall.com/list-181 \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/list-181%27 "
                               tppabs="https://www.vmall.com/list-181 "
                               target="_blank ">${listCategory[4].categoryList[2].hpcName}</a>
                        </li>
                    </ul>
                    <div class="channel-more ">
                        <a href="list-163.htm " tppabs="https://www.vmall.com/list-163 " target="_blank ">更多</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="J_row row-1200 clearfix ">
        <div class="J_col col-side-1200 clearfix ">
            <div class="J_mod mod-product-single-huawei tpl-3 "
                 style="background: url( 'vmall/ce1e79cd-3b4d-4edb-94ae-0d685603130a.png')/*tpa=https://res4.vmallres.com/shopdc/pic/ce1e79cd-3b4d-4edb-94ae-0d685603130a.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"3 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330762 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330762 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330762 {
                        background: url(vmall/btn1-6.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330762 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330762 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086100906136.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086100906136.html#10086429153459%27 "
                   tppabs="https://www.vmall.com/product/10086100906136.html#10086429153459 " target="_blank "
                   data-track="true " data-sbom-code="3001010011001 ">
                    <div class="p-text ">
                        <div class="title " style="color:#000000; ">荣耀路由Pro 2</div>
                        <div class="desc " style="color:#000000; ">四核全千兆</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;349
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/04d7ef55-ab9f-4195-b821-8be29f7a2f72.png')/*tpa=https://res6.vmallres.com/shopdc/pic/04d7ef55-ab9f-4195-b821-8be29f7a2f72.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330764 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330764 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330764 {
                        background: url(vmall/btn1-6.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330764 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330764 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086958063836.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086958063836.html#10086943604110%27 "
                   tppabs="https://www.vmall.com/product/10086958063836.html#10086943604110 " target="_blank "
                   data-track="true " data-sbom-code="3001010008801 ">
                    <div class="p-text ">
                        <div class="title ">荣耀路由2S</div>
                        <div class="desc ">4颗信号放大器 信号更穿墙</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;199
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/a6d6a9b2-d818-49a4-abf6-254e51e63deb.png')/*tpa=https://res0.vmallres.com/shopdc/pic/a6d6a9b2-d818-49a4-abf6-254e51e63deb.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330766 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330766 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330766 {
                        background: url(vmall/btn1-6.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330766 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330766 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086007028117.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086007028117.html#10086094709326%27 "
                   tppabs="https://www.vmall.com/product/10086007028117.html#10086094709326 " target="_blank "
                   data-track="true " data-sbom-code="3001010010301 ">
                    <div class="p-text ">
                        <div class="title ">荣耀路由 X2</div>
                        <div class="desc ">双核双千兆</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;149
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/3428b2c1-965e-4bd3-b749-d63b83114715.png')/*tpa=https://res7.vmallres.com/shopdc/pic/3428b2c1-965e-4bd3-b749-d63b83114715.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330768 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330768 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330768 {
                        background: url(vmall/btn1-6.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330768 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330768 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086862057573.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086862057573.html#10086477642869%27 "
                   tppabs="https://www.vmall.com/product/10086862057573.html#10086477642869 " target="_blank "
                   data-track="true " data-sbom-code="3102060004501 ">
                    <div class="p-text ">
                        <div class="title ">荣耀YOYO智能音箱</div>
                        <div class="desc ">智能通话，能听会说</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;199
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/9bc507b0-1a59-4276-93c9-378488c77fd0.png')/*tpa=https://res1.vmallres.com/shopdc/pic/9bc507b0-1a59-4276-93c9-378488c77fd0.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330770 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330770 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330770 {
                        background: url(vmall/btn1-6.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330770 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330770 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/3053.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/3053.html#7219%27 "
                   tppabs="https://www.vmall.com/product/3053.html#7219 " target="_blank " data-track="true "
                   data-sbom-code="10111040102601 ">
                    <div class="p-text ">
                        <div class="title ">荣耀路由Pro</div>
                        <div class="desc ">双千兆网速 大户型覆盖</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;328
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/1b9c17d1-db19-45df-8827-2eeb6fdce379.png')/*tpa=https://res5.vmallres.com/shopdc/pic/1b9c17d1-db19-45df-8827-2eeb6fdce379.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330772 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330772 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330772 {
                        background: url(vmall/btn1-6.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330772 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330772 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/690174055.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/690174055.html#361227976%27 "
                   tppabs="https://www.vmall.com/product/690174055.html#361227976 " target="_blank " data-track="true "
                   data-sbom-code="1506010001301 ">
                    <div class="p-text ">
                        <div class="title ">荣耀盒子Pro</div>
                        <div class="desc ">智能语音蓝牙操控</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;419
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
            <div class="J_mod mod-product-single-huawei tpl-5 "
                 style="background: url( 'vmall/b11cd665-d9cd-47a5-9272-cbaa5ef12a92.png')/*tpa=https://res8.vmallres.com/shopdc/pic/b11cd665-d9cd-47a5-9272-cbaa5ef12a92.png*/ no-repeat center center; "
                 data-analytics='{"Id ":"111 ","name ":"华为专区单商品 ","itemCount ":"5 "}'>
                <!-- 华为专区单商品 -->
                <style>
                    .state-general-330774 {
                        background: url(vmall/btn2-3.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn2.png*/ no-repeat;
                    }

                    .state-empty-330774 {
                        background: url(vmall/btn4.png) /*tpa=https://res5.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn4.png*/ no-repeat;
                    }

                    .state-got-330774 {
                        background: url(vmall/btn1-6.png) /*tpa=https://res2.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn1.png*/ no-repeat;
                    }

                    .state-begin-330774 {
                        background: url(vmall/btn3-4.png) /*tpa=https://res7.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn3.png*/ no-repeat;
                    }

                    .state-over-330774 {
                        background: url(vmall/btn5-4.png) /*tpa=https://res3.vmallres.com/shopdc/cdn/modules-bf/yiqm/couponcom/img/btn5.png*/ no-repeat;
                    }
                </style>
                <a class="item "
                   href="javascript:if(confirm(%27https://www.vmall.com/product/10086200630069.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/product/10086200630069.html#10086686539979%27 "
                   tppabs="https://www.vmall.com/product/10086200630069.html#10086686539979 " target="_blank "
                   data-track="true " data-sbom-code="3001070000201 ">
                    <div class="p-text ">
                        <div class="title ">荣耀存储</div>
                        <div class="desc ">智能通话，能听会说</div>
                        <div class="price " style="color:#00b5e2; ">
                            &#165;699
                        </div>
                    </div>
                </a>
                <script>
                    var couponList = window.couponList || {};
                </script>
                <!-- /华为专区单商品 -->
            </div>
        </div>
    </div>
    <div class="J_row clearfix ">
        <div class="J_col col-side-full clearfix ">
            <div class="J_mod mod-pic " data-popupconfig='{"title ":"标题 "}' data-cid=''
                 style="margin-top:0px;margin-bottom:13px;margin-left:0px;margin-right:0px;background-color:; "
                 data-config='{"moduleType ":"normal "}' data-analytics='{"Id ":"2 ","name ":"图模块 "}'>
                <!-- 图模块 -->
                <div id="popup-content " style="visibility:hidden;height:0; ">请输入弹框内容</div>
                <div class="pic-wrap ">
                    <a href="javascript:if(confirm(%27https://sale.vmall.com/honorhome.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://sale.vmall.com/honorhome.html%27 "
                       tppabs="https://sale.vmall.com/honorhome.html " target="_blank " data-track="true "><img
                            src="vmall/c1324d42-083e-405c-b640-c4bd9ecc6b1e.jpg "
                            tppabs="https://res9.vmallres.com/shopdc/pic/c1324d42-083e-405c-b640-c4bd9ecc6b1e.jpg "
                            alt=" "/></a>
                </div>
                <div class="J_anchors ">

                </div>
                <!-- /图模块 -->
            </div>
            <div class="J_mod mod-footer " disable-edit="true ">
                <!--底部信息-->
                <!--设置快速定位id-->
                <style type="text/css ">
                    .mod-footer-wrp ins, .mod-footer-wrp a {
                        text-decoration: none;
                        color: #333
                    }

                    .mod-footer-wrp a {
                        cursor: pointer
                    }

                    .mod-footer-wrp a:hover {
                        text-decoration: none
                    }

                    .mod-footer-wrp :focus {
                        outline: 0
                    }

                    .mod-footer-wrp .relative {
                        position: relative
                    }

                    .mod-footer-wrp em {
                        font-style: normal;
                        font-weight: 400
                    }

                    .mod-footer-wrp .btn-line-primary i, .mod-footer-wrp .slogan li i, .mod-footer-wrp .service-btn i {
                        background: url(vmall/icon-common.png) /*tpa=https://res.vmallres.com/20171016/images/echannel/icon-common.png*/
                    }

                    .mod-footer-wrp .service-container, .mod-footer-wrp .slogan-container {
                        background: #f9f9f9;
                        width: 100%;
                        min-width: 1200px;
                        border-top: 0
                    }

                    .mod-footer-wrp .footer-container {
                        background: #f9f9f9;
                        width: 100%;
                        min-width: 1200px;
                        border-top: 0
                    }

                    .mod-footer-wrp .service {
                        border-top: 1px solid #e5e5e5;
                        border-bottom: 1px solid #e5e5e5;
                        padding: 23px 0 24px;
                        width: 1200px;
                        margin: 0 auto;
                        *zoom: 1
                    }

                    .mod-footer-wrp .service:before, .mod-footer-wrp .service:after {
                        content: " ";
                        display: table
                    }

                    .mod-footer-wrp .service:after {
                        clear: both
                    }

                    .mod-footer-wrp .service .service-l {
                        width: 920px;
                        height: 155px;
                        padding-top: 5px;
                        border-right: 1px solid #e5e5e5
                    }

                    .mod-footer-wrp .service dl {
                        float: left
                    }

                    .mod-footer-wrp .service .service-l dl {
                        width: 16.66667%
                    }

                    .mod-footer-wrp .service dt {
                        font-size: 14px;
                        color: #3a3a3a
                    }

                    .mod-footer-wrp .service dd li {
                        line-height: 22px;
                        color: #777
                    }

                    .mod-footer-wrp .service dd a {
                        color: #777
                    }

                    .mod-footer-wrp .service dd a:hover {
                        color: #ca141d;
                        text-decoration: none
                    }

                    .mod-footer-wrp .service .s7 dd li a {
                        color: #333
                    }

                    .mod-footer-wrp .service .s7 dd li a:hover {
                        color: #333;
                        text-decoration: none;
                        cursor: text
                    }

                    .mod-footer-wrp .service dt .line {
                        background: #a8a8a8;
                        width: 22px;
                        height: 2px;
                        margin: 2px 0 12px 0 !important
                    }

                    .mod-footer-wrp .service dt .title {
                        font-size: 14px !important;
                        padding-bottom: 7px;
                        color: #333;
                        display: block;
                        border-left: none;
                        padding-left: 0;
                        line-height: 1.5 !important;
                        margin-bottom: 0 !important
                    }

                    .mod-footer-wrp .service dt .button {
                        position: absolute;
                        left: 65px;
                        bottom: 10px
                    }

                    .mod-footer-wrp .service dt .btn {
                        display: inline-block;
                        width: 10px;
                        height: 14px;
                        padding: 0;
                        margin-right: 2px;
                        cursor: pointer;
                        text-indent: -999px;
                        overflow: hidden;
                        background: url("vmall/icon-header.png-20170620.png ") /*tpa=https://res8.vmallres.com/20181205/images/echannel/icon/icon-header.png?20170620*/ no-repeat
                    }

                    .mod-footer-wrp .service dt .btn.disabled {
                        cursor: not-allowed
                    }

                    .mod-footer-wrp .service dt .btn.btn-next {
                        background-position: -360px -251px
                    }

                    .mod-footer-wrp .service dt .btn.btn-next.disabled {
                        background-position: -370px -251px
                    }

                    .mod-footer-wrp .service dt .btn.btn-prev {
                        background-position: -350px -251px
                    }

                    .mod-footer-wrp .service dt .btn.btn-prev.disabled {
                        background-position: -340px -251px
                    }

                    .mod-footer-wrp .service dl.s6 dd {
                        height: 115px;
                        width: 100%;
                        overflow: hidden
                    }

                    .mod-footer-wrp .service dl.s6 dd ol {
                        width: 158px;
                        float: left
                    }

                    .mod-footer-wrp .service dl.s6 dd li {
                        width: 158px;
                        overflow: hidden;
                        text-overflow: ellipsis;
                        white-space: nowrap
                    }

                    .mod-footer-wrp .service .service-r {
                        width: 279px;
                        min-height: 160px;
                        margin-top: 2px;
                        text-align: center;
                        padding-left: 0
                    }

                    .mod-footer-wrp .service .service-r .title {
                        font-size: 24px;
                        color: #cb242b;
                        font-weight: bold
                    }

                    .mod-footer-wrp .service .service-r .s7 {
                        width: 279px
                    }

                    .mod-footer-wrp .service .service-r .s7 dd {
                        font-size: 14px;
                        color: #333
                    }

                    .mod-footer-wrp .service dl.s7 .title {
                        font-size: 24px !important;
                        padding: 0;
                        line-height: 24px
                    }

                    .mod-footer-wrp .service dd a.service-btn {
                        color: #cb242b
                    }

                    .mod-footer-wrp .service-btn {
                        display: block;
                        width: 168px;
                        height: 32px;
                        padding: 0;
                        margin: 0 auto;
                        margin-top: 10px;
                        border: 1px solid #cb242b;
                        font-size: 14px;
                        line-height: 32px;
                        text-align: center;
                        color: #cb242b;
                        cursor: pointer;
                        border-radius: 6px
                    }

                    .mod-footer-wrp .service-btn i {
                        display: inline-block;
                        height: 20px;
                        width: 20px;
                        margin-right: 6px;
                        position: relative;
                        top: -1px;
                        vertical-align: middle;
                        background: url("vmall/icon-header.png-20170620.png ") /*tpa=https://res8.vmallres.com/20181205/images/echannel/icon/icon-header.png?20170620*/ no-repeat
                    }

                    .mod-footer-wrp .btn-line-primary i {
                        background-position: -333px -210px
                    }

                    .mod-footer-wrp .btn-report i {
                        height: 20px;
                        position: relative;
                        top: -1px;
                        background-position: -333px -210px
                    }

                    .mod-footer-wrp .slogan {
                        padding: 22px 0 20px;
                        width: 1200px;
                        margin: 0 auto
                    }

                    .mod-footer-wrp .slogan ul {
                        *zoom: 1
                    }

                    .mod-footer-wrp .slogan ul:before, .mod-footer-wrp .slogan ul:after {
                        content: " ";
                        display: table
                    }

                    .mod-footer-wrp .slogan ul:after {
                        clear: both
                    }

                    .mod-footer-wrp .slogan li {
                        display: table-cell;
                        font-size: 18px;
                        color: #333;
                        height: 40px;
                        text-align: center;
                        vertical-align: middle;
                        width: auto
                    }

                    .mod-footer-wrp .slogan li:first-child {
                        padding-right: 120px
                    }

                    .mod-footer-wrp .slogan li:first-child + li {
                        padding-right: 120px
                    }

                    .mod-footer-wrp .slogan li:first-child + li + li {
                        padding-right: 110px
                    }

                    .mod-footer-wrp .slogan li i {
                        display: inline-block;
                        vertical-align: middle;
                        width: 40px;
                        height: 40px;
                        margin-right: 15px;
                        background: url("vmall/icon-header.png-20170620.png ") /*tpa=https://res8.vmallres.com/20181205/images/echannel/icon/icon-header.png?20170620*/ no-repeat
                    }

                    .mod-footer-wrp .slogan .s1 i {
                        background-position: -358px -207px
                    }

                    .mod-footer-wrp .slogan .s2 i {
                        background-position: -398px -207px
                    }

                    .mod-footer-wrp .slogan .s3 i {
                        background-position: -438px -207px
                    }

                    .mod-footer-wrp .slogan .s4 i {
                        background-position: -478px -207px
                    }

                    .mod-footer-wrp .footer {
                        padding: 22px 0 22px;
                        width: 1200px;
                        margin: 0 auto;
                        color: #666;
                        line-height: 1.5
                    }

                    .mod-footer-wrp .footer a {
                        color: #666
                    }

                    .mod-footer-wrp .footer a:hover {
                        color: #ca151d;
                        text-decoration: none
                    }

                    .mod-footer-wrp .footer-warrant-area {
                        text-align: left;
                        color: #a4a4a4;
                        line-height: 20px
                    }

                    .mod-footer-wrp .footer-warrant-area .footer-warrant-logo {
                        width: 82px;
                        height: 20px;
                        padding: 4px 20px 0 0
                    }

                    .mod-footer-wrp .footer-warrant-area .footer-warrant-logo a {
                        display: block;
                        width: 100%;
                        height: 100%
                    }

                    .mod-footer-wrp .footer-warrant-area .footer-warrant-logo img {
                        vertical-align: top;
                        width: 82px;
                        height: 20px
                    }

                    .mod-footer-wrp .footer-warrant-area a {
                        color: #a4a4a4
                    }

                    .mod-footer-wrp .footer-warrant-area em {
                        padding-right: 3px;
                        margin-left: 3px
                    }

                    .mod-footer-wrp .footer-warrant-area .footer-warrant-img {
                        margin-top: 2px
                    }

                    .mod-footer-wrp .footer-warrant-area .footer-warrant-img a {
                        display: block;
                        width: 70px;
                        margin-left: 17px;
                        height: 24px
                    }

                    .mod-footer-wrp .footer-warrant-area .footer-warrant-img img {
                        vertical-align: top;
                        width: 70px;
                        height: 24px
                    }

                    .mod-footer-wrp .footer-warrant-link {
                        *zoom: 1
                    }

                    .mod-footer-wrp .footer-warrant-link:before, .mod-footer-wrp .footer-warrant-link:after {
                        content: " ";
                        display: table
                    }

                    .mod-footer-wrp .footer-warrant-link:after {
                        clear: both
                    }

                    .mod-footer-wrp .footer-warrant-link li {
                        float: left
                    }

                    .mod-footer-wrp .footer-warrant-link li a {
                        color: #777
                    }

                    .mod-footer-wrp .footer-warrant-link li:after {
                        content: " ";
                        width: 1px;
                        height: 13px;
                        background: #d3d3d3;
                        display: inline-block;
                        position: relative;
                        top: 2px;
                        margin: 0 6px
                    }

                    .mod-footer-wrp .footer-warrant-link li:last-child:after {
                        display: none
                    }

                    .mod-footer-wrp .service-code {
                        float: left;
                        width: 250px;
                        margin-top: 26px;
                        margin-left: 40px
                    }

                    .mod-footer-wrp .service-code h2 {
                        font-size: 14px;
                        color: #333;
                        float: left
                    }

                    .mod-footer-wrp .service-code ul {
                        float: left;
                        margin-left: 3px
                    }

                    .mod-footer-wrp .service-code li {
                        width: 24px;
                        height: 24px;
                        margin-right: 11px;
                        position: relative;
                        float: left;
                        background: url("vmall/icon-header.png-20170620.png ") /*tpa=https://res8.vmallres.com/20181205/images/echannel/icon/icon-header.png?20170620*/ no-repeat
                    }

                    .mod-footer-wrp .service-code li:hover .service-code-img {
                        display: block
                    }

                    .mod-footer-wrp .service-code li.service-code-wechat {
                        background-position: -355px -171px
                    }

                    .mod-footer-wrp .service-code li.service-code-wechat:hover {
                        background-position: -331px -171px
                    }

                    .mod-footer-wrp .service-code li.service-code-toutiao {
                        background-position: -403px -171px
                    }

                    .mod-footer-wrp .service-code li.service-code-toutiao:hover {
                        background-position: -379px -171px
                    }

                    .mod-footer-wrp .service-code li.service-code-sina {
                        background-position: -451px -171px
                    }

                    .mod-footer-wrp .service-code li.service-code-sina:hover {
                        background-position: -427px -171px
                    }

                    .mod-footer-wrp .service-code li.service-code-vmall {
                        background-position: -499px -171px
                    }

                    .mod-footer-wrp .service-code li.service-code-vmall:hover {
                        background-position: -475px -171px
                    }

                    .mod-footer-wrp .service-code li .service-code-img {
                        display: none;
                        position: absolute;
                        top: 30px;
                        left: -50px;
                        background: #fff;
                        width: 120px;
                        height: 120px;
                        box-shadow: 0 1px 5px rgba(158, 158, 158, 0.6)
                    }

                    .mod-footer-wrp .service-code li .service-code-img img {
                        width: 108px;
                        height: 108px;
                        vertical-align: top;
                        margin: 6px
                    }

                    .mod-footer-wrp .service-code li .service-code-img:before {
                        content: " ";
                        width: 0;
                        height: 0;
                        display: block;
                        border-right: 5px solid transparent;
                        border-left: 5px solid transparent;
                        border-bottom: 6px solid #fff;
                        position: absolute;
                        top: -5px;
                        left: 56px
                    }

                    .mod-footer-wrp .service-code li a {
                        display: block;
                        width: 24px;
                        height: 24px
                    }

                    .mod-footer-wrp .swiper-container {
                        margin: 0 auto;
                        position: relative;
                        overflow: hidden;
                        direction: ltr;
                        -webkit-backface-visibility: hidden;
                        -moz-backface-visibility: hidden;
                        -ms-backface-visibility: hidden;
                        -o-backface-visibility: hidden;
                        backface-visibility: hidden;
                        z-index: 1
                    }

                    .mod-footer-wrp .swiper-wrapper {
                        position: relative;
                        width: 100%;
                        -webkit-transition-property: -webkit-transform, left, top;
                        -webkit-transition-duration: 0s;
                        -webkit-transform: translate3d(0px, 0, 0);
                        -webkit-transition-timing-function: ease;
                        -moz-transition-property: -moz-transform, left, top;
                        -moz-transition-duration: 0s;
                        -moz-transform: translate3d(0px, 0, 0);
                        -moz-transition-timing-function: ease;
                        -o-transition-property: -o-transform, left, top;
                        -o-transition-duration: 0s;
                        -o-transform: translate3d(0px, 0, 0);
                        -o-transition-timing-function: ease;
                        -o-transform: translate(0px, 0px);
                        -ms-transition-property: -ms-transform, left, top;
                        -ms-transition-duration: 0s;
                        -ms-transform: translate3d(0px, 0, 0);
                        -ms-transition-timing-function: ease;
                        transition-property: transform, left, top;
                        transition-duration: 0s;
                        transform: translate3d(0px, 0, 0);
                        transition-timing-function: ease;
                        -webkit-box-sizing: content-box;
                        -moz-box-sizing: content-box;
                        box-sizing: content-box
                    }

                    .mod-footer-wrp .swiper-free-mode > .swiper-wrapper {
                        -webkit-transition-timing-function: ease-out;
                        -moz-transition-timing-function: ease-out;
                        -ms-transition-timing-function: ease-out;
                        -o-transition-timing-function: ease-out;
                        transition-timing-function: ease-out;
                        margin: 0 auto
                    }

                    .mod-footer-wrp .swiper-slide {
                        float: left;
                        -webkit-box-sizing: content-box;
                        -moz-box-sizing: content-box;
                        box-sizing: content-box
                    }

                    .mod-footer-wrp .swiper-wp8-horizontal {
                        -ms-touch-action: pan-y
                    }

                    .mod-footer-wrp .swiper-wp8-vertical {
                        -ms-touch-action: pan-x
                    }
                </style>
                <div class="mod-footer-wrp ">
                    <!-- 口号 -->
                    <div class="slogan-container ">
                        <div class="slogan ">
                            <ul>
                                <li class="s1 ">
                                    <a target="_blank "
                                       href="javascript:if(confirm(%27https://www.vmall.com/help/faq-934.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-934.html%27 "
                                       tppabs="https://www.vmall.com/help/faq-934.html "><i></i>百强企业?品质保证</a>
                                </li>
                                <li class="s2 ">
                                    <a target="_blank "
                                       href="javascript:if(confirm(%27https://www.vmall.com/help/faq-834.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-834.html%27 "
                                       tppabs="https://www.vmall.com/help/faq-834.html "><i></i>7天退货?15天换货</a>
                                </li>
                                <li class="s3 ">
                                    <a target="_blank "
                                       href="javascript:if(confirm(%27https://www.vmall.com/help/faq-4367.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-4367.html%27 "
                                       tppabs="https://www.vmall.com/help/faq-4367.html "><i></i> <span>48元起免运费</span>
                                    </a>
                                </li>
                                <li class="s4 ">
                                    <a target="_blank "
                                       href="javascript:if(confirm(%27http://consumer.huawei.com/cn/support/service-center/index.htm \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://consumer.huawei.com/cn/support/service-center/index.htm%27 "
                                       tppabs="http://consumer.huawei.com/cn/support/service-center/index.htm "><i></i>1000家维修网点?全国联保</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /口号 -->
                    <!-- 服务 -->
                    <div class="service-container ">
                        <div class="service ">
                            <div class="service-l fl ">
                                <dl class="s1 ">
                                    <dt>
                                        <p class="title ">
                                            购物相关
                                        </p>
                                    </dt>
                                    <dd>
                                        <ol>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/faq-790.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-790.html%27 "
                                                   tppabs="https://www.vmall.com/help/faq-790.html ">购物指南</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/faq-814.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-814.html%27 "
                                                   tppabs="https://www.vmall.com/help/faq-814.html ">配送方式</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/faq-828.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-828.html%27 "
                                                   tppabs="https://www.vmall.com/help/faq-828.html ">支付方式</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/category-16.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/category-16.html%27 "
                                                   tppabs="https://www.vmall.com/help/category-16.html ">常见问题</a>
                                            </li>
                                        </ol>
                                    </dd>
                                </dl>
                                <dl class="s2 ">
                                    <dt>
                                        <p class="title ">
                                            保修与退换货
                                        </p>
                                    </dt>
                                    <dd>
                                        <ol>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/faq-833.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-833.html%27 "
                                                   tppabs="https://www.vmall.com/help/faq-833.html ">保修政策</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/faq-834.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-834.html%27 "
                                                   tppabs="https://www.vmall.com/help/faq-834.html ">退换货政策</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/faq-835.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-835.html%27 "
                                                   tppabs="https://www.vmall.com/help/faq-835.html ">退换货流程</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27http://consumer.huawei.com/cn/support/warranty-query/index.htm \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://consumer.huawei.com/cn/support/warranty-query/index.htm%27 "
                                                   tppabs="http://consumer.huawei.com/cn/support/warranty-query/index.htm ">保修状态查询</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27http://c-ver.huawei.com/web/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://c-ver.huawei.com/web/%27 "
                                                   tppabs="http://c-ver.huawei.com/web/ ">配件防伪查询</a>
                                            </li>
                                        </ol>
                                    </dd>
                                </dl>
                                <dl class="s3 ">
                                    <dt>
                                        <p class="title ">
                                            维修与技术支持
                                        </p>
                                    </dt>
                                    <dd>
                                        <ol>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27http://consumer.huawei.com/cn/support/service-center/index.htm \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://consumer.huawei.com/cn/support/service-center/index.htm%27 "
                                                   tppabs="http://consumer.huawei.com/cn/support/service-center/index.htm ">售后网点</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27http://consumer.huawei.com/cn/support/reservation/index.htm \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://consumer.huawei.com/cn/support/reservation/index.htm%27 "
                                                   tppabs="http://consumer.huawei.com/cn/support/reservation/index.htm ">预约维修</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27http://consumer.huawei.com/cn/support/express-repair/index.htm \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://consumer.huawei.com/cn/support/express-repair/index.htm%27 "
                                                   tppabs="http://consumer.huawei.com/cn/support/express-repair/index.htm ">手机寄修</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27http://consumer.huawei.com/cn/support/sparepart-price/index.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://consumer.huawei.com/cn/support/sparepart-price/index.html%27 "
                                                   tppabs="http://consumer.huawei.com/cn/support/sparepart-price/index.html ">备件价格查询</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://consumer.huawei.com/cn/support/door-to-door-service/index.html \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://consumer.huawei.com/cn/support/door-to-door-service/index.html%27 "
                                                   tppabs="https://consumer.huawei.com/cn/support/door-to-door-service/index.html ">上门服务</a>
                                            </li>
                                        </ol>
                                    </dd>
                                </dl>
                                <dl class="s4 ">
                                    <dt>
                                        <p class="title ">
                                            特色服务
                                        </p>
                                    </dt>
                                    <dd>
                                        <ol>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://consumer.huawei.com/cn/support/distinguish/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://consumer.huawei.com/cn/support/distinguish/%27 "
                                                   tppabs="https://consumer.huawei.com/cn/support/distinguish/ "
                                                   rel="nofollow ">防伪查询</a>
                                            </li>
                                            <li>
                                                <a target="_blank " href="tcsProductIndex.htm "
                                                   tppabs="https://www.vmall.com/order/tcsProductIndex "
                                                   rel="nofollow ">补购保障</a>
                                            </li>
                                            <li>
                                                <a target="_blank " href="recycle.htm "
                                                   tppabs="https://www.vmall.com/recycle " rel="nofollow ">以旧换新</a>
                                            </li>
                                            <li>
                                                <a target="_blank " href="10086344499475.html#10086230774569 "
                                                   tppabs="https://www.vmall.com/product/10086344499475.html#10086230774569 "
                                                   rel="nofollow ">礼品包装</a>
                                            </li>
                                        </ol>
                                    </dd>
                                </dl>
                                <dl class="s5 ">
                                    <dt>
                                        <p class="title ">
                                            关于我们
                                        </p>
                                    </dt>
                                    <dd>
                                        <ol>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/faq-934.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-934.html%27 "
                                                   tppabs="https://www.vmall.com/help/faq-934.html ">公司介绍</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/help/faq-939.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-939.html%27 "
                                                   tppabs="https://www.vmall.com/help/faq-939.html ">华为商城简介</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27http://consumer.huawei.com/cn/support/where-to-buy/store-location/index.htm \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://consumer.huawei.com/cn/support/where-to-buy/store-location/index.htm%27 "
                                                   tppabs="http://consumer.huawei.com/cn/support/where-to-buy/store-location/index.htm ">华为线下门店</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/offshop/shoplist \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/offshop/shoplist%27 "
                                                   tppabs="https://www.vmall.com/offshop/shoplist ">荣耀线下门店</a>
                                            </li>
                                            <li>
                                                <a target="_blank "
                                                   href="javascript:if(confirm(%27https://www.vmall.com/common/zhaopin \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/common/zhaopin%27 "
                                                   tppabs="https://www.vmall.com/common/zhaopin ">诚征英才</a>
                                            </li>
                                            <li>
                                                <a href="javascript:; " title="意见反馈 "
                                                   onclick="ec.survery.open(); ">意见反馈</a>
                                            </li>
                                        </ol>
                                    </dd>
                                </dl>
                                <dl class="s6 " id="serverlink ">
                                    <dt class="relative ">
                                        <p class="title ">
                                            友情链接
                                        </p>
                                        <p class="button ">
                                            <span class="btn btn-prev disabled "> < </span><span class="btn btn-next "> > </span>
                                        </p>
                                    </dt>
                                    <dd class=" ">
                                        <div class="service-list clearfix ">
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.huawei.com/cn/') ">华为集团</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:if(confirm(%27https://consumer.huawei.com/cn/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://consumer.huawei.com/cn/%27 "
                                                       tppabs="https://consumer.huawei.com/cn/ " target="_blank "
                                                       textvalue="华为CBG官网 ">华为CBG官网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.honor.cn/') ">荣耀官网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://club.huawei.com/') "
                                                       textvalue="花粉俱乐部 ">花粉俱乐部</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:if(confirm(%27https://www.vmall.com/shopdc/sitemap.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/shopdc/sitemap.html%27 "
                                                       tppabs="https://www.vmall.com/shopdc/sitemap.html "
                                                       target="_blank ">网站地图</a><br/>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.hwtrip.com/') ">爱旅官网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://app.vmall.com/') ">华为应用市场</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.wbiao.cn/') ">万表网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.askci.com/') ">中商情报网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.shuame.com/') ">刷机精灵</a>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'https://www.vmall.com') " textvalue="华为手机 ">华为手机</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.17ugo.com/') ">优购物官网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.znds.com/') ">智能电视</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.uc.cn/') ">UC浏览器</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.zol.com/') ">中关村商城</a>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.kugou.com/') ">酷狗音乐</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.958shop.com/') ">百信手机网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.cardbaobao.com/') ">卡宝宝网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.duote.com/') "
                                                       textvalue="多特软件下载 ">多特软件下载</a>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.tongbu.com/') ">同步助手</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.fengniao.com/') ">蜂鸟摄影网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.7po.com/') ">奇珀论坛</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.homekoo.com/') ">家具商城</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.paixie.net/') ">拍鞋网商城</a>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.obolee.com/') ">欧宝丽珠宝</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.xungou.com/') ">寻购网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.yzmg.com/') ">亿智蘑菇</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.wandoujia.com/') ">安卓市场</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://baike.1688.com/') ">阿里巴巴生意经</a>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'http://product.cnmo.com/') ">手机大全</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.anzow.com/') ">安卓软件园</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.dashi.com/') ">卓大师刷机</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.wpxap.com/') ">智机论坛</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.eepw.com.cn/') ">电子产品世界</a>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.liqucn.com/') ">历趣网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.51bi.com/') ">网购返利</a>
                                                </li>
                                                <li>
                                                    <a title="Apple110 "
                                                       onclick="jump_link( 'http://www.apple110.com/') ">Apple110</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.91.com/') " textvalue="91手机门户网 ">91手机门户网</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.ydss.cn/') ">移动叔叔</a>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <a onclick="jump_link( 'http://www.outlets365.com/') ">奥特莱斯</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'https://www.vmall.com') ">荣耀Magic</a>
                                                </li>
                                                <li>
                                                    <a onclick="jump_link( 'http://car.ctrip.com/') ">携程租车</a>
                                                </li>
                                            </ol>
                                        </div>
                                    </dd>
                                </dl>
                            </div>
                            <div class="service-r fl ">
                                <dl class="s7 ">
                                    <dt>
                                        <p class="title ">
                                            400-088-6888
                                        </p>
                                    </dt>
                                    <dd>
                                        <ol>
                                            <li>
                                                <a>7x24小时客服热线（仅收市话费）</a>
                                            </li>
                                        </ol>
                                    </dd>
                                    <dd>
                                        <a id="tools-nav-service-robotim-button " rel="nofollow "
                                           class="service-btn btn-line-primary "
                                           href="javascript:if(confirm(%27http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&enterurl=https%3A%2F%2Fwww.vmall.com%2F&k=1&remark=\ n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&enterurl=https%3A%2F%2Fwww.vmall.com%2F&k=1&remark=%27 "
                                           tppabs="http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&enterurl=https%3A%2F%2Fwww.vmall.com%2F&k=1&remark="
                                           target=" _blank " style="display:block; "><i class=" "></i> 在线客服</a>
                                    </dd>
                                </dl>
                                <div class="service-code clearfix ">
                                    <h2>
                                        关注Vmall：
                                    </h2>
                                    <ul class="clearfix ">
                                        <li class="service-code-wechat ">
                                            <div class="service-code-img ">
                                                <img src="vmall/20181116180507506.jpg "
                                                     tppabs="https://res.vmallres.com/pimages/sale/2018-11/20181116180507506.jpg "/>
                                            </div>
                                        </li>
                                        <li class="service-code-toutiao ">
                                            <a target="_blank "
                                               href="javascript:if(confirm(%27https://www.toutiao.com/c/user/52373534151/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://www.toutiao.com/c/user/52373534151/#mid=52586950033%27 "
                                               tppabs="https://www.toutiao.com/c/user/52373534151/#mid=52586950033 "
                                               rel="nofollow " style="display:block;width:20px;height:20px; "></a>
                                        </li>
                                        <li class="service-code-sina ">
                                            <a target="_blank "
                                               href="javascript:if(confirm(%27https://weibo.com/shophuawei \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://weibo.com/shophuawei%27 "
                                               tppabs="https://weibo.com/shophuawei " rel="nofollow "
                                               style="display:block;width:20px;height:20px; "></a>
                                        </li>
                                        <li class="service-code-vmall ">
                                            <a target="_blank "
                                               href="javascript:if(confirm(%27https://club.huawei.com/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://club.huawei.com/%27 "
                                               tppabs="https://club.huawei.com/ " rel="nofollow "
                                               style="display:block;width:20px;height:20px; "></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /服务 -->
                    <!-- 底部 -->
                    <div class="footer-container " style="padding-bottom:0px; ">
                        <div class="footer ">
                            <div class="footer-warrant-area clearfix ">
                                <p class="footer-warrant-logo fl ">
                                    <a href="index.htm " tppabs="https://www.vmall.com/ "><img
                                            src="vmall/HBHfAUYHLA0u5qMS8Nkr.png "
                                            tppabs="https://res.vmallres.com/pimages/template/content/2018/HBHfAUYHLA0u5qMS8Nkr.png "
                                            title="vmall.png " style="float:none; "/></a>
                                </p>
                                <div class="fl ">
                                    <ul class="footer-warrant-link ">
                                        <li>
                                            <a href="javascript:if(confirm(%27https://www.huawei.com/cn/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://www.huawei.com/cn/%27 "
                                               tppabs="https://www.huawei.com/cn/ ">华为集团</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27https://consumer.huawei.com/cn/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://consumer.huawei.com/cn/%27 "
                                               tppabs="https://consumer.huawei.com/cn/ ">华为CBG官网</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27http://www.honor.cn/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.honor.cn/%27 "
                                               tppabs="http://www.honor.cn/ ">荣耀官网</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27https://club.huawei.com/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://club.huawei.com/%27 "
                                               tppabs="https://club.huawei.com/ ">花粉俱乐部</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27http://appstore.huawei.com/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://appstore.huawei.com/%27 "
                                               tppabs="http://appstore.huawei.com/ ">华为应用市场</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27https://emui.huawei.com/cn/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://emui.huawei.com/cn/%27 "
                                               tppabs="https://emui.huawei.com/cn/ ">EMUI</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27https://cloud.huawei.com/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://cloud.huawei.com/%27 "
                                               tppabs="https://cloud.huawei.com/ ">华为终端云空间</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27https://developer.huawei.com/cn/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://developer.huawei.com/cn/%27 "
                                               tppabs="https://developer.huawei.com/cn/ ">开发者联盟</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27https://m.vmall.com/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://m.vmall.com/%27 "
                                               tppabs="https://m.vmall.com/ ">华为商城手机版</a>
                                        </li>
                                        <li>
                                            <a href="javascript:if(confirm(%27https://www.vmall.com/shopdc/sitemap.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/shopdc/sitemap.html%27 "
                                               tppabs="https://www.vmall.com/shopdc/sitemap.html ">网站地图</a>
                                        </li>
                                    </ul>
                                    <a href="javascript:if(confirm(%27https://www.vmall.com/help/faq-2635.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-2635.html%27 "
                                       tppabs="https://www.vmall.com/help/faq-2635.html " target="_blank " title="隐私声明 "
                                       rel="nofollow ">隐私声明</a><a
                                        href="javascript:if(confirm(%27https://www.vmall.com/help/faq-778.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-778.html%27 "
                                        tppabs="https://www.vmall.com/help/faq-778.html " target="_blank " title="服务协议 "
                                        rel="nofollow "> 服务协议</a> <a
                                        href="javascript:if(confirm(%27https://www.vmall.com/help/faq-11810.html \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon. \n\nDo you want to open it from the server?%27))window.location=%27https://www.vmall.com/help/faq-11810.html%27 "
                                        tppabs="https://www.vmall.com/help/faq-11810.html " target="_blank "
                                        title="COOKIES " rel="nofollow "> COOKIES</a> Copyright ? 2012-2019 华为软件技术有限公司
                                    版权所有 保留一切权利<br/>
                                    公安备案 <a
                                        href="javascript:if(confirm(%27http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32011402010009 \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32011402010009%27 "
                                        tppabs="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32011402010009 "
                                        target="_blank " rel="nofollow ">苏公网安备32011402010009号</a><em> | </em><a
                                        target="_blank "
                                        href="javascript:if(confirm(%27http://www.miitbeian.gov.cn/ \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://www.miitbeian.gov.cn/%27 "
                                        tppabs="http://www.miitbeian.gov.cn/ " rel="nofollow ">苏ICP备17040376号-6</a><br/>
                                    增值电信业务经营许可证：苏B2-20130048号<em>| </em><a
                                        href="javascript:if(confirm(%27http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/2E50AF12E8B14A8B9721D1548FC0CDD2 \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/2E50AF12E8B14A8B9721D1548FC0CDD2%27 "
                                        tppabs="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/2E50AF12E8B14A8B9721D1548FC0CDD2 "
                                        target="_blank ">网络文化经营许可证：苏网文[2015] 1599-026号</a><br/>
                                </div>
                                <p class="fr footer-warrant-img ">
                                    <a class="fl "
                                       href="javascript:if(confirm(%27http://privacy.truste.com/privacy-seal/validation?rid=81be9ca0-c821-4e2c-ad4b-ff7cff98f75f&lang=zh-cn \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27http://privacy.truste.com/privacy-seal/validation?rid=81be9ca0-c821-4e2c-ad4b-ff7cff98f75f&lang=zh-cn%27 "
                                       tppabs="http://privacy.truste.com/privacy-seal/validation?rid=81be9ca0-c821-4e2c-ad4b-ff7cff98f75f&lang=zh-cn "
                                       target="_blank " rel="nofollow "><img src="vmall/20180522101715775.jpg "
                                                                             tppabs="https://res.vmallres.com/pimages/sale/2018-05/20180522101715775.jpg "
                                                                             alt="TRUSTe隐私认证 " title="TRUSTe隐私认证 "/></a>
                                    <a class="fl "
                                       href="javascript:if(confirm(%27https://res.vmallres.com/pimages/sale/2018-06/20180615181402966.jpg \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address. \n\nDo you want to open it from the server?%27))window.location=%27https://res.vmallres.com/pimages/sale/2018-06/20180615181402966.jpg%27 "
                                       tppabs="https://res.vmallres.com/pimages/sale/2018-06/20180615181402966.jpg "
                                       target="_blank " rel="nofollow "><img src="vmall/20160226162415360.png "
                                                                             tppabs="https://res.vmallres.com/pimages/template/content/2016/20160226162415360.png "
                                                                             alt="电子营业执照 " title="电子营业执照 "/></a>
                                </p>
                                <p>
                                    <br/>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- /底部 -->
                </div>
                <!--/底部信息-->
                <script>
                    jump_link = function (url) {
                        var win = window.open(url, "_blank ");
                        win.opener = null;
                    }
                </script>

                <!--意见反馈box-->
                <div id="survery-box " class="ol_box_4 hide " style="width:600px; ">
                    <div class="box-ct ">
                        <div class="box-header ">
                            <div class="box-tl "></div>
                            <div class="box-tc ">
                                <div class="box-tc1 "></div>
                                <div class="box-tc2 "><a class="box-close " title="关闭 " onclick="ec.survery.close(); "
                                                         href="javascript:; "></a><span class="box-title ">意见反馈</span>
                                </div>
                            </div>
                            <div class="box-tr "></div>
                        </div>
                        <table width="100% " cellspacing="0 " cellpadding="0 " border="0 ">
                            <tbody>
                            <tr>
                                <td class="box-cl "></td>
                                <td class="box-cc ">
                                    <div class="box-content ">
                                        <!-- -表单-意见反馈-start -->
                                        <div class="form-feedback-area ">
                                            <div class="b ">
                                                <div class="form-edit-area ">
                                                    <form autocomplete="off " id="form-feedback ">
                                                        <div class="form-edit-table ">
                                                            <table cellspacing="0 " cellpadding="0 " border="0 ">
                                                                <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <select name="type " id="surverytype ">
                                                                            <option>请选择疑问类型</option>
                                                                            <option>商品质量（手机、平板等软、硬件质量）</option>
                                                                            <option>商品缺货</option>
                                                                            <option>物流发货（发货快慢、发错货、送件人态度等）</option>
                                                                            <option>售后服务（服务网点、维修、退换货、客服）</option>
                                                                            <option>网站问题（商城功能失效、不好用等）</option>
                                                                            <option>其他问题</option>
                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <b>您的问题与建议</b><span id="errMsg "></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><textarea name="content " id="surveryContent "
                                                                                  type="textarea "
                                                                                  class="textarea "></textarea></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><b>您的联系方式</b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><input type="text " name="contact "
                                                                               id="surveryContact "></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="fl ">
                                                                            <input type="text " maxlength="4 "
                                                                                   class="identify " name="code "
                                                                                   id="surveryVerify "
                                                                                   onkeyup="if(this.value.length==4){ec.survery.validate();} ">&nbsp;&nbsp;<img
                                                                                id="surveryVerifyImg "
                                                                                onclick="ec.survery.reloadCode() "
                                                                                class="vam " alt="验证码 ">&nbsp;&nbsp;&nbsp;&nbsp;<span
                                                                                class="vam "><a class="u "
                                                                                                href="javascript:; "
                                                                                                onclick="ec.survery.reloadCode(); ">换一张</a></span>
                                                                        </div>
                                                                        <div class="fr ">
                                                                            <a href="javascript:; "
                                                                               onclick="ec.survery.submit(); "
                                                                               class="button-action-yes "><span>提交</span></a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- -表单-意见反馈-end -->
                                    </div>
                                </td>
                                <td class="box-cr "></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="box-bottom ">
                            <div class="box-bl "></div>
                            <div class="box-bc "></div>
                            <div class="box-br "></div>
                        </div>
                    </div>
                    <!-- /客服导航 -->
                </div>
                <!--/意见反馈box-->

            </div>
        </div>

    </div>
</div>

<script src="/js/config-pc.js-v=20190327000320.js"></script>
<script src="/js/zh-CN.js-v=20190327000320.js"></script>
<script src="/js/utils.js-v=20190327000320.js"></script>
<script src="/js/ad-collapse.js-v=20190327000320.js" id="hash-816464982 "></script>
<script src="/js/--common-jsapi.js,/js/common-ec.core.js,/js/-echannel-ec.business.min.js,/js/-echannel-base.min.js,/js/-echannel-slider.min.js,/js/-echannel-swiper.min.js-v=20190327000320.js"
        id="hash--1082387886 " namespace="ec "></script>
<script src="/js/jquery.autocomplete.hack-min.js-v=20190327000320.js" id="hash-902177517 "></script>
<script src="/js/nav-home.js-v=20190327000320.js" id="hash-332437530 "></script>
<script src="/js/nav-home-collpse.js-v=20190327000320.js" id="hash--65167837 "></script>
<script src="/js/slider-scroll.js-v=20190327000320.js" id="hash-461091354 "></script>
<script src="/js/jquery.nicescroll.min.js-v=20190327000320.js" id="hash-1891224083 "></script>
<script src="/js/pictures.js-v=20190327000320.js" id="hash--728825190 "></script>
<script src="/js/product-single-huawei.js-v=20190327000320.js " id="hash--2044813784 "></script>
<script src="/js/swiper.jquery.min.js-v=20190327000320.js " id="hash--127449117 "></script>
<script src="/js/product-drag.js-v=20190327000320.js " id="hash--51477126 "></script>
<script src="/js/slider-footer.js-v=20190327000320.js " id="hash-1518277858 "></script>
<script src="/js/feedback.js-v=20190327000320.js " id="hash--2121015828 "></script>
<script id="/js/hash--1375703500 ">function pushRightHelpMsg(buttonName) {
    var value = {
        "UID ": ec.util.cookie.get("uid "),
        "TID ": getPtid(),
        "TIME ": getTime(),
        "CONTENT ": {"buttonName ": buttonName, "click ": "1 "}
    };
    ec.code.addAnalytics({hicloud: true});
    _paq.push(["trackLink ", "300000601 ", "link ", value])
}

ec.code.addService({
    showService: true,
    showTools: true,
    live800Url4Web: "http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af "
});</script>
<script src="/js/home-shortcut.js-v=20190327000320.js" id="hash--30037905 "></script>
<script src="/js/yy.js-v=20190327000320.js" id="hash-306338475 "></script>
<script src="/js/report.js-v=20190327000320.js" id="hash--351266274 "></script>

</body>
</html>