/**
 * PC华为专区单商品
 * 优化：鼠标移入时背景色反转{"version":"https://res8.vmallres.com/shopdc/cdn/modules/product-single-huawei/pc/js/1.3.10","time":"2018.06.12 09:53:55","author":"cwx408876/Ben"}
 * 增加：模板一的动画效果{"version":"https://res8.vmallres.com/shopdc/cdn/modules/product-single-huawei/pc/js/1.3.12","time":"2018.06.21 11:14:16","author":"cwx408876/Ben"}
 */
(function(window, $, undefined) {
    var $getCoupon = $('.mod-product-single-huawei .get-coupon');

    $getCoupon.click(function(event) {
        utils.getCouponMulti(event, this);
    });

    // 鼠标移入时背景色反转
    $getCoupon.mouseover(function(event) {
        var $target = $(this);
        var color = $target.css('borderTopColor');
        $target.css({
            backgroundColor: color,
            color: color == 'rgb(255, 255, 255)' ? '#900' : '#fff'
        });
    }).mouseout(function(event) {
        var $target = $(this);
        var color = $target.css('borderTopColor');
        $target.css({
            backgroundColor: 'transparent',
            color: color
        });
    });

    // 横线动画效果
    var $tpls = $('.mod-product-single-huawei.tpl-1,.mod-product-single-huawei.tpl-6,.mod-product-single-huawei.tpl-7');
    $tpls.mouseenter(function(event) {
        $(this).toggleClass('current');
    }).mouseleave(function(event) {
        $(this).toggleClass('current');
    });
})(window, jQuery);
