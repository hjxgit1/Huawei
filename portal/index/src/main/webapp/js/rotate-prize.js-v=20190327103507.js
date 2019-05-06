/**
 * PC端转盘抽奖
 * 优化：增加固定分享入口{"time":"2017.12.27 16:44:22","author":"Ling"}
 * 优化：1-N多国国际化{"time":"2018.02.27 15:45:43","author":"Ling"}
 * 优化：未登录时显示注册按钮{"time":"2018.09.06 09:29:27","author":"Ben"}
 */

// 国际化
var i18n = window.locale.prizeRotate;

utils.pkg("ec.activity");
utils.pkg("ec.privilege");
utils.pkg("ec.account");

// 缓存活动信息
var PRIZE_INFO = {
    minLevel: '', // 最低等级，返回V~
    unitPrizeTime: null, // 基础抽奖次数
    expendPointValue: 0, // 消耗积分值
    isSupportShare: 0, // 是否支持分享0：否 1：是
    shareExtra: 0, // 每次分享成功，增加几次抽奖机会
    price: 0 // 0初始化失败 1存在 2提示活动已结束 3提示 太热情
};
var bundleUrl = main + "/member/bind/phone/redirect?back_url=" + encodeURIComponent(window.location.href),
    authUrl = main + "/authmember/accesstoken",
    accountCenterUrl = "https://hwid1.vmall.com/CAS/portal/bindPhoneAccount.html?reqClientType=26&loginChannel=26000000&themeName=cloudTheme",
    loginUrl = main + "/account/login?url=" + encodeURIComponent(window.location.href);

var config = $('.mod-rotatePrize').data('rotateprizeconfig');
var activityCode = config.activityCode;
var clickFlag = true; // 抽奖按钮是否可以点击
var isUsePoint = 0; // 是否使用积分，0:不使用，1:使用
// 分享
var shareData = {
    activityCode: config.activityCode,
    shareMap: {
        title: config.shareTitle,
        content: config.shareContent,
        pic: config.sharePic,
        url: config.shareUrl,
        hashtag: config.hashtag
    }
};

ec.activity.tipPrize = false; // 是否每次提示用户使用积分抽奖

// 查询中奖名单
ec.activity.getPrizeData = function() {
    utils.ajaxOpenAPI({
        type: "GET",
        async: false,
        url: "/ams/prize/queryPrizeResult",
        data: { "activityCode": activityCode },
        success: function(json) {
            var obj = $("#prizeList"),
                s = '',
                list,
                len;
            len = json.prizeResult && json.prizeResult.length;
            if (len > 0) {
                for (var i = 0; i < len; i += 1) {
                    list = json.prizeResult[i];
                    s += '<li class="clearfix"><div class="text-left">' + list.custLoginName + '</div><div class="text-right">' + i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/tip.win"] + ' ' + list.prizeName + '</div></li>';
                }
            } else {
                s = '<li>' + i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/not.yet"] + '</li>';
            }
            $("#prizeList").html(s);
        },
        error: function() {}
    });
};

// 查询活动信息
ec.activity.getPrizeInfo = function() {
    utils.ajaxOpenAPI({
        type: 'GET',
        url: '/ams/prize/queryRuleInfo',
        async: false,
        data: { 'activityCode': activityCode, 't': new Date().getTime() },
        success: function(json) {
            if (json.success) {
                // 如果是纯积分抽奖，每次都提示扣除积分
                if (json.unitPrizeTime == 0 && json.expendPointValue > 0) {
                    isUsePoint = 1;
                    ec.activity.tipPrize = true;
                }
                PRIZE_INFO.unitPrizeTime = json.unitPrizeTime; // 基础抽奖次数
                PRIZE_INFO.expendPointValue = json.expendPointValue; // 消耗积分值
                PRIZE_INFO.minLevel = json.minLevel; // 抽奖的等级条件
                PRIZE_INFO.isSupportShare = json.isSupportShare; // 是否支持分享0：否 1：是
                PRIZE_INFO.shareExtra = json.shareExtra; // 每次分享成功，增加几次抽奖机会
                PRIZE_INFO.price = 1; // 初始化结果
            } else {
                if (json.code == '9000' || json.code == '9001') {
                    PRIZE_INFO.price = 3;
                } else if (json.code == '9002') {
                    PRIZE_INFO.price = 2;
                }
            }
        },
        error: function() {
            PRIZE_INFO.price = 0; // 初始化失败
        }
    });
};

