<?php
	include ("public.php");
	header("Content-type : text/html;charset=utf8");	

	$xh = $_POST['xh'];
	$xm = $_POST['xm'];
	$liuyan = $_POST['liuyan'];
	//获取值	
	$sql = "Insert into liuyan (xh,xm,liuyan,timenow) values ('{$xh}','{$xm}','{$liuyan}',now())";
			// $sql = trim($sql,',');
	// echo $sql;
			// echo $sql;
			if(query_sql($sql)){
				echo 1;
			}else{
				echo 2;
			}


?>