<?php
	session_start();

	error_reporting(0);
	// 判断username的session是否存在，不存在则跳转登录页面
	// 存在跳转列表
	
	if(!$_SESSION['username']){
		// echo '跳转到列表';
		echo '<script>';
		echo 'window.location.href="list.php"';
		echo '</script>';
	}


?>