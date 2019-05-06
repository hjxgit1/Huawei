/**
 * PC会员签到
 * zhen@11:44 2017/12/29
 */
(function(window, $, undefined) {
    // 国际化
    var locale = {
        "zh-CN": {
            "prompt.login": "亲，您还未登录哦，登录后才能签到哦~",
            "btn.login":"马上登录",
            "prompt.point": "积分",
            "prompt.empiric": "经验值",
            "prompt.petal": "花瓣值",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish": ",恭喜您获得",
            "prompt.later": "提示：积分稍后到账",
            "prompt.begin": "亲，别着急，活动还没开始哟~",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.over": "亲，活动结束了，下次再来哦~",
            "prompt.authenticate": "亲，需实名认证才能签到，手机帐号登录实名认证更便捷哦~",
            "prompt.binging": "亲，需要绑定手机号才能签到哦，马上绑定吧~",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.data": "亲，需完善个人资料才能签到哦~去华为商城电脑版完善资料吧~",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wait": "亲，瞬间被你的热情吓到了容我缓缓，请稍后再来哦~",
            "prompt.condition": "亲，本活动限指定等级会员参与，您暂时不符合条件哦~",
            "btn.confirm": "确定",
            "btn.authenticate": "马上认证",
            "btn.binging": "去绑定",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.and": "和",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/btn.data": "完善资料"
        },
        "en-US": {
            "prompt.login": "Dear, you have not logged in Oh, log in to sign up after ~~",
            "btn.login":"Login",
            "prompt.point": "points",
            "prompt.empiric": "empiric",
            "prompt.petal": "petals",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish": " ,congratulations for",
            "prompt.later": " Tip: points will be credited later",
            "prompt.begin": "Dear, don't worry, the activity hasn't started yet~",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.over": "Dear, the activity is over, come again next time Oh ~",
            "prompt.authenticate": "Dear, need real name authentication to sign in, mobile phone account login, real name authentication is more convenient oh ~",
            "prompt.binging": "Dear, need to bind the phone number to sign in, oh, immediately bound to the bar~",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.data": "Dear, need to improve personal data to sign in Oh ~ go to HUAWEI mall computer version of the perfect data bar~",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wait": "Dear, the moment is scared by your enthusiasm, let me slowly, please come back later Oh ~",
            "prompt.condition": "Dear,this signing activity only allows V1-V5 users to participate, and your account level does not meet the requirements.",
            "btn.confirm": "Confirm",
            "btn.authenticate": "Authenticate",
            "btn.binging": "Binging",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.and": " and ",
            "https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/btn.data": "Perfect information"
        }
    };
    var i18n = locale[window.pageConfig.locale || "zh-CN"];
    var sign = $('.mod-sign-user').data('signconfig');

    utils.signin = function(b) {
        $(b).removeAttr("onclick").parent("div").addClass("vip-signing");
        var _callback = function(json) {
            var count = 0;
            var ponitNumber = 0; //积分数
            var number = 0; //经验值
            var rewardValue = json.rewardValue;
            var rewardType = json.rewardType;
            var relateRewardValue = json.relateRewardValue;
            var relateRewardType = json.relateRewardType;
            var text = '',
                opts = {
                    boxclass: 'ol_box_4',
                    showTitle: false,
                    faceType: 'success', // success,failed,error
                    okBtnName: i18n["btn.confirm"],
                    showCancel: false
                };

            // 奖励类型判断将数字转换成中文
            function getChange(s) {
                if (s == 0) {
                    s = i18n["prompt.point"];
                } else if (s == 1) {
                    s = i18n["prompt.empiric"];
                } else {
                    s = i18n["prompt.petal"];
                }
                return s;
            }

            if (json && json.success) {
                // 未关联签到奖励
                if (relateRewardType == undefined && rewardType != undefined) {
                    // 奖励类型是积分时，提示语差异
                    if (rewardType == 0) {
                        text = json.msg + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish"] + rewardValue + getChange(rewardType) + '<br>' + i18n["prompt.later"];
                    } else {
                        text = json.msg + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish"] + rewardValue + getChange(rewardType);
                    }
                } else if (relateRewardType !== undefined && rewardType == undefined) {
                    // 奖励类型是积分时，提示语差异
                    if (relateRewardType == 0) {
                        text = json.msg + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish"] + relateRewardValue + getChange(relateRewardType) + '<br>' + i18n["prompt.later"];
                    } else {
                        text = json.msg + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish"] + relateRewardValue + getChange(relateRewardType);
                    }
                } else if (relateRewardType == undefined && rewardType == undefined) {
                    text = json.msg;
                } else {
                    // 关联签到奖励，处理获得不同类型奖励类型时，提示差异显示
                    if (rewardType == relateRewardType && rewardType == 0) {
                        count = parseInt(rewardValue) + parseInt(relateRewardValue);
                        text = json.msg + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish"] + count + getChange(rewardType) + '<br>' + i18n["prompt.later"];
                        ponitNumber = count;

                    } else if (rewardType == relateRewardType && rewardType != 0) {
                        count = parseInt(rewardValue) + parseInt(relateRewardValue);
                        text = json.msg + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish"] + count + getChange(rewardType);
                        if (rewardType == 1) {
                            number = count;
                        }
                    } else {
                        if (rewardType == 0 || relateRewardType == 0) {
                            text = json.msg + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish"] + relateRewardValue + getChange(relateRewardType) + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.and"] + rewardValue + getChange(rewardType) + '<br>' + i18n["prompt.later"];
                            if (rewardType == 0 && relateRewardType == 1) {
                                ponitNumber = rewardValue;
                                number = relateRewardValue;
                            } else if (rewardType == 1 && relateRewardType == 0) {
                                number = rewardValue;
                                ponitNumber = relateRewardValue;
                            } else if (rewardType == 0 && relateRewardType == 2) {
                                ponitNumber = rewardValue;
                            } else if (rewardType == 2 && relateRewardType == 0) {
                                ponitNumber = relateRewardValue;
                            }
                        } else {
                            text = json.msg + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wish"] + relateRewardValue + getChange(relateRewardType) + i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.and"] + rewardValue + getChange(rewardType);
                            if (rewardType == 1 && relateRewardType == 2) {
                                number = rewardValue;
                            } else if (rewardType == 2 && relateRewardType == 1) {
                                number = relateRewardValue;
                            }
                        }
                    }
                }
                // 已签到状态
                $(b).parent("div").addClass("disabled");
                var g = parseInt($("#totalPoint").text()) + number;
                // 刷新登录组件经验值
                $("#totalPoint").text(g);
                if (g >= parseInt($("#input-maxs").val()) && parseInt($("#input-maxs").val()) != parseInt($("#input-min").val())) {
                    $("#gradediv").removeClass("bgCanvas vip-level-" + $("#input-gradeCode").val()).addClass("bgCanvas vip-level-" + (parseInt($("#input-gradeCode").val()) + 1));
                    $("#gradeTips").removeClass("icon-vip-" + $("#input-gradeCode").val()).addClass("icon-vip-" + (parseInt($("#input-gradeCode").val()) + 1));
                    updateProgress(parseInt($("#input-Xmaxs").val()), parseInt($("#input-maxs").val()), g);
                } else {
                    updateProgress(parseInt($("#input-maxs").val()), parseInt($("#input-min").val()), g);
                }
                // 刷新登录组件积分总数
                var d = $("#pointCount").text();
                if (d != "--") {
                    d = parseInt(d);
                    $("#pointCount").text(d + ponitNumber);
                }
            } else if (json.code == 9106) {
                $(b).attr("onclick", "utils.signin(this);").parent("div").removeClass("vip-signing");
                text = i18n["prompt.login"];
                opts.okBtnName = i18n["btn.login"];
                utils.handleCode.unLogin(opts);
            } else {
                opts.faceType = 'failed';
                switch (Number(json.code)) {
                    case 9104:
                        text = i18n["prompt.begin"];
                        break;
                    case 9105:
                        text = i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.over"]
                        break;
                    case 9107:
                        text = i18n["prompt.condition"];
                        break;
                    case 9108:
                        text = i18n["prompt.binging"];
                        opts.okBtnName = i18n["btn.binging"];
                        break;
                    case 9109:
                        text = i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.data"];
                        opts.okBtnName = i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/btn.data"];
                        break;
                    case 9110:
                        text = i18n["prompt.authenticate"];
                        opts.okBtnName = i18n["btn.authenticate"];
                        break;
                    default:
                        text = i18n["https://res9.vmallres.com/shopdc/cdn/modules/sign-user/pc/js/prompt.wait"];
                        break;
                }
                $(b).attr("onclick", "utils.signin(this);").parent("div").removeClass("vip-signing");
            }

            new utils.box(text, opts).open();
        };

        utils.ajaxOpenAPI({
            type: 'POST',
            url: "/ams/signIn/signIn",
            data: { 'activityCode': sign.activityCode },
            success: _callback
        });
    };

    // 查询当天是否签到
    function querySign(date) {
        var data = { activityCode: sign.activityCode };
        utils.ajaxOpenAPI({
            type: 'GET',
            url: "/ams/signIn/querySignInActivityInfo",
            data: data,
            success: function(data) {
                if (data && data.success) {
                    var signInfo = data.signinInfo;
                    var len = signInfo.length;
                    var curDate = new Date().setHours(0, 0, 0);
                    var lastsigninTime = signInfo[0].signinTime;
                    var arrSignInfo = [];
                    var compareFn = function(m, n) {
                                        if (m > n) return -1
                                        else if (m < n) return 1
                                        else return 0
                                    };
                    for (var i = 0; i < signInfo.length; i++) {
                        arrSignInfo.push(signInfo[i].signinTime);
                    }
                    var lastsigninTime = arrSignInfo.sort(compareFn)[0];
                    // 判断最近签到时间是否是今天
                    if (curDate < lastsigninTime) {
                        $('.vip-sign-box a').removeAttr("onclick");
                        $('.vip-sign-box').addClass("disabled");
                    }
                }
            }
        });
    }

    // 刷新登录组件经验条
    function updateProgress(max, min, totalPoint) {
        if (max >= 0 && min >= 0 && totalPoint >= 0) {
            var v_high = max,
                v_low = min,
                v_curr = totalPoint,
                per = v_curr / v_high, //比例
                _deg = 0; //度数
            if (v_high == v_low) {
                $(".roundCanvas-left div").css({ "transform": "rotateZ(0deg)", "background": "#ee1822" });
                $(".roundCanvas-right div").css({ "transform": "rotateZ(-59deg)" });
            } else {
                if (per > 0.5) {
                    _deg = 242 * per - 302;
                    $(".roundCanvas-left div").css({ "transform": "rotateZ(0deg)" });
                    $(".roundCanvas-right div").css({ "transform": "rotateZ(" + _deg + "deg)" });
                    if (per > 0.7) {
                        $(".roundCanvas-left div").css({ "background": "#ee1822" });
                    } else {
                        _deg = _deg + 180;
                        $(".roundCanvas-left div").css({ "transform": "rotateZ(" + _deg + "deg)", "background": "-webkit-gradient(linear, 0 bottom, right 0, from(#ee1822), to(#Edb23b))" });
                        $(".roundCanvas-right div").css({ "background": "-webkit-gradient(linear, 0 bottom, right 0, from(#Edb23b), to(#ee1822))" });
                    }
                } else {
                    if (per < 0.01 && per > 0) {
                        per = 0.01;
                    }
                    _deg = 242 * per - 121;
                    $(".roundCanvas-left div").css({ "transform": "rotateZ(" + _deg + "deg)", "background": "-webkit-gradient(linear, 0 bottom, 0 0, from(#ee1822), to(#Edb23b))" });
                    $(".roundCanvas-right div").css({ "transform": "rotateZ(-180deg)" });
                }
            }
        }
    }
    querySign();
})(window, jQuery);
