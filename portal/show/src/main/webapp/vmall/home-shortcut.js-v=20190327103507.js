/**
 * PC页头文字链
 * 开始转测{"version":"1.3.2","time":"2018.01.24 15:30:28","author":"cwx408876/Ben"}
 */
(function(window, $, undefined) {
    var microCarTtpl = '\
        <!--#macro microCartList data-->\
        <!--#list data.itemList as item-->\
        <!--#if (item.isBundle == 1) -->\
        <!--#var lst = item.skuList[0];-->\
        <!--#var skuId="#"+lst.skuId;-->\
        <li class="minicart-pro-item">\
            <div class="pro-info clearfix">\
                <!--#if (item.invalidCauseReason == 0) -->\
                <div class="p-choose"><i class="<!--#if (item.checked)-->icon-choose<!--#else-->icon-choose-normal<!--/#if-->" id="icon-choose-{#item.bundleId}" onclick="ec.minicart.click(this)" value="{#item.bundleId}" type="{#item.productType}"></i></div>\
                <input class="hide" id="checkbox-{#item.bundleId}" name="bundleIds" value="{#item.bundleId}" type="checkbox" checked="checked" />\
                <input class="hide" id="quantity-{#item.bundleId}" value="{#item.quantity}" data-type="{#item.productType}" type="text" checked="checked" />\
                <!--#else-->\
                <div class="p-choose"><i class="icon-choose-normal" id="icon-choose-{#item.bundleId}"></i></div>\
                <input class="hide" id="checkbox-{#item.bundleId}" name="bundleIds" value="{#item.bundleId}" type="checkbox" />\
                <input class="hide" id="quantity-{#item.bundleId}" value="{#item.quantity}" data-type="{#item.productType}" type="text" />\
                <!--/#if-->\
                <div class="p-img">\
                    <a href="https://res9.vmallres.com/product/{#lst.id}.html{#skuId}" title="" target="_blank">\
                        <img src="' + window.mediaPath + '{#lst.photoPath}78_78_{#lst.photoName}" alt="{#lst.prdSkuName}" />\
                    </a>\
                </div>\
                <div class="p-name">\
                    <a href="https://res9.vmallres.com/product/{#lst.id}.html{#skuId}" title="{#lst.prdSkuName}" target="_blank">{#lst.prdSkuName}</a>\
                </div>\
                <div class="p-dec">\
                    <span class="p-slogan">\
                        {#lst.miniCartSkuAttrValues}\
                    </span>\
                </div>\
                <div class="p-status">\
                    <!--#if (item.invalidCauseReason == 1) -->\
                    <div class="p-tags">此商品不可购买</div>\
                    <!--#elseif (item.invalidCauseReason == 2) -->\
                    <div class="p-tags">此商品不可购买 </div>\
                    <!--#elseif (item.invalidCauseReason == 3) -->\
                    <div class="p-tags">此商品不可购买 </div>\
                    <!--#elseif (item.invalidCauseReason == 4) -->\
                    <div class="p-tags">此商品不可购买 </div>\
                    <!--#elseif (item.invalidCauseReason == 5) -->\
                    <div class="p-tags">此商品暂不可购买 </div>\
                    <!--#elseif (item.invalidCauseReason == 6) -->\
                    <div class="p-tags">此商品暂时缺货 </div>\
                    <!--#elseif (item.invalidCauseReason == 7) -->\
                    <div class="p-tags">限购{#item.invalidCauseLeftValue}件</div>\
                    <!--#elseif (item.invalidCauseReason == 8) -->\
                    <div class="p-tags">限购{#item.invalidCauseLeftValue}件</div>\
                    <!--/#if-->\
                    <div class="p-price">\
                        <!--#if (item.originalPrice != item.bundlePrice) -->\
                        <s>&yen;&nbsp;{#item.originalPrice.toFixed(2)}</s>&nbsp;&nbsp;\
                        <!--/#if-->\
                        <b>&yen;&nbsp;{#item.bundlePrice.toFixed(2)}</b><strong><em>x</em><span>{#item.quantity}</span></strong>\
                    </div>\
                </div>\
            </div>\
            <div class="p-pack">\
                <span class="p-mini-tag-suit">套餐</span>\
                <a href="javascript:;" title="<!--#list item.skuList as sku-->{#sku.prdSkuName}x{#sku.quantity}<!--/#list-->">\
                    <!--#list item.skuList as sku-->\
                    {#sku.prdSkuName}<em>x{#sku.quantity}</em>\
                    <!--/#list-->\
                </a>\
            </div>\
        </li>\
        <!--#else-->\
        <!--#var skuId="#"+item.skuId;-->\
        <!--#if (item.extendAccidentList && item.extendAccidentList.length > 0)-->\
        <li class="minicart-pro-item minicart-pro-item-suit">\
            <!--#else-->\
            <li class="minicart-pro-item">\
                <!--/#if-->\
                <div class="pro-info clearfix">\
                    <!--#if (item.invalidCauseReason == 0) -->\
                    <div class="p-choose"><i class="<!--#if (item.checked) -->icon-choose<!--#else-->icon-choose-normal<!--/#if-->" id="icon-choose-{#item.skuId}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.productType}"></i></div>\
                    <input class="hide" name="skuIds" id="checkbox-{#item.skuId}" value="{#item.skuId}" data-scode="{#item.sbomCode}" type="checkbox" checked="checked">\
                    <input class="hide" id="quantity-{#item.skuId}" value="{#item.quantity}" data-type="{#item.productType}" type="text" checked="checked" />\
                    <!--#else-->\
                    <div class="p-choose"><i class="icon-choose-normal" id="icon-choose-{#item.skuId}"></i></div>\
                    <input class="hide" name="skuIds" id="checkbox-{#item.skuId}" value="{#item.skuId}" type="checkbox" />\
                    <input class="hide" id="quantity-{#item.skuId}" value="{#item.quantity}" data-type="{#item.productType}" type="text" />\
                    <!--/#if-->\
                    <div class="p-img">\
                        <a href="https://res9.vmallres.com/product/{#item.id}.html{#skuId}" title="" target="_blank">\
                            <img src="' + window.mediaPath + '{#item.photoPath}78_78_{#item.photoName}" alt="{#item.prdSkuName}" />\
                        </a>\
                    </div>\
                    <div class="p-name">\
                        <a href="https://res9.vmallres.com/product/{#item.id}.html{#skuId}" title="{#item.prdSkuName}" target="_blank">{#item.prdSkuName}</a>\
                    </div>\
                    <div class="p-dec">\
                        <span class="p-slogan">\
                                {#item.miniCartSkuAttrValues}\
                            </span>\
                    </div>\
                    <div class="p-status">\
                        <!--#list item.giftList as gif-->\
                        <input type="checkbox" name="giftId" class="hide" value="{#gif.sbomCode}" />\
                        <!--/#list-->\
                        <!--#if (item.invalidCauseReason == 1) -->\
                        <div class="p-tags">此商品不可购买</div>\
                        <!--#elseif (item.invalidCauseReason == 2) -->\
                        <div class="p-tags">此商品不可购买 </div>\
                        <!--#elseif (item.invalidCauseReason == 3) -->\
                        <div class="p-tags">此商品不可购买 </div>\
                        <!--#elseif (item.invalidCauseReason == 4) -->\
                        <div class="p-tags">此商品不可购买 </div>\
                        <!--#elseif (item.invalidCauseReason == 5) -->\
                        <div class="p-tags">此商品暂不可购买 </div>\
                        <!--#elseif (item.invalidCauseReason == 6) -->\
                        <div class="p-tags">此商品暂时缺货 </div>\
                        <!--#elseif (item.invalidCauseReason == 7) -->\
                        <div class="p-tags">限购{#item.invalidCauseLeftValue}件</div>\
                        <!--#elseif (item.invalidCauseReason == 8) -->\
                        <div class="p-tags">限购{#item.invalidCauseLeftValue}件</div>\
                        <!--/#if-->\
                        <div class="p-price">\
                            <!--#if (item.salePrice != item.normalPrice) -->\
                            <s>&yen;&nbsp;{#item.normalPrice.toFixed(2)}</s>&nbsp;&nbsp;\
                            <!--/#if-->\
                            <b>&yen;&nbsp;{#item.salePrice.toFixed(2)}</b><strong><em>x</em><span>{#item.quantity}</span></strong>\
                        </div>\
                    </div>\
                </div>\
                <!--#if ((item.extendAccidentList && item.extendAccidentList.length > 0) || (item.preferSkuList && item.preferSkuList.length > 0)) -->\
                <div class="pro-other clearfix">\
                    <ol>\
                        <!--#list item.extendAccidentList as ea-->\
                        <!--#if (ea.productType == 6) -->\
                        <li>\
                            <div class="p-title">\
                                <span class="p-mini-tag-long">延保</span>{#ea.prdSkuName}\
                            </div>\
                            <input class="hide" name="extendIds" value="{#ea.skuId}" data-scode="{#ea.sbomCode}" type="checkbox" />\
                            <div class="p-price"><b>&yen;&nbsp;{#ea.salePrice.toFixed(2)}</b><strong><em>x</em><span>{#item.quantity}</span></strong></div>\
                        </li>\
                        <!--/#if-->\
                        <!--/#list-->\
                        <!--#list item.extendAccidentList as ea-->\
                        <!--#if (ea.productType == 7) -->\
                        <li>\
                            <div class="p-title">\
                                <span class="p-mini-tag-extend">碎屏保</span>{#ea.prdSkuName}\
                            </div>\
                            <input class="hide" name="accidentIds" value="{#ea.skuId}" data-scode="{#ea.sbomCode}" type="checkbox" />\
                            <div class="p-price"><b>&yen;&nbsp;{#ea.salePrice.toFixed(2)}</b><strong><em>x</em><span>{#item.quantity}</span></strong></div>\
                        </li>\
                        <!--/#if-->\
                        <!--/#list-->\
                        <!--#if (item.preferSkuList && item.preferSkuList.length > 0)-->\
                        <input type="hidden" id="preferIds_{#item.skuId}" value="<!--#list item.preferSkuList as ea-->{#ea.sbomCode},<!--/#list-->" skuids="<!--#list item.preferSkuList as ea-->{#ea.skuId},<!--/#list-->" />\
                        <!--/#if-->\
                        <!--#list item.preferSkuList as ea-->\
                        <li>\
                            <div class="p-title p-add">\
                                <span class="p-mini-tag-extend">加价购</span>{#ea.prdSkuName}\
                            </div>\
                            <div class="p-price">\
                                <!--#if (ea.salePrice != ea.normalPrice) -->\
                                <s>&yen;&nbsp;{#ea.normalPrice.toFixed(2)}</s>&nbsp;&nbsp;\
                                <!--/#if-->\
                                <b>&yen;&nbsp;{#ea.salePrice.toFixed(2)}</b><strong><em>x</em><span>{#ea.quantity}</span></strong>\
                            </div>\
                        </li>\
                        <!--/#list-->\
                    </ol>\
                </div>\
                <!--/#if-->\
                <!--#if (item.giftList && item.giftList.length > 0)-->\
                <input type="hidden" id="gift_sbomCodes_{#item.skuId}" value="<!--#list item.giftList as gift-->{#gift.skuId},<!--/#list-->" />\
                <div class="p-pack">\
                    <span class="p-mini-tag-suit">配</span>\
                    <a href="javascript:;" style="cursor: default;" title="<!--#list item.giftList as gift-->{#gift.prdSkuName}x{#gift.quantity*item.quantity},<!--/#list-->">\
                        <!--#list item.giftList as gift-->\
                        {#gift.prdSkuName}<em>x{#gift.quantity*item.quantity}</em>\
                        <!--/#list-->\
                    </a>\
                </div>\
                <!--/#if-->\
            </li>\
            <!--/#if-->\
            <!--/#list-->\
            <!--/#macro-->';

    ec.minicart.readyContent();

    ec.minicart.microCartTpl = new ec.template(microCarTtpl);

    // 优先取Cookie中的企业用户标记
    var isEnterpriseUser = ec.util.cookie.get("isEnterpriseUser");

    if ("true" == isEnterpriseUser) {
        $("#li-enterprise-preferential").html('<a href="' + domainMain + '/member/enterprise" onclick = "pushHeaderMsg(\'优惠内购\',\'' + domainMain + '/member/enterprise\')"><span>优惠内购</span></a>').show();
    }

    var $miniCart = $('#header-toolbar-minicart-content');

    // 购物车
    $('#header-toolbar-minicart').hover(function() {
        if (ec.checkBrowerIE()) {
            var act = document.activeElement.id;
            if (act == 'search-kw') {
                $("#search-kw").blur();
            }
        }

        $(this).unbind("mouseenter");
        ec.minicart.content();
    }, function() {
        $(this).bind("mouseenter", function() {
            if (ec.checkBrowerIE()) {
                var act = document.activeElement.id;
                if (act == 'search-kw') {
                    $("#search-kw").blur();
                }
            }

            $(this).unbind("mouseenter");
            ec.minicart.content();
        });
    });

    // 登录名
    $('#up_loginName-hover').hover(function() {
        if (ec.checkBrowerIE()) {
            var act = document.activeElement.id;
            if (act == 'search-kw') {
                $("#search-kw").blur();
            }
        }
        $(this).unbind("mouseenter");
    }, function() {
        $(this).bind("mouseenter", function() {
            if (ec.checkBrowerIE()) {
                var act = document.activeElement.id;
                if (act == 'search-kw') {
                    $("#search-kw").blur();
                }
            }
            $(this).unbind("mouseenter");
        });
    });

    // 获取代金券余额
    ec.account.getBalanceAmount();

})(window, jQuery);

