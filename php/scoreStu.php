<?php
	include ("public.php");

	session_start();
	// if(isset($POST['xh'])){
	// $xhget = $POST['xh'];
	// 	}
	$action = $_GET['action'];
	switch ($action) {
		case 'toShowAll':
			toShowAll();
			break;
}


	function toShowAll(){
			if(isset($_SESSION['stuxh'])){
				$xh = $_SESSION['stuxh'];
			}else{
				return;
			}
			$sql = "select * from scoreone where xh = {$xh}";
			$query = query_sql($sql);
			// var_dump($query);
			while($row = $query->fetch_assoc()){
			$data[] = $row;		//把每个结果集的一条传给$data
			// var_dump($row);
			}
			// var_dump($data);
			if($data == null){
				return;
			}else{
			echo json_encode($data);
				}
			// echo $xh;
			}



?>