// 工具对象
ec.activity.util = {
    url: {
        accountCenterUrl: 'https%3A%2F%2Fhwid1.vmall.com%2FCAS%2Fportal%2FbindPhoneAccount.html%3FreqClientType%3D26%26loginChannel%3D26000000%26themeName%3DcloudTheme'
    },
    isFunction: function(b) {
        return Object.prototype.toString.call(b) === "[object Function]"
    },
    isEmpty: function(a) {
        return ("undefined" == a || null == a || "" == a || 0 == a.length)
    },
    getJSON: function(b) {
        if (ec.activity.util.isEmpty(b) || ec.activity.util.isEmpty(b.url) || (!ec.activity.util.isFunction(b.callback))) {
            return false
        }
        var a = b.domain + b.url + "callback=?";
        $.getJSON(a, b.data, function(c) {
            b.callback(c);
        });
        return true
    },
    cookie: {
        get: function(a) {
            var f = null;
            if (document.cookie && document.cookie != "") {
                var d = document.cookie.split(";");
                for (var c = 0; c < d.length; c++) {
                    var b = (d[c] || "").replace(
                        /^(\s|\u00A0)+|(\s|\u00A0)+$/g, "");
                    if (b.substring(0, a.length + 1) == (a + "=")) {
                        var e = function(i) {
                            i = i.replace(/\+/g, " ");
                            var h = '()<>@,;:\\"/[]?={}';
                            for (var g = 0; g < h.length; g++) {
                                if (i.indexOf(h.charAt(g)) != -1) {
                                    if (i.startWith('"')) {
                                        i = i.substring(1)
                                    }
                                    if (i.endWith('"')) {
                                        i = i.substring(0, i.length - 1)
                                    }
                                    break
                                }
                            }
                            return decodeURIComponent(i)
                        };
                        f = e(b.substring(a.length + 1));
                        break
                    }
                }
            }
            return f
        },
        set: function(l, j, m) {
            m = m || {};
            if (j === null) {
                j = "";
                m.expires = -1
            }
            var o = "";
            if (m.expires && (typeof m.expires == "number" || m.expires.toUTCString)) {
                var n;
                if (typeof m.expires == "number") {
                    n = new Date();
                    n.setTime(n.getTime() + (m.expires * 24 * 60 * 60 * 1000))
                } else {
                    n = m.expires
                }
                o = "; expires=" + n.toUTCString()
            }
            var d = "; path=" + (m.path || "/");
            var p = ".vmall.com";
            var k = "; domain=" + p;
            var i = m.secure ? "; secure" : "";
            document.cookie = [l, "=", encodeURIComponent(j), o, d, k, i]
                .join("")
        }
    },
    addScriptTag: function(src, fn) {
        if (!src) {
            return
        }
        with(document) {
            0[(getElementsByTagName("head")[0] || body)
                .appendChild(createElement("script")).src = src]
        }
        if (fn && ec.activity.util.isFunction(fn)) {
            setTimeout(fn, 100)
        }
    },
    getHost: function() {
        return document.location.hostname
    }
};
var _paq = _paq || [];

ec.activity.showAuth = function() {
    // 10元优惠券仅限3月10-14日实名会员新人专享，请于活动结束后两个工作日内在“个人中心-我的优惠券”中查收，数量有限，先到先得哦！
    var a = ec.activity.couponBoxTips.boxHtml
        .replace("{class}", ec.activity.couponBoxTips.iconHappy)
        .replace("{text}", "10元优惠券仅限3月10-14日实名会员新人专享，请于活动结束后两个工作日内在“个人中心-我的优惠券”中查收，数量有限，先到先得哦！")
        .replace("{button}", ec.activity.couponBoxTips.authButton);
    setTimeout(function() {
        ec.activity.tipBox.open(a, {
            onok: function(b) {
                b.close()
            }
        })
    }, 200)
};

