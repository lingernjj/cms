//轮播
;(function(){
	//商城图片切换
	var $banner=$('#part');
	var $imgs=$('#part img');
	var $btns=$('#part .btn span');
	var $index=0;//当前移动的图片的索引
	var $pindex=0;//前一张移动的图片的索引
	//1.给$btns添加点击事件
	$btns.on('mouseover',function(ev){
		$index=$(this).index('span')-4;//获取当前点击按钮的索引。
		tabswitch(ev);
		$pindex=$index;//将当前的索引给前一个索引。
	console.log($index);
		
	});
	var timer=null;
	timer=setInterval(function(){
		$index++;
		if($index>5){
			$pindex=5;
			$index=0;
		}
		tabswitch();
		$pindex=$index;
	},3000);
	$banner.hover(function(){
		clearInterval(timer);
	},function(){
		timer=setInterval(function(){
		$index++;
		if($index>5){
			$pindex=5;
			$index=0;
		}
		tabswitch();
		$pindex=$index;
		},3000);
	})
	//切换过程
	function tabswitch(ev){
		$btns.eq($index).addClass('hover').siblings('span').removeClass('hover');
		if($pindex==4 && $index==0){
			if($(this).nodeName=='SPAN'){
				$imgs.eq($pindex).animate({//和第四个条件冲突
					left:990
				},10);
				$imgs.eq($index).css('left','-990px').animate({
					left:0
				},10);
			}else{
				$imgs.eq($pindex).animate({//和第四个条件冲突
					left:-990
				},10);
				$imgs.eq($index).css('left','990px').animate({
					left:0
				},10);
			}
		}else if($pindex==0&&$index==4){//和第三个条件冲突
			if(ev.target.nodeName=='SPAN'){
				$imgs.eq($pindex).animate({
					left:-990
				},10);
				$imgs.eq($index).css('left','990px').animate({
					left:0
				},10);
			}else{
				$imgs.eq($pindex).animate({
					left:990
				},10);
				$imgs.eq($index).css('left','-990px').animate({
					left:0
				},10);
			}
			
		}else if($index>$pindex){//图片向左移动
			$imgs.eq($pindex).animate({
				left:-990
			},10);
			$imgs.eq($index).css('left','990px').animate({
				left:0
			},10);
		}else if($pindex>$index){//向右
			$imgs.eq($pindex).animate({
				left:990
			},10);
			$imgs.eq($index).css('left','-990px').animate({
				left:0
			},10);
		}
	}
})(); 


//楼梯中小轮播图切换
;(function(){
	//商城图片切换
	var $banner=$('.main #part');
	var $imgs=$('.main #part img');
	var $btns=$('.main #part .btn span');
	var $index=0;//当前移动的图片的索引
	var $pindex=0;//前一张移动的图片的索引
	//1.给$btns添加点击事件
	$btns.on('mouseover',function(ev){
		$index=$(this).index('span');//获取当前点击按钮的索引。
		tabswitch(ev);
		$pindex=$index;//将当前的索引给前一个索引。
	});
	var timer=null;
	timer=setInterval(function(){
		$index++;
		if($index>2){
			$pindex=2;
			$index=0;
		}
		tabswitch();
		$pindex=$index;
	},2000);
	$banner.hover(function(){
		clearInterval(timer);
	},function(){
		timer=setInterval(function(){
		$index++;
		if($index>2){
			$pindex=2;
			$index=0;
		}
		tabswitch();
		$pindex=$index;
		},2000);
	})
	//切换过程
	function tabswitch(ev){
		$btns.eq($index).addClass('hover').siblings('span').removeClass('hover');
		if($pindex==1 && $index==0){
			if(ev.target.nodeName=='SPAN'){
				$imgs.eq($pindex).animate({//和第四个条件冲突
					left:990
				},10);
				$imgs.eq($index).css('left','-990px').animate({
					left:0
				},10);
			}else{
				$imgs.eq($pindex).animate({//和第四个条件冲突
					left:-990
				},10);
				$imgs.eq($index).css('left','990px').animate({
					left:0
				},10);
			}
		}else if($pindex==0&&$index==1){//和第三个条件冲突
			if($(this).nodeName=='SPAN'){
				$imgs.eq($pindex).animate({
					left:-990
				},10);
				$imgs.eq($index).css('left','990px').animate({
					left:0
				},10);
			}else{
				$imgs.eq($pindex).animate({
					left:990
				},10);
				$imgs.eq($index).css('left','-990px').animate({
					left:0
				},10);
			}
			
		}else if($index>$pindex){//图片向左移动
			$imgs.eq($pindex).animate({
				left:-990
			},10);
			$imgs.eq($index).css('left','990px').animate({
				left:0
			},10);
		}else if($pindex>$index){//向右
			$imgs.eq($pindex).animate({
				left:990
			},10);
			$imgs.eq($index).css('left','-990px').animate({
				left:0
			},10);
		}
	}
})(); 




