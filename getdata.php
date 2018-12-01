<?php
	include './include/mysql_common.php';

	$sql="SELECT  id,bookname,author,public,price,photo FROM book ORDER BY id DESC";

	$re = mysqli_query($con,$sql);

	while($res = mysqli_fetch_array($re)){
		echo '
				<li data-id='.$res['id'].'> 
						<a href="detail.html?id='.$res['id'].'">
							<img class="detailImg" src="'.$res['photo'].'" alt=""/>
						</a>
						<div class="detail">
							<p>名称：'.$res['bookname'].'</p>
							<p>作者：'.$res['author'].'</p>
							<p>出版社：'.$res['public'].'</p>
							<p class="lastp"> <span>价格：￥
							'.$res['price'].'</span>
								<a href="javescript:void(0)" data-id='.$res['id'].' class="cart">加入购物车</a>
							</p>
						</div>

					</li>


		';
	}
?>