// 返回 弹框对应的文案
ec.activity.prizeBoxTips = {
    //验证不通过
    unmsg: function(json) {
        // 默认提示语
        var c = i18n['https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.wait'];
        switch (json.code) {
            case "0000":
                //抽奖提示：每次抽奖将消耗1个积分
                c = i18n['prompt.consume'] + PRIZE_INFO.expendPointValue + i18n['tip.point'];
                break;
            case "9003": // 活动未启用
                c = i18n['prompt.begin']; // 亲，别着急，活动还没开始呦~
                break;
            case "9004": // 活动未开始
                c = i18n['prompt.begin']; // 亲，别着急，活动还没开始呦~
                break;
            case "9005": // 活动已结束
                c = i18n['https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.over']; // 噢，亲，来晚了，活动结束了~
                break;
            case "9006": // 用户未登录
                c = i18n['prompt.login']; // 亲，您还未登录哦，登录后才能抽奖哦~
                break;
            case "9007": // 用户等级不满足
                c = i18n['prompt.limit'] + PRIZE_INFO.minLevel + i18n['prompt.level']; // 亲，本活动仅限V +  + V + 等级会员抽奖哦，看看其他的吧~
                break;
            case "9008": // 用户未验证安全手机号码
                c = i18n['prompt.phone']; // 亲，需绑定手机帐号才能抽奖哦，马上绑定吧>>
                break;
            case "9009": // 用户未实名认证
                c = i18n['prompt.certification']; // 亲，需实名认证才能抽奖哦，使用手机帐号登录进行实名认证更便捷哦！立即认证>>
                break;
            case "9010": // 用户未完善个人资料
                c = i18n['https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.data']; // 亲，需要完善资料才能抽奖哦，马上完善资料吧>>
                break;
            case "9011": // 累计签到未满天
                c = i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.dear"] + json.msg + i18n["prompt.plaint"];
                break;
            case "9012": // 连续签到未满天
                c = i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.dear"] + json.msg + i18n["prompt.plaint"];
                break;
            case "9013": // 抽奖次数用完
                if (json.isSupportShare == 0 || (json.isShareTimesUsedUp == true && json.isShared == 1)) {
                    if (json.isSupportPointPrize == 1) {
                        // 噢，你的抽奖机会用完啦~别捉急，使用积分可以继续抽奖哦~温馨提示：每次抽奖将消耗${ruleInfo. expendPointValue }个积分
                        c = i18n['prompt.point.prize'] + "<br>" + i18n['prompt.reminder'] + PRIZE_INFO.expendPointValue + i18n['tip.point'];
                    } else if (json.isSupportPointPrize == 0) {
                        // 噢，你的抽奖机会用完，去看看其它活动吧~
                        c = i18n['prompt.empty'];
                    }
                } else if (json.isShareTimesUsedUp == false && json.isSupportShare == 1) {
                    c = i18n['prompt.share']; // 今天抽奖次数已用完啦，分享活动可再获得抽奖机会哦，立即分享~
                }
                break;
            case "9016": // 订单类型不满足
                c = i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.order.type"]; // 亲，您暂时不符合参与条件哦~去看看其他活动吧
                break;
            case "9017": // 未包含指定商品
                c = i18n["prompt.order.appointed"]; // 亲，您暂时不符合参与条件哦~去看看其他活动吧
                break;
            case "9019": // 订单金额小于参与抽奖的最小金额
                c = i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.order.less"]; // 亲，您暂时不符合参与条件哦~去看看其他活动吧
                break;
            case "9022": // 不存在可抽奖订单
                c = i18n["prompt.order.condition"]; // 亲，您暂时不符合参与条件哦~去看看其他活动吧
                break;
            case "9023": // 该订单已被抽取
                c = i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.order.done"]; // 亲，您已经抽过奖啦~去看看其他活动吧。
                break;
            case "9026": // 积分不足
                c = i18n['prompt.earn.point.a'] + PRIZE_INFO.expendPointValue + i18n['prompt.earn.point.b']; // 亲，每次抽奖需消耗5个积分，您的积分不够啦，快去看看如何赚取积分吧~
                break;
            default:
                c = i18n['https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.wait']; // 亲，瞬间被你的热情吓到了，容我缓缓，请稍候再来哦~
                break;
        }
        return c
    }
};

