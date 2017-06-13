<?php
	include ("public.php");

	$action = $_GET['action'];
	switch ($action) {
		case 'init_data_list':
			init_data_list();
			# code...
			break;
		
		case 'add_row':
			add_row();
			# code...
			break;
		case 'del_row':
			del_row();
			# code...
			break;	
		case 'edit_row':
			edit_row();
			# code...
			break;	

	}

		function init_data_list(){
			$sql = "select * from classone";
			$query = query_sql($sql);
			// var_dump($query);
			while($row = $query->fetch_assoc()){
			$data[] = $row;
			// var_dump($row);
			}
			// var_dump($data);
			echo json_encode($data);
			}

		function del_row(){
				$dataid = $_POST['dataid'];
				$sql = "delete from classone where id = ".$dataid;
				if(query_sql($sql)){
					echo 1;		//代表删除成功
				}else{
					echo 2;
				}


				// echo 1;
			}


		function add_row(){
			$classname = $_POST['classname'];
			$xh = $_POST['xh'];
			$xm = $_POST['xm'];
			$gender = $_POST['gender']; 
			// echo $xh;
			$sql = "Insert into classone (classname,xh,xm,gender) 
			values('{$classname}','{$xh}','{$xm}','{$gender}')";
			// $sql = trim($sql,',');
			// echo $sql;
			if($res = query_sql($sql,"select last_insert_id() as LD")){
					// echo 1;		//代表添加成功
					$d = $res->fetch_assoc();
					echo $d['LD'];
				}else{
					echo 2;
				}
}



		function edit_row(){
			// var_dump($_POST);  可以查看所有传过来的数据
			$id = $_POST['id'];
			unset($_POST['id']);//过滤Id$
			$classname = $_POST[0];
			$xh = $_POST[1];
			$xm = $_POST[2];
			$gender = $_POST[3];
			$sql = "update classone set classname = '{$classname}', xh = '{$xh}' , xm = '{$xm}' , gender = '{$gender}' where id = '{$id}'";
			// echo $sql;
			if(query_sql($sql)){
					echo 1;		//代表删除成功
				}else{
					echo 2;
				}


		}


?>