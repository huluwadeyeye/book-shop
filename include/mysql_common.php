<?php
// 1连接数据库、
	$host ='localhost';
	$dbuser='root';
	$dbpwd='root';
	$dbname = 'yqq';
	
	$con= mysqli_connect($host,$dbuser,$dbpwd,$dbname);
	// if($con){
	// 	echo '数据库连接成功';
	// }else{
	// 	echo '数据库连接失败';
	// }

	//2设置数据库连接编码
	mysqli_query($con,'set names utf8');


?>