// 返回弹框对应的按钮
ec.activity.getPrizeButton = function(json) {
    var c = '<a  class="button-box-ok"  href="javascript:;"><span>' + i18n["btn.confirm"] + '</span></a>'; //确定
    switch (json.code) {
        case "9000": //未知错误
        case "9002": //活动不存在
        case "9003": //活动未启用
        case "9004": //活动未开始
        case "9005": //活动已结束
        case "9007": //用户等级不满足
            break;
        case "0000":
            c = '<a class="button-box-ok" href="javascript:;"><span>' + i18n["btn.cancel"] + '</span></a>' + // 取消
                '<a class="button-box-view" href="javascript:;"><span>' + i18n["btn.continue"] + '</span></a>'; // 继续抽奖
            break;
        case "9006": // 用户未登录
            c = '<a class="button-box-ok" href="' + window.registerLink + '"><span>' + window.locale.jumpBtn["btn.register"] + '</span></a>' + // 注册帐号
                '<a class="button-box-view" href="' + window.loginLink + '"><span>' + i18n["btn.login"] + '</span></a>'; // 马上登录
            break;
        case "9008":
            c = '<a class="button-box-view" href="' + bundleUrl + '" target="_blank"><span>' + i18n["btn.binding"] + '</span></a>';
            //马上绑定
            break;
        case "9009":
            c = '<a class="button-box-view" href="' + authUrl + '" target="_blank"><span>' + i18n["btn.certification"] + '</span></a>';
            //实名认证
            break;
        case "9010":
            c = '<a class="button-box-view" href="' + accountCenterUrl + '" target="_blank"><span>' + i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/btn.data"] + '</span></a>';
            //完善资料
            break;
        case "9013":
            //抽奖次数用完
            if (json.isSupportShare == 0 || (json.isShareTimesUsedUp == true && json.isShared == 1)) {
                if (json.isSupportPointPrize == 1) {
                    c = '<a class="button-box-ok"  href="javascript:;"><span>' + i18n["btn.cancel"] + '</span></a>' + //取消
                        '<a class="button-box-view"  href="javascript:;" onclick="isUsePoint = 1;ec.activity.prize(activityCode);ec.activity.tipPrize = true;"><span>' + i18n["btn.continue"] + '</span></a>'; //继续抽奖
                }
            } else if (json.isShareTimesUsedUp == false && json.isSupportShare == 1) {
                c = '<a class="button-box-view" href="javascript:;" onclick="ec.activity.shareSina();"><span>' + i18n["btn.share"] + '</span></a>';
            }
            break;
        case "9026": //积分不足
            c = '<a class="button-box-view" href="' + main + '/member/newpoint" target="_blank"><span>' + i18n["https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/btn.earn"] + '</span></a>';
            //赚取积分
            break;
    }
    return c;
};

// 生成对应的弹框
ec.privilege.unPrizeMessageDialog = function(json, fn) {
    var msg = ec.activity.prizeBoxTips.unmsg(json);
    var box = new utils.box($("#prize-unsuccess-dialog").val(), {
        boxid: "prizeFailureBox",
        boxclass: "ol_box_4",
        showTitle: false,
        showButton: false,
        onopen: function(box) {
            $("#prize-unsuccess-message").html(msg);
        }
    });
    box.open();
    $("#prize-unsuccess-view").empty().html(ec.activity.getPrizeButton(json));
    $("#prize-unsuccess-view .button-box-view ").click(function() {
        box.close();
        if ($.isFunction(fn)) {
            fn();
        }
    });
    $("#prize-unsuccess-view .button-box-ok ").click(function() {
        box.close();
    });
    clickFlag = true;
};