//获取banner轮播图的地址

;(function($){
	var $imgs=$(' #part .scroll img');
	$.ajax({
//		type:"get",
		url:"php/lunbo.php",
		success:function(data){
			var arr=JSON.parse(data);
			$.each(arr, function(index,value){
				$imgs.eq(index).attr('src',arr[index].src);
			});
		}
	});
})(jQuery);


//获取楼梯中的小轮播图的地址

;(function($){
	var $imgs=$('.index_floor .scroll img');
	$.ajax({
//		type:"get",
		url:"php/xlunbo.php",
		success:function(data){
			var arr=JSON.parse(data);
			$.each(arr, function(index,value){
				$imgs.eq(index).attr('src',arr[index].src);
			});
		}
	});
})(jQuery);


//获取楼梯中的广告地址
;(function($){
	var $imgs=$('.sale_ads  img');
	$.ajax({
//		type:"get",
		url:"php/ad.php",
		success:function(data){
			var arr=JSON.parse(data);
			$.each(arr, function(index,value){
				$imgs.eq(index).attr('src',arr[index].src);
			});
		}
	});
})(jQuery);

//获取每个楼梯下方的列表信息
;(function($){
	var $imgs=$('.sp_show  img');
	var $titles=$('.sp_show .tit');
	var $prices=$('.sp_show p em');
	$.ajax({
//		type:"get",
		url:"php/listpic.php",
		success:function(data){
			var arr=JSON.parse(data);
			$.each(arr, function(index,value){
				$imgs.eq(index).attr('src',arr[index].src);
				$titles.eq(index).html(arr[index].title);
				$prices.eq(index).html(arr[index].price);
			});
		}
	});
})(jQuery);

//二级菜单
;(function($){
	$lis=$('.all_nav .all_title');
	$.each($lis, function(index,value){
			$lis.eq(index).addClass('all_title_hover');
			$lis.eq(index).hover(function(){
				$(this).find('a').css({"background-color":"#fff"});
				$(this).find('a').css({"color":"#314349"});
				$(this).find('i').css({"color":"#314349"});
				$(this).find("#category10").css({'display':'block'});
				$(this).stop(true,true).animate({"padding-left":"5px"},100);
			},function(){
				$(this).find('a').css({"background-color":"#314349"});
				$(this).find('a').css({"color":"#fff"});
				$(this).find('i').css({"color":"#fff"});
				$(this).find("#category10").css({'display':'none'});
				$(this).stop(true,true).animate({"padding-left":"0px"},100);
			});
	});
	
})(jQuery);


