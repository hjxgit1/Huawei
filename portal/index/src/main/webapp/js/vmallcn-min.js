(function(b,e,d,a,c){e[a]=e[a]||function(){(e[a].q=e[a].q||[]).push(arguments)};setTimeout(function(){var g=document.createElement("iframe");(g.frameElement||g).style.cssText="display:none";g.src="javascript:false";var h=0;if(document.getElementsByTagName("script").length>1){h=document.getElementsByTagName("script").length-1}var f=document.getElementsByTagName("script")[h];f.parentNode.insertBefore(g,f);var i=g.contentWindow.document;var j=window.location.protocol;i.open().write("<body onload=\"var js = document.createElement('script');js.src = '"+j+"//"+b+"?hr="+new Date().getTime()+"';document.body.appendChild(js);\">");i.close()},0)}("nebula-collector.huawei.com/api/2.0/dmpa_f-min.js",window,document,"dmpa",length));(function(b,c,a){if(typeof module!=="undefined"&&module.exports){module.exports=a()}else{if(typeof define==="function"&&define.amd){define(a)}else{c[b]=a()}}})("dmpaPlug",this,function(){return{getCookie:function(d){var e,f=new RegExp("(^| )"+d+"=([^;]*)(;|$)");if(e=document.cookie.match(f)){return unescape(e[2])}else{return"0"}}}});dmpa("setAutoSendPV",false);dmpa("set",{siteId:"vmall-cn",user_id:dmpaPlug.getCookie("uid")});dmpa("trackPageView");