	$(function(){
				var usereg=/^[1][1|3|4|5|6|7|8]\d{9}$/;
				var bstop=true;//不通过
				$('#phone').on('blur',function(){
					var phone=$(this).val();
					if(phone!=''){
						if(usereg.test(phone)){
							$.ajax({
								type:'post',
								url:'php/register.php',
								data:{
									name:phone
								},
								success:function(data){
									if(!data){
										$('#phone').next('i').css('color','green').html('手机号码格式符合要求');
										bstop=false;
									}else{
										$('#phone').next('i').css('color','red').html('该用户名已经存在');
										bstop=true;
									}
								}
							})
						}else{
							$(this).next('i').css('color','red').html('手机号码格式不正确，请重新输入');
							bstop=true;
						}
					}else{
						$(this).next('i').css('color','red').html('用户名不能为空');
						bstop=true;
					}
				});
				
				//密码
				var $password=$('.pwddiv #pwd').val();
				var $repassword=$('.repwddiv #repwd').val();
				
				$('#pwd').focus(function(){
					if($password==''){
						$('.pwddiv .i_true').html('6-20位字符，建议字母数字，两种组合符号以上').css({'color':'#a5a5a5'});
					}
				});
				var bstop1=true;//不通过
				$('#pwd').on('input',function(){
						var reg1=/\d+/g;//数字
						var reg2=/[a-zA-Z]+/g;//字母
						var reg3=/[^a-zA-Z0-9]+/g;//特殊符号
						var num=0;
						$password=$('.pwddiv #pwd').val();
						$('.pwddiv .i_true').hide();
						$('.safe').show();
						$('.pwddiv .i_empty').hide();
						$('.repwddiv .i_empty').hide();
						
						$('.repwddiv .i_true').hide();
						if(reg1.test($password)){
							num++;
						}if(reg2.test($password)){
							num++;
						}if(reg3.test($password)){
							num++;
						}
					if($password.length>=6&&$password.length<=20){
						switch(num){
							case 1:
								$('.safe em').css({"background":'#cccccc','color':'#fff'});
								$('.di').css({
									'background':'#e60012',
									'color':'#fff'
								});
								 bstop1=true;
								
								break;
							case 2:
								$('.safe em').css({"background":'#cccccc','color':'#fff'});
								$('.zhong').css({
									'background':'#e60012',
									'color':'#fff'
								});
								 bstop1=false;
								
								break;
							case 3:
								$('.safe em').css({"background":'#cccccc','color':'#fff'});
								$('.gao').css({
									'background':'#e60012',
									'color':'#fff'
								});
								 bstop1=false;
								break;
						}
					}
					else{
						bstop1=true;
					}
				});
			var bstop2=true;	
			$('#pwd').blur(function(){
					var reg1=/\d+/g;//数字
						var reg2=/[a-zA-Z]+/g;//字母
						var reg3=/[^a-zA-Z0-9]+/g;//特殊符号
						var num=0;
						$password=$('.pwddiv #pwd').val();
						$('.safe').hide();
						if(reg1.test($password)){
							num++;
						}if(reg2.test($password)){
							num++;
						}if(reg3.test($password)){
							num++;
						}
					if($password.length<6){
						$('.pwddiv .i_true').show();
						$('.pwddiv .i_true').html('密码必须为6-20位字符').css({'color':'red'});
						bstop2=true;
					}
					if($password.length>=6&&$password.length<=20){
						switch(num){
							case 1:
								$('.pwddiv .i_true').show();
								$('.pwddiv .i_true').html('密码不能全为数字').css({'color':'red'});
								bstop2=true;
								break;
							case 2:
									$('.pwddiv .i_true').hide();
									$('.pwddiv .i_empty').show();
									 bstop2=false;
									break;
							case 3:
									$('.pwddiv .i_true').hide();
									$('.pwddiv .i_empty').show();
									 bstop2=false;
									break;
						}
					}
					
				});
				var bstop3=true;
				$('.repwddiv #repwd').blur(function(){
					$repassword=$('.repwddiv #repwd').val();
					if($password!=$repassword){
						$('.repwddiv .i_true').show();
						$('.repwddiv .i_true').html('两次密码不一致').css({'color':'red'});
						 bstop3=true;
					}
					else{
						console.log($password);
						console.log($repassword);
						$('.repwddiv .i_true').hide();
						$('.repwddiv .i_empty').show();
						 bstop3=false;
					}
				});
				$('form').on('submit',function(){
					console.log(bstop);
				console.log(bstop1);
				console.log(bstop2);
				console.log(bstop3);
					if(bstop || bstop1 || bstop2 || bstop3){
						return false;//阻止按钮跳转。
					}
				});
			});