//左侧楼梯效果
;(function($){
	//划过左侧浮动楼梯数字和中文切换
	$lis=$('.elevator_n li');
	$lis.each(function(index,element){
		$lis.eq(index).hover(function(){
			$lis.eq(index).find('.f').css({'display':'none'});
			$lis.eq(index).find('.etitle').css({'display':'block','background-color':'blue'});
		},function(){
			$lis.eq(index).find('.etitle').css({'display':'none'});
			$lis.eq(index).find('.f').css({'display':'block'});
			
		});
	})
	
    	//1.当滚动条的距离>=900px时，显示左侧的楼梯布局
    	$(window).on('scroll',function(){
    		var $scrolltop=$(window).scrollTop();//获取滚动条的距离
    		if($scrolltop>=830){
    			$('.elevator_n').show();
    		}else{
    			$('.elevator_n').hide();
    		}
    		//4.拖动滚动条，对应的楼梯根据模块的位置添加类。
    		$('.index_floor').each(function(index,element){
    			var $tops=$('.index_floor').eq(index).offset().top;
					var $color=['#92c4ff','#ffa27a','#ff6b6b','#f6c89e','#aee177','#ffacd0','#cac3f2','#fcb0c0','#cac3f2','#16f0cf'];
    			
    			if($tops>$scrolltop){//每一个盒子的top和滚动条的距离比较
    			 $(this).find('.floor_name').css({"background":$color[index],'color':'#fff'})
    				$('.elevator_n li').removeClass('active');//去掉所有楼梯的类
    				$('.elevator_n li').eq(index).addClass('active');//给当前的楼梯添加类。
    				return false;//scroll连续触发的，只要第一个满足条件，终止遍历
    			}
    			else{
    			 $('.index_floor').find('.floor_name').css({
    			 	"background":'#F8F8F8',
    			 	'color':$color[index]
    			 });
    				
    			}
    		});
    	});
    	
    	


//2.点击左侧的楼梯对应的栏目(去掉顶部)，右边对应的模块移动对应的位置。
    	$('.elevator_n li').on('click',function(){
    		$(window).off('scroll');
    		//给当前的楼梯添加类，其它的兄弟节点清除类。
    		$('.elevator_n li').removeClass('active');
    		$(this).addClass('active').siblings().removeClass('active');
    		//获取每一个右边对应模块的top值

    		$('.floor_name').addClass('cur').siblings().removeClass('cur');
    		$color=$('.in_floor_l ').find('.cur').css('color');
    		$('.in_floor_l ').find('.cur').css({"background":$color});
    		var $tops=$('.index_floor').eq($(this).index()).offset().top;
    		
    		$('html,body').animate({//document.documentElement.scrollTop||document.body.scrollTop
    			scrollTop:$tops//每一个模块对应的top值滚动条的top值。
    		});
    	});
})(jQuery);

//footer1的tab切换
;(function($){//brand  tab1_div  friendy  tab2_div
	$('.footer1 .brand').hover(function(){
    		$('.footer1 .tab1_div').css({
    			'display':'block',
    		});
    		$('.footer1 .tab2_div').css({
    			'display':'none',
    		});
    		$('.footer1 .brand').css({
			'background':'#fff',
			'borderBottom':'none',
			
			});
			$('.footer1 .friendy').css({
				'background':'#F8F8F8',
				'borderBottomColor':'#E6E6E6',
			});
		
	},function(){
    		
		
	})
	$('.footer1 .friendy').hover(function(){
		$('.footer1 .tab1_div').css({
    			'display':'none',
    	});
    	$('.footer1 .tab2_div').css({
    			'display':'block',
    	});
		$('.footer1 .friendy').css({
			'background':'#fff',
			'borderBottom':'none',
			
			});
    		
		$('.footer1 .brand').css({
			'background':'#F8F8F8',
			'borderBottom':'1px solid #E6E6E6',
			
		});
		
	},function(){
    		
		
	})
})(jQuery);

//登录 显示欢迎
function addCookie(key,value,day){
				var date=new Date();//创建日期对象
				date.setDate(date.getDate()+day);//过期时间：获取当前的日期+天数，设置给date
				document.cookie=key+'='+encodeURI(value)+';expires='+date;//添加cookie，设置过期时间
			}
			function getCookie(key){
				var str=decodeURI(document.cookie);
				var arr=str.split('; ');
				for(var i=0;i<arr.length;i++){
					var arr1=arr[i].split('=');
	 				if(arr1[0]==key){
						return arr1[1];
					}
				}
			}
			function delCookie(key,value){
				addCookie(key,value,-1);//添加的函数,将时间设置为过去时间
			}
			$(function(){
				if(getCookie('UserName')){
					$('.login1').hide();
					$('.admin').show().find('span').html('你好,'+getCookie('UserName'));
				}
				$('.admin a').on('click',function(){
					delCookie('UserName','',-1);
					$('.admin').hide();
					$('.login1').show();
				});
			});