ec.privilege.prizeMessageDialog = function(c) {
    var type = parseInt(c.type); // 0无奖品，1优惠券，2实物奖品，3优购码，4第三方券
    var pcTip = c.pcPrizeTip;
    var name = c.name;

    // 0无奖品
    if (type == 0) {
        for (var i = 0; i < _uniqueLuckDraw.length; i++) {
            if (_uniqueLuckDraw[i].indexOf(i18n['tip.thanks']) != -1 || _uniqueLuckDraw[i].indexOf(i18n['tip.effort']) != -1 || _uniqueLuckDraw[i].indexOf(i18n['tip.continue']) != -1 || _uniqueLuckDraw[i].indexOf(i18n['tip.sorry']) != -1 || _uniqueLuckDraw[i].indexOf(i18n['tip.regret']) != -1) {
                name = _uniqueLuckDraw[i];
            }
        }
        if (name == "") {
            name = i18n['tip.thanks'];
        }
        if (c.limit > 0) {
            var key = utils.getLanguageKey(c.limit, 'prompt.chance');
            //没有一点点防备和大奖擦肩而过，别灰心，你还有
            pcTip = i18n['prompt.remain'] + c.limit + i18n[key];
        } else {
            pcTip = i18n['https://res9.vmallres.com/shopdc/cdn/modules/prize-rotate/pc/js/prompt.miss'];
        }
    }

    var isMatch = false;
    for (var i = 0; i < _uniqueLuckDraw.length; i++) {
        if (name == _uniqueLuckDraw[i]) {
            var angleArr = ec.activity.getRotateAngle(_luckDraw, _uniqueLuckDraw[i]);
            var angle = angleArr[Math.floor(Math.random() * angleArr.length)];
            ec.activity.rotateFunc(angle, pcTip);
            isMatch = true;
            break;
        }
    }

    // 遍历之后，如果没有正确匹配，直接弹窗提示用户抽奖结果
    if (isMatch == false) {
        var box = new utils.box($("#prize-success-dialog").val(), {
            boxid: "prizeSuccessBox",
            boxclass: "ol_box_4",
            showTitle: false,
            showButton: false,
            onopen: function(box) {
                $("#prize-success-message").text(pcTip);
            }
        });
        box.open();
        $("#prize-success-message").click(function() {
            box.close();
        });
        $("#prize-success-view").click(function() {
            box.close();
        });
    }
};

// 点击开始抽奖
ec.activity.prize = function(activityCode) {
    var getPrize = function() {
        var _callback = function(res) {
            if (res.success) {
                ec.privilege.prizeMessageDialog(res);
            } else {
                ec.privilege.unPrizeMessageDialog(res);
            }
        };

        if (config.prizeType == 'normalPrize') { // 普通抽奖
            ams.commonNewPrize({ activityCode: activityCode, isUsePoint: isUsePoint }, _callback);
        } else if (config.prizeType == 'payPrize') { // 支付抽奖
            utils.ajaxOpenAPI({
                type: "POST",
                url: "/ams/prize/payPrize",
                data: {
                    "activityCode": activityCode,
                    "isUsePoint": isUsePoint,
                    "t": new Date().getTime()
                },
                success: _callback
            });
        }
    };

    if (isUsePoint && ec.activity.tipPrize) {
        // 每次提醒扣除积分
        ec.privilege.unPrizeMessageDialog({ code: "0000" }, getPrize);
    } else {
        getPrize();
    }
};

ec.activity.sendRedPackets = function() {
    var c = new Date();
    var b = c.getDate();
    var d = new Date(c.getFullYear(), c.getMonth(), c.getDate(), 9, 0, 0);
    var a = new Date(c.getFullYear(), c.getMonth(), c.getDate(), 9, 10, 0);
    if ((b >= 10 && b <= 18) && (c >= d && c <= a)) {
        return true
    }
    return false
};

