<?php
	require "conn.php";
	if(isset($_POST['name']) || isset($_POST['submit'])){
		$phone=@$_POST['name'];
	}else{
		exit('非法操作');
	}
	
	$query="select * from register where phone='$phone'";
	$result=mysql_query($query);
	
	if(mysql_fetch_array($result)){//如果有值代表用户名存在。
		echo true;//有重复   1
	}else{
		echo false;//没有重复  空
	}
	
	if(isset($_POST['submit']) && $_POST['submit']=='立即注册'){
		$phone=$_POST['phone'];
		$pwd=md5($_POST['pwd']);
		$query="insert register(phone,pwd) values('$phone','$pwd')";
		mysql_query($query);
		header('location:../login.html');
	}
?>