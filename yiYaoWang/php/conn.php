<?php
	header('content-type:textml;charset=utf-8');
	$conn=@mysql_connect('localhost','root','');
	if(!$conn){
		die('数据库连接错误，请检测用户名和密码:'.mysql_error());
	}
	mysql_select_db('yiyaowang');
	mysql_query('SET NAMES UTF8');
	
?>
