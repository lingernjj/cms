;(function ($) {  
  
            changePic('.first',0);  
            changePic('.second',1);  
            changePic('.third',2);  
  
            var shadeWidth = $('.shade').width(),//阴影的宽度  
                shadeHeight = $('.shade').height(),//阴影的高度  
                middleWidth = $('#container').width(),//容器的宽度  
                middleHeight = $('#container').height(),//容器的高度  
                bigImgWidth = $('.shade img').width(),//放大图片盒子的宽度  
                bigImgHeight = $('.shade img').height(),//放大图片盒子的高度  
                rateX = bigImgWidth / middleWidth,//放大区和遮罩层的宽度比例2  
                rateY = bigImgHeight / middleHeight;//放大区和遮罩层的高度比例2  
  
            //当鼠标移入与移出时阴影与放大去显现/消失  
            $('#container').hover(function() {  
                $('.shade').show();  
                $('.big').show();  
            }, function() {  
                $('.shade').hide();  
                $('.big').hide();  
            }).mousemove(function(e) {//当鼠标移动时，阴影和放大区图片进行移动  
                  
  
                //记录下光标距离页面的距离  
                var x = e.pageX,  
                    y = e.pageY;  
  
                //设置遮罩层的位置  
                $('.shade').offset({  
                    top: y-shadeHeight/2,  
                    left: x-shadeWidth/2 
                });       
  
                //获取遮罩层相对父元素的位置  
                var cur = $('.shade').position(),  
                    _top = cur.top,  
                    _left = cur.left,  
                    hdiffer = middleHeight - shadeHeight,  
                    wdiffer = middleWidth - shadeWidth;  
  
                if (_top < 0) _top = 0;  
                else if (_top > hdiffer) _top = hdiffer;  
                if (_left < 0) _left = 0;  
                else if (_left > wdiffer) _left =wdiffer;  
  
                //判断完成后设置遮罩层的范围  
                $('.shade').css({  
                    top: _top,  
                    left: _left-50  
                });  
  
                  
                //设置放大区图片移动  
                $('.shade img').css({  
                    top: - _top*rateY*3/2,  
                    left: - _left*rateX*3/2  
                });  
  
            });;  
  
            //封装的改变图片显示的函数  
            function changePic (element,index) {  
                $(element).click(function() {  
                    $('#container img').eq(index).css('display', 'block').siblings().css('display', 'none');  
                    $('.shade img').eq(index).css('display', 'block').siblings().css('display', 'none');  
                });  
            }  
 })(jQuery);  
 

//放大镜
;(function($){
	var $bigimg=$('.big  img');
	var $midimg=$('.midpic img');
	var $smallimg=$('.smallDiv img');
	$.ajax({
//		type:"get",
		url:"php/details.php",
		success:function(data){
			var arr=JSON.parse(data);
//			console.log(arr);
			
			$.each(arr, function(index,value){
				$bigimg.eq(index).attr('src',arr[index].big);
				$midimg.eq(index).attr('src',arr[index].mid);
				$smallimg.eq(index).attr('src',arr[index].small);
				
			});
		}
	});
})(jQuery);

//加入购物车按钮



(function($){
		var sidarr = [];
			var numarr = [];
			function getcookievalue(){
				if(getCookie('cartsid')){
					sidarr=getCookie('cartsid').split(',');
				}
				
				if(getCookie('cartnum')){
					numarr=getCookie('cartnum').split(',');
				}
			}
			
			$('.p-btn a').on(	'click', function() {
						var sid = $('.loadimg').attr('sid');//当前按钮对应图片的sid
						getcookievalue();//获取cookie值，放到对应的数组中
						if ($.inArray(sid, sidarr) != -1) {//存在
							var num=parseInt(numarr[$.inArray(sid,sidarr)])+parseInt($('#count').val());
							numarr[$.inArray(sid,sidarr)]=num;
							addCookie('cartnum', numarr.toString(), 7);
						}else{//不存在
									sidarr.push(sid);//将当前id添加到数组里面。
		        			addCookie('cartsid', sidarr.toString(), 7);//将整个数组添加到cookie
		        			numarr.push($('#count').val());//走这里数量都是1.
		        			addCookie('cartnum', numarr.toString(), 7);
						}
						alert('已加入购物车');
				//}
			});
			
			//改变商品数量++
$('.quantity-add').on('click', function() {
    var $count = $('#count').val();
			console.log($count);
    
    $count++;
    if ($count >= 99) {
        $count = 99;
    }
    $('#count').val($count);
    
    setcookie($(this));

});


//改变商品数量--
$('.quantity-down').on('click', function() {
    var $count = $('#count').val();
			console.log($count);
    
    $count--;
    if ($count <= 1) {
        $count = 1;
    }
    $('#count').val($count);
   
    setcookie($(this));
});

function setcookie(obj) { //obj:当前操作的对象
    cookieToArray();
    var $index = obj.parents('.right').find('img').attr('sid');
    numarr[sidarr.indexOf($index)] = obj.parents('.right').find('#count').val();
    addCookie('cartnum', numarr.toString(), 7);
}

function cookieToArray(){//取出cookie转换成数组
	if(getCookie('cartsid')){
		sidarr=getCookie('cartsid').split(',');
	}else{
		sidarr=[];
	}
	
	if(getCookie('cartnum')){
		numarr=getCookie('cartnum').split(',');
	}else{
		numarr=[];
	}
}
	
})(jQuery);

