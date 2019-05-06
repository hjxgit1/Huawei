/**
 * PC端：积分兑&赚
 * 需求：增加积分兑好礼{"time":"2018.11.05 20:38:09","author":"Ben"}
 */
(function(window, $, undefined) {
    // 国际化
    var locale = {
        "zh-CN": {
            "prompt.period": "有效期：",
            "prompt.price": "兑换价：",
            "prompt.point": "积分",
            "prompt.limit": "每人限兑",
            "prompt.coupon": "张",
            "btn.exchange": "确认兑换",
            "btn.confirm": "确认",
            "btn.empty": "已兑完",
            "https://res9.vmallres.com/shopdc/cdn/modules/point/pc/js/btn.had": "已兑换",
            "btn.begin": "即将开始兑换",
            "https://res9.vmallres.com/shopdc/cdn/modules/point/pc/js/btn.over": "已结束"
        },
        "en-US": {
            "prompt.period": "Period of validity:",
            "prompt.price": "Conversion price:",
            "prompt.point": "points",
            "prompt.limit": "Limit per person",
            "prompt.coupon": "coupons",
            "btn.exchange": "Confirm exchange",
            "btn.confirm": "Confirm",
            "btn.empty": "Empty",
            "https://res9.vmallres.com/shopdc/cdn/modules/point/pc/js/btn.had": "Had exchanged",
            "btn.begin": "Begin exchanged",
            "https://res9.vmallres.com/shopdc/cdn/modules/point/pc/js/btn.over": "Over"
        }
    };
    var i18n = locale[window.pageConfig.locale || "zh-CN"];
    var $mod = $('.mod-point');

    // 积分兑好券：委托点击
    $mod.on('click', '[data-pointconfig]', function(event) {
        var $target = $(this);
        var config = $target.data('pointconfig');

        // 只有正常状态才可以点击
        if ($target.find('span').hasClass('disabled')) {
            return false;
        } else {
            var handleLogin = function() {
                var text = '<p>' + config.productName + '</p>'; // 优惠券名称
                text += '<p>' + config.scope + '</p>'; // 适用范围
                text += '<p>' + "有效期：" + config.period + '</p>'; // 有效期
                text += '<p>' + "兑换价：" + config.point + "积分" + '</p>'; // 兑换价
                text += '<p>' + "每人限兑" + config.limitCount + "张" + '</p>'; // 每人限兑
                new utils.box(text, {
                    boxid: "point",
                    boxclass: 'point',
                    title: '确认兑换',
                    onok: function() {
                        utils.getCoupon(config, handleCouponState);
                        $('#point').hide();
                        $('.ol_box_mask').hide();
                    }
                }).open();
            };

            // 判断是否登录
            $.ajax({
                url: domainMain + "/member/accountInfo.json?_t=" + (new Date()).getTime(),
                dataType: "json",
                timeout: 10000,
                timeoutFunction: handleLogin,
                success: function(res) {
                    // 如果已经登录，提醒用户兑换的条件
                    if (res && res.success) {
                        handleLogin();
                    } else {
                        utils.goLogin();
                    }
                },
                error: handleLogin
            });
        }
    });

    // 处理优惠券的显示状态
    function handleCouponState(data) {
        var $pointconfigs = $('a[data-pointconfig]');

        $pointconfigs.each(function(index, el) {
            var config = $(el).data('pointconfig');
            var $target;
            var className = '';
            var text = '';
            if (config.activityCode == data.activityCode && config.batchCode == data.batchCode) {
                $target = $(el);
                if (data.receiveStates == -1) { // 已兑完
                    className = 'exchange-ash disabled';
                    text = "已兑完";
                } else if (data.receiveStates == 1) { // 正常状态不操作
                    return false;
                } else if (data.receiveStates == 2) { // 已兑换
                    className = 'exchange-invalid disabled';
                    text = "已兑换";
                } else if (data.receiveStates == 3) { // 即将开始兑换
                    className = 'exchange-notbegin disabled';
                    text = "即将开始兑换";
                } else if (data.receiveStates == 4) { // 已结束
                    className = 'exchange-ash disabled';
                    text = "已结束";
                }

                $target.find('span.exchange-red').html('<i class="icon-convert"></i>' + text).addClass(className);
            }
        });
    }

    var arrCouponParam = [];

    $('a[data-pointconfig]').each(function(index, el) {
        var config = $(el).data('pointconfig');
        var item = {
            activityCode: config.activityCode,
            batchCode: config.batchCode
        };
        arrCouponParam.push(item);
    });

    utils.queryCouponState(arrCouponParam, handleCouponState);

    /**
     * 积分兑好礼
     */

    // 积分兑好礼：查询
    $mod.each(function(index, el) {
        var $gifts = $(el).find('a[data-prizeconfig]');
        if ($gifts.length > 0) {
            var activityCode = $gifts.eq(0).data('prizeconfig').activityCode;
            getPointExchangeInfo(activityCode);
        }
    });

    // 积分兑好礼：委托点击
    $mod.on('click', '[data-prizeconfig]', function(event) {
        var $target = $(this);
        var config = $target.data('prizeconfig');
        var text =
            '<div style="line-height:20px;text-align:left;padding:20px 30px 0 50px;">' +
            '<p>兑换礼品：' + config.prizeName + '</p>' +
            '<p>兑换价：' + config.exchangePrizePoint + '积分</p>' +
            '<p>每人限兑' + config.exchangePrizeNumber + '次</p>' +
            '<p style="margin-top:20px;">温馨提示：一经兑换，积分不予退还</p>' +
            '</div>',
            opts = {
                boxclass: 'ol_box_4',
                showTitle: true,
                title: '确认兑换',
                okBtnName: '确认',
                onok: function() {
                    exchangePointPrize(config.activityCode, config.prizeId);
                },
                showCancel: true
            };

        if ($target.find('.exchange-red').hasClass('disabled')) {
            return false;
        }

        new utils.box(text, opts).open();
    });

    // 积分兑好券：查询接口
    function getPointExchangeInfo(activityCode) {

        utils.ajaxOpenAPI({
            type: 'GET',
            url: "/ams/point/getPointExchangeInfo",
            data: {
                'activityCode':activityCode
            },
            success: function(res, textStatus) {
                if (res.listPrizeInfo.length > 0) {
                    var $exchangeEl;
                    var tips = {
                        '9104': '即将开始',
                        '9105': '已结束'
                    };
                    $.each(res.listPrizeInfo, function(index, item) {
                        $exchangeEl = $mod.find('a[data-prize-id=' + item.id + '] span.exchange-red');
                        // 只显示接口返回的已投入奖品
                        $exchangeEl.parents('li').show();
                        if (res.code) {
                            $exchangeEl.html('<i class="icon-convert"></i>' + tips[res.code]).addClass('disabled');
                        } else if(item.isExchange != 1) {
                            // 如果不可兑换
                            $exchangeEl.html('<i class="icon-convert"></i>已兑完').addClass('disabled');
                        }
                    });
                }
            }
        });
    }

    // 积分兑好券：兑换接口
    function exchangePointPrize(activityCode, prizeId) {
        var tips = {
            '9104': { tip: '活动未开始' },
            '9105': { tip: '活动已结束' },
            '9106': { tip: '亲，您未登录哦，登录后再来兑换吧~', act: 'unLogin' },
            '9107': { tip: '本活动限指定等级会员参与，您暂时不符合条件哦~' },
            '9127': { tip: '您的积分不足，暂时无法参与本活动哦~' },
            '9129': { tip: '已达该礼品兑换次数上限，把机会留给其他小伙伴吧~' },
            '9158': { tip: '该礼品已兑完，下次早点来哦~' },
            '9160': { tip: '该礼品已兑完，下次早点来哦~' },
        };
        var text = '亲，瞬间被你的热情吓到了，<br/>容我缓缓，请稍后再来哦~',
            opts = {
                boxclass: 'ol_box_4',
                showTitle: false,
                faceType: 'error', // success,failed,error
                okBtnName: '知道了',
                showCancel: false
            };

        var formData = {
            'activityCode': activityCode,
            'prizeId': prizeId,
            't': (new Date()).getTime()
        };

        utils.ajaxOpenAPI({
            type: 'POST',
            url: "/ams/point/exchangePointPrize",
            contentType: false,
            processData: false,
            data: formData,
            success: function(data) {
                if (data.success) {
                    opts.faceType = 'success';
                    text = '<div style="font-size:20px;font-weight:bold;margin-bottom:20px;color:#333;">恭喜您，兑换成功！</div>'
                    text += '<div style="text-align:left;">礼品将按您的默认收货地址寄出，请在5天内完成默认收货地址设置，逾期视为自动放弃礼品哦~</div>';
                    opts.okBtnName = '去设置默认地址';
                    opts.onok = function() {
                        window.location.href = window.main + '/member/myAddress';
                    };
                } else {
                    for (var x in tips) {
                        if (x == data.code) {
                            text = tips[x].tip;
                            opts.okBtnName = tips[x].btn;
                            tips[x].act && (utils.handleCode[tips[x].act](opts));
                        }
                    }
                }
                // 兑换完毕后重新查询活动
                getPointExchangeInfo(activityCode);
                new utils.box(text, opts).open();
            },
            error: function(data) {
                new utils.box(text, opts).open();
            }
        });
    }

    var initObj = {
        init: function(els) {
            // 收起展开
            $('.vip-caret').click(function() {
                var $target = $(this);
                var $ul = $target.parent().next('ul');
                if ($ul.is(':hidden')) {
                    $ul.show();
                    $target.html('收起<i></i>');
                } else {
                    $ul.hide();
                    $target.html('展开<i class="icon-start"></i>');
                }
            });
        }
    };

    DC.defineModule('point', initObj);
    initObj.init('.mod-point');
})(window, jQuery);
