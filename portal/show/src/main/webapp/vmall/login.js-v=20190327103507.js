/**
 * PC登录组件
 * 准备转测{"version":"1.3.1","time":"2018.01.02 16:30:04","author":"hwx398008/Kun"}
 */
(function(window, $, undefined) {
    // 获取账户信息
    $.ajax({
        url: 'https://res9.vmallres.com/privilege/load.json',
        timeout: 10000,
        dataType: 'json',
        success: function(json) {
            if (json && json.success) {
                $('.privilege-center').removeClass('privilege-center-gray');
                $('.user-canvas').show();
                pointLoad(json.customer, json.isAuth, json.ANONYMITY_DISPLAY_NAME, json.gradeConfig);
                couponLoad(json.couponCount);
                getBalanceAmount();
                getPointBalance();
                doInit(json);
            }
        }
    })

    function doInit(json) {
        // 1.当进入特权频道时候，判断用户是否已登录
        if (json.customer.id && json.customer.loginName) {
            var gradeCode = parseInt($("#gradeCode").val());
            var max = $("#nextNeedScores").val();
            var min = $("#minScores").val();
            var interval = max - min;
            var userScores = $("#userScores").val();
            if (max == '') {
                max = 100000
            }
            updateProgress(max, min, userScores, gradeCode);
        }
    }

    // 刷新经验条
    function updateProgress(max, min, totalPoint, gradeCode) {
        if (max >= 0 && min >= 0 && totalPoint >= 0) {
            var v_high = max,
                v_low = min,
                v_curr = totalPoint,
                per = (v_curr - v_low) / (v_high - v_low), //比例
                _deg = 0; //度数
            if (parseInt(v_curr) >= parseInt(v_high)) {
                $(".canvas-left div").css({ "transform": "rotateZ(0deg)", "background": "#F05C20" });
                $(".canvas-right div").css({ "transform": "rotateZ(-39deg)" });
            } else {
                if (per > 0.5) {
                    _deg = 280 * per - 320;
                    $(".canvas-left div").css({ "transform": "rotateZ(0deg)" });
                    $(".canvas-right div").css({ "transform": "rotateZ(" + _deg + "deg)" });
                    if (per > 0.7) {
                        $(".canvas-left div").css({ "background": "#F05C20" });
                    } else {
                        _deg = _deg + 180;
                        $(".canvas-left div").css({ "transform": "rotateZ(" + _deg + "deg)", "background": "-webkit-gradient(linear, 0 bottom, right 0, from(#F05C20), to(#F58555))" });
                        $(".canvas-right div").css({ "background": "-webkit-gradient(linear, 0 bottom, right 0, from(#F58555), to(#F05C20))" });
                    }
                } else {
                    if (per < 0.01 && per > 0) {
                        per = 0.01;
                    }
                    _deg = 265 * per - 125;
                    $(".canvas-left div").css({ "transform": "rotateZ(" + _deg + "deg)", "background": "-webkit-gradient(linear, 0 bottom, 0 0, from(#F05C20), to(#F58555))" });
                    $(".canvas-right div").css({ "transform": "rotateZ(-180deg)" });
                }
            }
        }
        var i = document.getElementById('levelIcon');
        if (gradeCode != null) {
            switch (gradeCode) {
                case 0:
                    vipColor = "#999";
                    i.setAttribute("class", "icon-vip-level-0");
                    break;
                case 1:
                    vipColor = "#01abdf";
                    i.setAttribute("class", "icon-vip-level-1");
                    break;
                case 2:
                    vipColor = "#24ca43";
                    i.setAttribute("class", "icon-vip-level-2");
                    break;
                case 3:
                    vipColor = "#ffb710";
                    i.setAttribute("class", "icon-vip-level-3");
                    break;
                case 4:
                    vipColor = "#fc5d21";
                    i.setAttribute("class", "icon-vip-level-4");
                    break;
                case 5:
                    vipColor = "#fc3784";
                    i.setAttribute("class", "icon-vip-level-5");
                    break;
                default:
                    vipColor = "#999";
                    i.setAttribute("class", "icon-vip-level-0");
                    break;
            }
        }
    }

    /**
     * 经验值、等级异步加载
     * customer 用户信息
     * isAuth 是否实名认证
     * ANONYMITY_DISPLAY_NAME 用户名
     * gradeConfig 等级规则
     */
    function pointLoad(customer, isAuth, ANONYMITY_DISPLAY_NAME, gradeConfig) {
        $("#userScores").val(customer.totalPoint);
        $("#gradeCode").val(gradeConfig.code);
        $("#minScores").val(gradeConfig.minScores);
        $("#nextNeedScores").val(gradeConfig.maxScores);

        var htmlImg = '<a class="p-link" href="https://hwid1.vmall.com/CAS/portal/userCenter/info.html?lang=zh-cn" target="_blank">';
        var htmlText = '';
        //用户头像
        if (customer.headPictureURL) {
            htmlImg += '<img src="' + customer.headPictureURL + '" alt=""/></a>';
        } else {
            htmlImg += '<img src="https://res.vmallres.com/20171204/images/echannel/misc/img_logged_in.png" alt=""/></a>';
        }
        $("#privilege-center-img").html(htmlImg);
        //实名认证
        if (isAuth) {
            htmlText += '<p class="user-name user-realname"><a href="https://res9.vmallres.com/authmember/accesstoken">' + ANONYMITY_DISPLAY_NAME + '<i></i></a></p>';
            if (customer.totalPoint != null) {
                htmlText += '<p class="user-value">经验值：<a href="https://res9.vmallres.com/member/point" id="customer-score">' + customer.totalPoint + '</a></p>';
            } else {
                htmlText += '<p class="user-value">经验值：<span id="customer-score">--</span></p>';
            }
            $("#people_welfare").hide();
        } else {
            htmlText += '<p class="user-name"><a href="https://res9.vmallres.com/authmember/accesstoken">' + ANONYMITY_DISPLAY_NAME + '<i></i></a></p>';
            if (customer.totalPoint != null) {
                htmlText += '<p class="user-value">经验值：<a href ="https://res9.vmallres.com/member/point" id="customer-score">' + customer.totalPoint + '</a></p>';
            } else {
                htmlText += '<p class="user-value">经验值：<span id="customer-score">--</span></p>';
            }
            htmlText += '<a href="https://res9.vmallres.com/authmember/accesstoken"><span class="user-realname-link">实名赚200积分</span></a>';
            $("#people_welfare").show();
        }
        $(".privilege-center-login").hide();
        $("#personal_privilege").html(htmlText);
    }

    // 获取特权页积分
    function getPointBalance() {
        utils.ajaxOpenAPI({
            type: 'GET',
            url: 'https://res9.vmallres.com/point/queryUserPointBalanceDetail.json',
            success: function(res) {
                if (res && res.data && res.data.pointBlance) {
                    var pointBlance = res.data.pointBlance;
                    if (parseInt(pointBlance) > parseInt(999)) {
                        $("#balanceicon_privilege").empty().html('<a href="/member/newpoint?t=' + new Date().getTime() + '" target="_blank">' + 999 + '+</a>');
                    } else {
                        $("#balanceicon_privilege").empty().html('<a href="/member/newpoint?t=' + new Date().getTime() + '" target="_blank">' + pointBlance + '</a>');
                    }
                } else {
                    $("#newPointlogin_status").hide();
                    return false;
                }
            }
        });
    };

    // 处理优惠券
    function couponLoad(count) {
        if (count != null) {
            if (count > 999) {
                $("#couponicon_privilege").empty().html('<a href="/member/coupon?t=' + new Date().getTime() + '" target="_blank" id="coupon-count">' + 999 + '+</a>');
            } else {
                $("#couponicon_privilege").empty().html('<a href="/member/coupon?t=' + new Date().getTime() + '" target="_blank" id="coupon-count">' + count + '</a>');
            }
        }
    }

    // 获取代金券余额
    function getBalanceAmount() {
        var g_balanceAmount;
        $.ajax({
            url: window.domainIps + "/voucher/queryBalance.htm",
            dataType: "jsonp",
            success: function(json) {
                if (json.resultCode == 0) {
                    if (json.balanceAmount != null) {
                        // 全局赋值
                        g_balanceAmount = (parseFloat(json.balanceAmount))
                            .toFixed(2);
                    } else {
                        g_balanceAmount = 0;
                    }
                    //给特权页代金券赋值
                    if (parseInt(g_balanceAmount) > parseInt(999)) {
                        $("#balanceAmount_privilege").empty().html('<a href="/member/balance?t=' + new Date().getTime() + '" target="_blank">' + 999 + '+</a>');
                    } else {
                        $("#balanceAmount_privilege").empty().html('<a href="/member/balance?t=' + new Date().getTime() + '" target="_blank">' + g_balanceAmount + '</a>');
                    }
                }
            }
        });
    };
})(window, jQuery);
