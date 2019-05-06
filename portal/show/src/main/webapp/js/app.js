/*
 功能说明:
 1. 点击向右(左)的图标, 平滑切换到下(上)一页
 2. 无限循环切换: 第一页的上一页为最后页, 最后一页的下一页是第一页
 3. 每隔3s自动滑动到下一页
 4. 当鼠标进入图片区域时, 自动切换停止, 当鼠标离开后,又开始自动切换
 5. 切换页面时, 下面的圆点也同步更新
 6. 点击圆点图标切换到对应的页

 bug: 快速点击下一页时, 有问题
 */
					$(function () {
  						var $container = $('#container')//大的div
  						var $prev = $('#prev')//向上翻页
  						var $next = $('#next')//向下翻页	
  						var jsq1=setInterval("fan(true)",1000);
  						$prev.click(function(){
  							fan(false)
  						});
						$next.click(function(){
  							fan(true)
  						});
  						$container.hover(function(){
  							clearInterval(jsq1)
  						},function(){
  							jsq1=setInterval("fan(true)",1000);
  						});
  						$buttons.click(function(){
							var tagerindex=$(this).index();
							if (tagerindex!=index) {
								fan(tagerindex);
							} 
  							
  						});
					});
  						var $buttons = $('#buttons>span')//圆点li
						var $list = $('#list')//图片div
  						var zpyl=600;//总偏移量
  						var time=400;//总时间
  						var jgtime=20;//间隔时间
  						var imgCount=5;
  						var index=0;
  						var pyl=0;
  						var rs=true;
					function fan(next){
						if (rs) {
							rs=false;
							if (typeof(next)=="boolean") {
								pyl=next?-zpyl:zpyl;//判断上一张还是下一张
							} else{
								pyl=-(next-index)*zpyl;
							}
						
							var $ofset = $list.position().left;//图片div的偏移
							var py=pyl/(time/jgtime);//每次移动多少
							var target=$ofset+pyl;	
							var jsq=setInterval(function(){
							$ofset+=py;
							if ($ofset==target) {
								rs=true;
								clearInterval(jsq);
								if ($ofset==0) {
									$ofset=-imgCount*600;
								}else if ($ofset==-(imgCount+1)*600) {
									$ofset=-600;
								} 								
							}
							$list.css({left:$ofset})
						},jgtime)
						updatePoints(next);
						} 	
					}
					function updatePoints(next){
						 var targetIndex = 0
   						 // 计算目标下标
    					if(typeof next==='boolean') {
      						if(next) {
      							 targetIndex = index + 1
      					  		 if(targetIndex===imgCount) {
         						 targetIndex = 0
        						}
      						} else {
       							targetIndex = index-1
        						if(targetIndex===-1) {
        						  targetIndex = imgCount-1
        						}
    					  	}
    					} else {
     							targetIndex = next
    					}
   							 // 移除当前下标元素的class
   							 $buttons[index].className = ''
 						   // 给目标下标的元素指定class
   							 $buttons[targetIndex].className = 'on'
    						//更新当前下标
   							 index = targetIndex
						}
