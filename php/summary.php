<?php
	include ("public.php");

	$action = $_GET['action'];
	switch ($action) {
		case 'toLook':
			toLook();
			# code...
			break;
		case 'toShowAll':
			toShowAll();
			break;
		

	}


	function toShowAll(){
			$sql = "select * from scoreone order by timenow DESC";
			$query = query_sql($sql);
			// var_dump($query);
			while($row = $query->fetch_assoc()){
			$data[] = $row;		//把每个结果集的一条传给$data
			// var_dump($row);
			}
			// var_dump($data);
			echo json_encode($data);
			}

	function toLook(){
			$select = $_POST['select'];
			$value = $_POST['value'];
			$sql = "select * from scoreone where {$select} = '{$value}'";
			$query = query_sql($sql);
			// // var_dump($query);
			while($row = $query->fetch_assoc()){
			$data[] = $row;		//把每个结果集的一条传给$data
			// // var_dump($row);
			}
			// var_dump($data);
			echo json_encode($data);
	
	}

?>