// 分享微博
ec.activity.shareSina = function() {

    // 根据cookies判断用户是否登录
    if (Tool.cookie.get("uid")) {
        // 已登录
        Tool.share.shareSina(shareData);
    } else {
        // 未登录
        window.location.href = loginLink;
    }

};

// 分享之后增加抽奖次数
ec.activity.addPrizeCount = function(b) {
    _callback = function(c) {

    };

    utils.ajaxOpenAPI({
        type: 'POST',
        url: '/ams/prize/share',
        data: {
            'activityCode': b,
            't': new Date().getTime()
        },
        success: _callback
    });
};

//剔除数组中重复的元素
ec.activity.unique = function(arr) {
    var result = [],
        hash = {};
    for (var i = 0, elem;
        (elem = arr[i]) != null; i++) {
        if (!hash[elem]) {
            result.push(elem);
            hash[elem] = true;
        }
    }
    return result;
};

// 获取该奖品对应转盘上的旋转角度，可能一个商品对应多个角度
ec.activity.getRotateAngle = function(arr, obj) {
    var result = [];
    var len = arr.length;
    for (var i = 0; i < len; i++) {
        if (obj == arr[i]) {
            result.push(22 + 45 * i);
        }
    }
    return result;
};

// 抽奖转盘指针旋转功能，angle:奖项对应的角度，awards:奖项
ec.activity.rotateFunc = function(angle, awards) {
    $("#rotateImage").stopRotate();
    $("#rotateImage").rotate({
        angle: 0,
        duration: 5000,
        // 因为改成了转盘旋转，所以角度应该是减掉angle
        animateTo: 1440 - angle,
        callback: function() {
            // 转完之后才允许再次点击
            clickFlag = true;
            var box = new utils.box($("#prize-success-dialog").val(), {
                boxid: "prizeSuccessBox",
                boxclass: "ol_box_4",
                showTitle: false,
                showButton: false,
                onopen: function(box) {
                    // ec.ui.loading.hide();
                    $("#prize-success-message").text(awards);
                }
            });
            box.open();
            $("#prize-success-message").click(function() {
                box.close();
            });
            $("#prize-success-view").click(function() {
                box.close();
            });
        }
    });
};

// 设置圆盘中的中奖商品提示与未中奖提示，可重复
var _luckDraw = [];

// 去除重复的中奖与未中奖提示
var _uniqueLuckDraw = [];

//抽奖转盘指针旋转功能
ec.activity.getLuckDrawInfoData = function() {
    if (luckDraw != null) {
        // 装载抽奖奖品名称
        var obj = luckDraw;
        for (var i = 1; i < 9; i++) {
            for (var j = 0; j < obj.length; j++) {
                if (i == obj[j].id) {
                    _luckDraw.push(obj[j].name);
                    break;
                }
            }
        }
        //去除重复奖品名称
        _uniqueLuckDraw = ec.activity.unique(_luckDraw);
    }
};

$(function() {
    // 查询中奖名单
    ec.activity.getPrizeData();

    // 每隔5分钟轮询最新中奖名单
    if (activityCode != 0) {
        setInterval("ec.activity.getPrizeData()", 5 * 60 * 1000);
    }

    // 备注：暂时只有普通抽奖才查询活动信息
    if (config.prizeType == 'normalPrize') {
        ec.activity.getPrizeInfo();
    }

    // 绑定中奖事件
    $("#prizeImg").rotate({
        bind: {
            click: function(e) {
                if (!clickFlag) {
                    return false;
                } else {
                    clickFlag = false;
                    // 默认不使用积分抽奖
                    ec.activity.prize(activityCode);
                }
            }
        }
    });

    ec.activity.getLuckDrawInfoData();

    // 查看全部弹窗
    $("#view").click(function() {
        $(".roate-mask").show();
        $(".roate-dialog").show();
    });

    $(".close").click(function() {
        $(".roate-mask").hide();
        $(".roate-dialog").hide();
    });
});