// 选择地区
(function(window, $, undefined) {
    ec.load("https://res9.vmallres.com/shopdc/cdn/modules/home-shortcut/pc/js/ec.box", { loadType: "lazy" });

    /**
     * 功能：给鼠标移动到s-dropdown上面的时候，记得给他多添加一个hover类样式
     * 目的是兼容ie6
     */
    $(function() {
        $(".s-dropdown").hover(function() {
            $(this).addClass("hover");
        }, function() {
            $(this).removeClass("hover");
        });
        var maxcolor = $('.top-banner-max').find('p').children('a').css("background-color");
        var mincolor = $('.top-banner-min').find('p').children('a').css("background-color");

        $('.top-banner-max').css({ "background-color": maxcolor, overflow: "hidden" });
        $('.top-banner-min').css({ "background-color": mincolor, overflow: "hidden" });
    });

    // 显示全球导航选择层
    $('#showSelectRegion').click(function(event) {
        var box = new ec.box($("#selectRegion-tips").val(), {
            boxid: "region-select-box",
            boxclass: "ol_box_4",
            title: "Please select your country or region.",
            width: 940,
            showButton: false,
            autoPosition: false,
            onopen: function(box) {},
            onok: function(box) {},
            oncancel: function(box) {
                box.close();
                $(".ol_box_mask").remove();
            },
            onclose: function(box) {
                $(".ol_box_mask").remove();
            }
        });

        box.open();

        $(".box-title").css("font-size", "28px").css("font-weight", "normal");
        $("#region-select-box").css("height", "auto");
        $(".ol_box_mask").click(function() { box.close(); });

        $(".box-header").unbind("mousemove");
        $(".box-header").unbind("mousedown");

        var divTop = document.getElementById("region-select-box").offsetTop;
        $("#region-select-box").mousedown(function(e) {
            var e = e || window.event;
            var region = document.getElementById("region-select-box");

            var leftX = e.clientX - region.offsetLeft;
            var topY = e.clientY - region.offsetTop;
            $("#region-select-box").mousemove(function(event) {
                var e = event || window.event;
                var left = e.clientX - leftX;
                var top = e.clientY - topY;

                if (e.clientX - leftX < 20 - region.offsetWidth) {
                    left = 20 - region.offsetWidth;
                }
                if (e.clientY - topY < 20 - region.offsetHeight) {
                    top = 20 - region.offsetHeight;
                }

                if (e.clientY - topY + 20 >= $(window).height()) {
                    top = $(window).height() - 20;
                }
                if (e.clientX - leftX + 20 >= $(window).width()) {
                    left = $(window).width() - 20;
                }
                $("#region-select-box").css({ "left": left, "top": top });
                divTop = top;

            });
        });
        $("#region-select-box").mouseup(function() {
            $("#region-select-box").unbind("mousemove");
        });
        $(window).scroll(function() {
            $("#region-select-box").offset({ top: divTop });
        });
    });
})(window, jQuery);
