<?php
	include ("public.php");

			function toShowAll(){
			$sql = "select * from liuyan order by timenow DESC";	
			// 使新的时间最先输出
			$query = query_sql($sql);
			// var_dump($query);
			while($row = $query->fetch_assoc()){
			$data[] = $row;		//把每个结果集的一条传给$data
			// var_dump($row);
			}
			// var_dump($data);
			echo json_encode($data);
			}

			toShowAll();




?>