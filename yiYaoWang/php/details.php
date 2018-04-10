<?php
	require "conn.php";
	$query='select * from details';//查询数据库下面所有的信息
	$result=mysql_query($query);//执行这个命令,返回记录集
	$arr=array();//$arr[0]:获取数组第一项     
	for($i=0;$i<mysql_num_rows($result);$i++){
		$arr[$i]=mysql_fetch_array($result,MYSQL_ASSOC);//将一个数组放到另外一个数组中，二维数组
	}
	echo json_encode($arr);//将二
?>