// 主站配置
var domainYY = 'https://yy.vmall.com/';
var domainRush = 'https://buy.vmall.com/';
var domainEdit = 'https://customization.vmall.com';
var domainMain = 'https://www.vmall.com';
var domainWap = 'https://m.vmall.com';
var domainCart = 'https://cart.vmall.com/';
var domainRemark = 'https://remark.vmall.com/';
var domainRms = 'https://rms.vmall.com';
var domainShoppingConfig = 'https://addr.vmall.com/';
var imagePath = 'https://res.vmallres.com/20180112/images';
var domainAccount = 'index.htm'/*tpa=https://www.vmall.com/*/;
var isUseAccount = 'false';
var upBindPhoneAddr = 'https://hwid1.vmall.com/CAS/portal/bindPhoneAccount.html?lang=zh-cn&amp;themeName=cloudTheme&amp;reqClientType=26';
var dominWapRecycle = 'https://mobile.huishoubao.com/?pid=1056';
var domainCds = 'https://cds.vmall.com';
var domainIps = 'https://cashier.vmall.com/cashier/voucher'; // 新版代金券
var scriptPath = 'https://res9.vmallres.com/20180202/js';
var domainAms = "https://act.vmall.com"; // 活动
var domainUc = 'https://member.vmall.com'; // 用户中心
var pmsHttpDomain = '//product.vmall.com/';
var mediaPath = 'https://res.vmallres.com/pimages/';
var dapDomain = 'https://dap.vmall.com'; // dap数据上报

// 活动页面
var prebookDomain = "https://mm.vmall.com"; // 预约
var ifmLogin = 'https://hwid1.vmall.com/CAS/portal/ifmLogin.html'; // UP登录
var whitelist = [
    'https://www.vmall.com',
    'https://sale.vmall.com',
    'https://shop.huawei.com',
    'https://shop.huawei.ru',
    'https://www.hihonor.com',
    'https://www.hihonor.com/nl',
    'https://shop.huawei.com/pl',
    'https://shop.huawei.com/cz'
];

