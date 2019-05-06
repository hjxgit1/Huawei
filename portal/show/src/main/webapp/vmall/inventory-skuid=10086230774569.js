<!DOCTYPE html>
<html >
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" charset="utf-8" />
	<title>错误页面</title>
	<style type="text/css">
		@media all and (min-width:721px) {
		html { font-size:auto }
		}
		@media all and (max-width:720px) {
		html { font-size:250% }
		}
		@media all and (max-width:640px) {
		html { font-size:222.222% }
		}
		@media all and (max-width:540px) {
		html { font-size:187.5% }
		}
		@media all and (max-width:480px) {
		html { font-size:166.668% }
		}
		@media all and (max-width:432px) {
		html { font-size:150% }/*p8max*/
		}
		@media all and (max-width:414px) {
		html { font-size:143.75% }/*iphone6plus*/
		}
		@media all and (max-width:400px) {
		html { font-size:138.888% }
		}
		@media all and (max-width:384px) {
		html { font-size:130.204% }/*魅族4*/
		}
		@media all and (max-width:375px) {
		html { font-size:130.204% }/*iphone6*/
		}
		@media all and (max-width:360px) {
		html { font-size:125% }
		}
		@media all and (max-width:340px) {
		html { font-size:118.056% }
		}
		@media all and (max-width:320px) {
		html { font-size:111.112% }
		}
		html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, del, dfn, em, img, ins, kbd, q, samp, small, strong, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, table, tbody, tfoot, thead, tr, th, td, article, aside, footer, header, nav, section {
		margin:0;
		padding:0;
		border:0;
		outline:0;
		}
		ol,ul {list-style: none;}
		html {
			-webkit-text-size-adjust:100%;
		    -ms-text-size-adjust:100%;
			-webkit-tap-highlight-color:rgba(35,167,217,.5);
			}
		body {
			font-family: "Helvetica Neue", Helvetica, Arial, "Microsoft Yahei", "Hiragino Sans GB", "Heiti SC", "WenQuanYi Micro Hei", sans-serif;
			word-wrap:break-word;
			line-height:1;
			min-width:320px;
			background-color:#fff;
			margin:0 auto;
			color:#333;
			}
		a{background-clip:padding-box;text-decoration: none;color:#333}
	/* layout
	-------------------------------------------------------------- */

		.layout:before,
		.layout:after {
		    content: "";
		    display: table;
			}
		.layout:after {
		    clear: both;
		}
		.layout {
		    *zoom: 1;
		    width: 1200px;
		    margin: 0 auto;
		}
		/* background
		-------------------------------------------------------------- */
		.header-toolbar .h i,
		.shortcut .s-dropdown s,
		.category .category-info i,
		.minicart .p-choose i,
		.minicart .h a i,
		.i-mall-prompt .w-info a i,
		.i-mall-event a i.icon-clock,
		.goods-rolling .grid-btn span,
		.btn-line-primary i,
		.hungBar-top i,
		.hungBar-feedback i,
		.hungBar-for-help i,
		.hungBar-olcs-web i {
		    background: transparent url(https://res8.vmallres.com/20170610/images/echannel/index/icon2.png?20170621) scroll no-repeat;
		}
		.shortcut li {
		    background: transparent url(https://res8.vmallres.com/20170610/images/echannel/bg/bg65.png?20170621) scroll no-repeat;
		}
		/* 捷径栏
		-------------------------------------------------------------- */
		.shortcut {
		    min-width: 1200px;
		    height: 31px;
		    line-height: 28px;
		    background-color: #FAFAFA;
		    border-bottom: 1px solid #EAEAEA;
		    position: relative;
		    z-index: 421;
			font-family: "Helvetica Neue", Helvetica, Arial, "Microsoft Yahei", "Hiragino Sans GB", "Heiti SC", "WenQuanYi Micro Hei", sans-serif;
		}
		.shortcut a {
		    color: #A4A4A4;
	    	font-size: 12px;
	    	line-height: 31px;
		}
		.shortcut a:hover {
		    color: #CA151D;
		    text-decoration: none;
		}
		.shortcut .layout {
		    position: relative;
		}
		.shortcut li {
		    float: left;
		    padding: 0 8px;
		}
		.shortcut .s-dropdown {
		    margin: 0 -10px;
		    position: relative;
		    display: block;
		}
		.shortcut .s-dropdown:hover,
		.shortcut .hover {
		    margin: 0 -11px;
		}
		.shortcut .s-dropdown .h {
		    position: relative;
		    padding: 0 27px 0 10px;
		    *zoom: 1;
		    *display: inline;
		    height: 29px;
		}
		.shortcut .s-dropdown:hover .h,
		.shortcut .hover .h {
		    border-left: 1px solid #EDEDED;
		    border-right: 1px solid #EDEDED;
		    background-color: #FFF;
		    -webkit-box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.05);
		    box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.05);
			}
		.shortcut .s-dropdown:hover .h:before,
		.shortcut .hover .h:before {
		    content: '';
		    position: absolute;
		    width: 100%;
		    height: 5px;
		    top: 25px;
		    left: 0;
		    right: 0;
		    background-color: #FFF;
		    z-index: 3;
			}
		.shortcut .s-dropdown:hover .h:after,
		.shortcut .hover .h:after {
		    content: '';
		    position: absolute;
		    width: 1px;
		    height: 1px;
		    top: 29px;
		    right: -1px;
		    background-color: #EDEDED;
		    z-index: 5;
			}
		.shortcut .s-dropdown .h s {
		    position: absolute;
		    right: 10px;
		    top: 50%;
		    margin-top: -2px;
		    width: 7px;
		    height: 4px;
		    line-height: 0;
		    background-position: -35px 0;
			}
		.shortcut .s-dropdown:hover .h s,
		.shortcut .hover .h s {
		    background-position: -7px 0;
			}
		.shortcut .s-dropdown .b {
		    display: none;
		    position: absolute;
		    left: 0;
		    right: 0;
		    top: 29px;
		    padding: 0 10px;
		    background-color: #FFFFFF;
		    border: 1px solid #EDEDED;
		    border-top-color: #FFFFFF;
			}
		.shortcut .s-dropdown:hover a {
		    color: #3A3A3A;
		    display: block;
			}
		.shortcut .s-dropdown:hover .b,
		.shortcut .hover .b {
		    color: #3A3A3A;
		    display: block;
		    -webkit-box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.05);
		    box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.05);
			}
		.shortcut .s-dropdown:hover a:hover {
		    color: #CA151D;
			}
		.shortcut .s-sub {
		    float: left;
			}
			.shortcut .s-sub li {
			    background-position: 0 9px;
				}
				.shortcut .s-sub li.s-hw {
				    background-image: none;
				    padding-left: 0;
					}
		.shortcut .s-main {
		    float: right;
		    *display: inline;
		    *overflow: hidden;
			}
			.shortcut .s-main li {
			    float: left;
			    background-position: 100% 9px;
				}
				.shortcut .s-main li.s-sitemap {
				    background-image: none;
					}
				.shortcut .s-main li.s-phone .b {
				    width: 210px;
				    left: auto;
				    padding: 0;
					}
				.shortcut .s-main li.s-phone .s-code {
				    border-top: 1px solid #EAEAEA;
				    padding: 14px;
					}
					.shortcut .s-main li.s-phone .s-code > div:first-child {
					    width: 76px;
					    height: 76px;
						}
					.shortcut .s-main li.s-phone .s-code:first-child {
					    border-top: 1px solid transparent;
						}
					.shortcut .s-main li.s-phone .s-code img {
					    width: 76px;
					    height: 76px;
						}
					.shortcut .s-main li.s-phone .s-code p {
					    font-size: 14px;
					    color: #3A3A3A;
					    padding-left: 10px;
					    line-height: 1.5;
						}
						.shortcut .s-main li.s-phone .s-code p span {
						    font-size: 12px;
						    color: #A4A4A4;
							}
		/* 头部
		-------------------------------------------------------------- */
		.header {
		    min-width: 1200px;
		    height: 69px;
		    background-color: #FAFAFA;
		    border-bottom: 1px solid #EAEAEA;
			}

		/* logo
		-------------------------------------------------------------- */
		.logo {
		    float: left;
		    padding-top: 43px;
		    width: 300px;
			}
		.logo-index {
		    padding-top: 0 !important;
			}
			.logo > a {
			    display: table-cell;
			    vertical-align: middle;
			    height: 70px;
			    *display: block;
			    *font-size: 50px;
			    *font-family: Arial;
				}
				.logo > a img {
				    vertical-align: middle;
					}
		.logo .back-index {
		    display: table-cell;
		    text-align: center;
		    vertical-align: middle;
		    padding-left: 12px;
			}
			.logo .back-index a {
			    display: inline-block;
			    width: 78px;
			    height: 26px;
			    border: 1px solid #ededed;
			    border-radius: 28px;
			    line-height: 26px;
			    text-align: center;
			    color: #666666;
			    font-size: 14px;
			    background: #fafafa;
			    vertical-align: middle;
				}

		/* 移动端头部css
		-------------------------------------------------------------- */
		.breadcrumb {
		    background-color: #fff;
		    position: fixed;
		    top: 0;
		    left: 0;
		    right: 0;
		    width: 100%;
		    max-width: 720px;
		    margin: 0 auto;
		    z-index: 100;
		    border-bottom: 1px solid #e5e5e5
			}

		.breadcrumb header>a {
		    width: 2.4em;
		    height: 2.4em;
		    background: transparent url(https://res8.vmallres.com/nwap/20170427/images/echannelWap/icon/icon11_1.png) scroll no-repeat 50% 50%;
		    background-size: .8em .8em;
		    display: block;
		    float: left
		}

		.breadcrumb header em {
			font-style: normal;
		    display: block;
		    width: 45%;
		    margin-left: 3.7em;
		    height: 3.43em;
		    line-height: 3.43em;
		    vertical-align: middle;
		    font-size: .7em;
		    color: #333;
		    text-overflow: ellipsis;
		    white-space: nowrap;
		    overflow: hidden
		}

		.breadcrumb header em.search-input {
		    margin: 0
		}

		/* content
		-------------------------------------------------------------- */
		.system-empty{
			padding:35.5% .8em;
			text-align:center;
			}
			#icon-empty{
				/*
				 *背景图片icon-error.png,只放在了app的CDN,供三端使用； 
				 */
				background:url(https://res.vmallres.com/mwap/20170603/images/echannelApp/icon/icon-error.png) no-repeat center;
				width:6.5em;
				height:4.5em;
				display:inline-block;
				background-size:100% auto;
				margin-bottom: .4em;
				}
			.system-empty-prompt{
				font-size: .65em;
				color: #666;
				line-height: 2;
				}
		@media all and (min-width:721px) {
		.system-empty{
			padding:13.2% .8em;
			text-align:center;
			}
			.system-empty .icon-empty{
				width:210px;
				height:155px;
				margin-bottom: 40px;
				}
			.system-empty-prompt{
				font-size: 20px;
				}
		}
	</style>
</head>
<body>
	<div id="pageWrap"></div>
	<script>
	window.onload = function(){
		var navWrap = document.getElementById("pageWrap");
		//公用错误页面DOM
		var ErrorHtml = '<section class="system-empty">' +
	    				   	'<header class="h">' + 
	    				   		'<i class="icon-empty" id="icon-empty"></i>' +
						   		'<p class="system-empty-prompt">休息一下,请稍后再试</p>' +
	    				   	'</header>' +
						'</section>';
		//wap头部DOM
		var wapNavHtml = '<article class="breadcrumb " id="breadcrumb">' +
	    					'<header>' +
	        					'<a id="btn-back" href="javascript:history.go(-1);"></a>' +
	        					'<em id="pageTitle">错误页面</em>' +
	    					'</header>' +
						 '</article> ';
		//pc错误页面DOM
		var pcNavHtml = '<div class="shortcut">' +
	    					'<div class="layout">' +
	        					'<div class="s-sub">' +
	            					'<ul>' +
	                					'<li class="s-hw"><a href="http://consumer.huawei.com/cn/" target="_blank">华为官网</a></li>' +
	                					'<li class="s-honor"><a href="http://www.honor.cn/" target="_blank">荣耀官网</a></li>' +
	                					'<li class="s-appsoft">' +
		                    				'<div class="s-dropdown">' +
		                        				'<div class="h">' +
		                            				'<a href="javascript:;" target="_blank">软件应用</a>' +
		                            				'<s></s>' +
		                        				'</div>' +
			                        			'<div class="b">' +
			                            			'<p><a href="http://emui.huawei.com/cn/" target="_blank">EMUI</a></p>' +
			                            			'<p><a href="http://appstore.huawei.com/" target="_blank">应用市场</a></p>' +
			                            			'<p><a href="http://cloud.huawei.com/cn/contact" target="_blank">云服务</a></p>' +
			                            			'<p><a href="http://developer.huawei.com/" target="_blank">开发者联盟</a></p>' +
			                        			'</div>' +
		                    				'</div>' +
		                    			'</li>' +
	                					'<li class="s-club"><a href="http://club.huawei.com/" target="_blank">花粉俱乐部</a></li>' +
	                					'<li class="s-promo"><a href="https://www.vmall.com/account/login?url=%2Fpriority" rel="nofollow">V码(优购码)</a></li>' +
	           						'</ul>' +
	        					'</div>' +
	        					'<div class="s-main">' +
	            					'<ul>' +
	                					'<li class="s-sitemap">' +
	                    					'<div class="s-dropdown ">' +
	                        					'<div class="h">' +
	                            					'<a href="javascript:;">更多精彩</a>' +
	                            					'<s></s>' +
	                        					'</div>' +
	                        					'<div class="b">' +
	                            					'<p><a href="index.html"/*tpa=https://www.vmall.com/help/index.html*/ target="_blank">帮助中心</a></p>' +
	                            					'<p><a href="http://vmall.118100.cn/" target="_blank">数字音乐</a></p>' +
	                            					'<p><a href="http://www.hwtrip.com/" target="_blank">爱旅</a></p>' +
	                            					'<p><a href="http://consumer.huawei.com/minisite/HiSuite_cn/" target="_blank">PC软件</a></p>' +
	                        					'</div>' +
	                    					'</div>' +
	                					'</li>' +
	            					'</ul>' +
	        					'</div>' +
	    					'</div>' +
						'</div>' +

						'<div class="header" >' +
	    					'<div class="layout">' +
	        					'<div class="logo logo-index">' +
	            					'<a href="index.htm"/*tpa=https://www.vmall.com/*/ target="_blank" title="Vmall.com - 华为商城">' +
	                					'<img src="https://res.vmallres.com/pimages/common/config/logo/logo20170312023120.png?20170621" alt="Vmall.com - 华为商城"/>' +
	            					'</a>' +
	        					'</div>' +
	    					'</div>' +
						'</div>';
		if( "undefined" != typeof vmallAndroid){
			//app端打开页面
			navWrap.innerHTML = ErrorHtml;
		}
		else{
			var hostString = window.location.host;
			if("https://www.vmall.com/product/m.vmall.com" == hostString){
				//wap端打开页面在
				navWrap.innerHTML = wapNavHtml + ErrorHtml;
			}
			else if("https://www.vmall.com/product/www.vmall.com" == hostString){
				//pc端打开页面
				navWrap.innerHTML = pcNavHtml + ErrorHtml;
			}
		}
	}
	</script>
</body>
</html>