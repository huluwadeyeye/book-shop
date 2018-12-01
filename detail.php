<?php
	$id=$_GET['id'];


	include 'include/mysql_common.php';

	$sql = "SELECT * FROM book WHERE id='$id'";

	$re = mysqli_query($con,$sql);

	$res=mysqli_fetch_array($re,MYSQL_ASSOC);//舍去数字下标

	// 根据id返回数据
	echo json_encode($res);//将数组下标转换成 json对象键名

?>