// 多国配置
(function(window) {
    var locale = window.pageConfig.locale;
    var config = {
        domainMain: {
            "zh-CN": "https://www.vmall.com",
            "en-US": "https://www.hihonor.com/us",
            "en-GB": "https://www.hihonor.com/uk",
            "es-ES": "https://www.hihonor.com/es",
            "de-DE": "https://www.hihonor.com/de",
            "fr-FR": "https://www.hihonor.com/fr",
            "it-IT": "https://www.hihonor.com/it",
            "en-IN": "https://www.hihonor.com/in",
            "en-MY": "https://www.hihonor.com/my",
            "en-MYHW": "https://shop.huawei.com/my",
            "ru-RUHW": "https://shop.huawei.ru",
            "cz-CZHW": "https://shop.huawei.com/cz",
            "pl-PLHW": "https://shop.huawei.com/pl",
            "nl-NL": "https://www.hihonor.com/nl",
        },
        registerUrl: {
            "zh-CN": 'https://hwid1.vmall.com/CAS/portal/userRegister/regbyphone.html?loginChannel=26000000&reqClientType=26&lang=zh-CN&countryCode=cn',
            "en-US": 'https://hwid7.vmall.com/CAS/portal/userRegister/regbyphone.html?loginChannel=26000109&reqClientType=26&lang=en-gb&countryCode=us',
            "en-GB": 'https://hwid7.vmall.com/CAS/portal/userRegister/regbyphone.html?loginChannel=26000702&reqClientType=26&lang=en-gb&countryCode=gb',
            "es-ES": 'https://hwid7.vmall.com/CAS/portal/userRegister/regbyphone.html?loginChannel=26000705&reqClientType=26&lang=es-es&countryCode=es',
            "de-DE": 'https://hwid7.vmall.com/CAS/portal/userRegister/regbyphone.html?loginChannel=26000704&reqClientType=26&lang=de-de&countryCode=de',
            "fr-FR": 'https://hwid7.vmall.com/CAS/portal/userRegister/regbyphone.html?loginChannel=26000703&reqClientType=26&lang=fr-fr&countryCode=fr',
            "it-IT": 'https://hwid7.vmall.com/CAS/portal/userRegister/regbyphone.html?loginChannel=26000701&reqClientType=26&lang=it-it&countryCode=it',
            "en-IN": 'https://hwid5.vmall.com/CAS/portal/userRegister/regbyemail.html?loginChannel=26000000&reqClientType=26&lang=en-in&countryCode=in',
            "en-MY": 'https://hwid5.vmall.com/CAS/portal/userRegister/regbyemail.html?loginChannel=26003800&reqClientType=26&lang=en-gb&countryCode=my&themeName=blue',
            "en-MYHW": 'https://hwid5.vmall.com/CAS/portal/userRegister/regbyemail.html?loginChannel=26003850&reqClientType=26&lang=en-gb&countryCode=my',
            "ru-RUHW": 'https://hwid8.vmall.com/CAS/portal/userRegister/regbyphone.html?loginChannel=26000008&reqClientType=26&lang=ru-RU&countryCode=ru',
            "cz-CZHW": 'https://hwid7.vmall.com/CAS/portal/userRegister/regbyemail.html?loginChannel=26000809&reqClientType=2689&lang=cs-cz&themeName=red',
            "pl-PLHW": "",
            "nl-NL": "",
        },
        infoLink: {
            "zh-CN": 'https://hwid1.vmall.com/CAS/portal/userCenter/info.html?loginChannel=26000000&reqClientType=26&lang=zh-CN&countryCode=cn',
            "en-US": 'https://www.hihonor.com/us/member/myInformation',
            "en-GB": 'https://www.hihonor.com/uk/member/myInformation',
            "es-ES": 'https://www.hihonor.com/fr/member/myInformation',
            "de-DE": 'https://www.hihonor.com/de/member/myInformation',
            "fr-FR": 'https://www.hihonor.com/es/member/myInformation',
            "it-IT": 'https://www.hihonor.com/it/member/myInformation',
            "en-IN": 'https://www.hihonor.com/in/member/myInformation',
            "en-MY": 'https://www.hihonor.com/my/member/myInformation',
            "en-MYHW": 'https://hwid1.vmall.com/CAS/portal/userCenter/index.html',
            "ru-RUHW": "",
            "cz-CZHW": "",
            "pl-PLHW": "",
            "nl-NL": "",
        },
        openapiDomain: {
            "zh-CN": "https://openapi.vmall.com",
            "en-US": "",
            "en-GB": "https://apiserver-eu.hihonor.com",
            "es-ES": "https://apiserver-eu.hihonor.com",
            "de-DE": "https://apiserver-eu.hihonor.com",
            "fr-FR": "https://apiserver-eu.hihonor.com",
            "it-IT": "https://apiserver-eu.hihonor.com",
            "en-IN": "https://apiserver-sg.hihonor.com",
            "en-MY": "https://apiserver-sg.hihonor.com",
            "en-MYHW": "https://shop-cart.huawei.com/sg/openapi",
            "ru-RUHW": "",
            "cz-CZHW": "https://shop-apiserver.huawei.com/eu",
            "pl-PLHW": "https://shop-apiserver.huawei.com/eu",
            "nl-NL": "https://apiserver-eu.hihonor.com",
        },
        amsDomain: {
            "zh-CN": 'https://act.vmall.com',
            "en-US": "https://amsfront-us.hihonor.com",
            "en-GB": "https://amsfront-it.hihonor.com",
            "es-ES": "https://amsfront-it.hihonor.com",
            "de-DE": "https://amsfront-it.hihonor.com",
            "fr-FR": "https://amsfront-it.hihonor.com",
            "it-IT": "https://amsfront-it.hihonor.com",
            "en-IN": "https://amsfront-sg.hihonor.com",
            "en-MY": 'https://amsfront-sg.hihonor.com',
            "en-MYHW": 'https://shop-ams.huawei.com/sg',
            "ru-RUHW": "",
            "cz-CZHW": "",
            "pl-PLHW": "",
            "nl-NL": "",
        },
        domainCart: {
            "zh-CN": "https://cart.vmall.com/",
            "en-US": "https://cart-us.hihonor.com/",
            "en-GB": "https://cart-gb.hihonor.com/",
            "es-ES": "https://cart-es.hihonor.com/",
            "de-DE": "https://cart-de.hihonor.com/",
            "fr-FR": "https://cart-fr.hihonor.com/",
            "it-IT": "https://cart-it.hihonor.com/",
            "en-IN": "https://cart-sg.hihonor.com/",
            "en-MY": "https://cart-sg.hihonor.com/",
            "en-MYHW": "//shop-cart.huawei.com/sg",
            "ru-RUHW": "",
            "cz-CZHW": "",
            "pl-PLHW": "",
        },
        domainYY: {
            "zh-CN": 'https://yy.vmall.com/',
            "en-US": '',
            "en-GB": '',
            "es-ES": '',
            "de-DE": '',
            "fr-FR": '',
            "it-IT": '',
            "en-IN": '//rushyy.hihonor.com/in',
            "en-MY": '',
            "en-MYHW": '',
            "ru-RUHW": "",
            "cz-CZHW": "",
            "pl-PLHW": "",
            "nl-NL": "",
        },
        loginLink: {
            "zh-CN": '',
            "en-US": '',
            "en-GB": '',
            "es-ES": '',
            "de-DE": '',
            "fr-FR": '',
            "it-IT": '',
            "en-IN": '',
            "en-MY": '',
            "en-MYHW": '',
            "ru-RUHW": "",
            "cz-CZHW": "",
            "pl-PLHW": "",
            "nl-NL": "",
        },
        registerLink: {
            "zh-CN": '',
            "en-US": '',
            "en-GB": '',
            "es-ES": '',
            "de-DE": '',
            "fr-FR": '',
            "it-IT": '',
            "en-IN": '',
            "en-MY": '',
            "en-MYHW": '',
            "ru-RUHW": "",
            "cz-CZHW": "",
            "pl-PLHW": "",
            "nl-NL": "",
        },
        timeZone: {
            "zh-CN": 8,
            "en-US": -5,
            "en-GB": 1,
            "es-ES": 2,
            "de-DE": 2,
            "fr-FR": 2,
            "it-IT": 2,
            "en-IN": 5.5,
            "en-MY": 8,
            "en-MYHW": 8,
            "ru-RUHW": 3,
            "cz-CZHW": 1,
            "pl-PLHW": 1,
            "nl-NL": 1,
        },
        facebookAppId: {
            "zh-CN": '',
            "en-US": '370515210122879',
            "en-GB": '370515210122879',
            "es-ES": '370515210122879',
            "de-DE": '370515210122879',
            "fr-FR": '370515210122879',
            "it-IT": '370515210122879',
            "en-IN": '370515210122879',
            "en-MY": '370515210122879',
            "en-MYHW": '365357210674045',
            "ru-RUHW": '',
            "cz-CZHW": '',
            "pl-PLHW": '',
            "nl-NL": "",
        }
    };
    var serviceUrl;
    if (locale == 'zh-CN') {
        serviceUrl = encodeURIComponent(config.domainMain[locale] + "/account/caslogin");
    } else {
        serviceUrl = encodeURIComponent(config.domainMain[locale] + "/account/acaslogin");
    }

    // 登录
    config.loginLink[locale] = config.domainMain[locale] + '/account/login?url=' + encodeURIComponent(window.location.href);
    // 注册
    config.registerLink[locale] = config.registerUrl[locale] + '&service=' + serviceUrl;

    for (x in config) {
        window[x] = config[x][locale];
    }

    delete window.registerUrl;
})(window);
