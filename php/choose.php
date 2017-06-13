<?php
	include ("public.php");
	date_default_timezone_set('Asia/Shanghai');//设置时区
	if(isset($_GET['action'])){
    $action = $_GET['action'];
    	switch ($action) {
		case 'choose':
			choose();
			break;
		case 'ok':
			ok();
			break;

	}
}	

	function choose(){
			$number = $_POST['number'];
			$sql = "select * from classone order by rand() limit {$number}";
			$query = query_sql($sql);
			// var_dump($query);
			while($row = $query->fetch_assoc()){
			$data[] = $row;		//把每个结果集的一条传给$data
			// var_dump($row);
			}
			// var_dump($data);
			echo json_encode($data);
			}

	function ok(){
			$ok = $_POST['post_fields'];
			var_dump($ok);
			$size=count($ok)/3;
			$final=array();
			for($i=0;$i<$size;$i++){
				$arr=array();
				$arr['xh']=$ok[$i*3];
				$arr['xm']=$ok[$i*3+1];
				$arr['timenow']=date('Y-m-d',time());
				$arr['score']=$ok[$i*3+2];
                $final[]=$arr;
			}
			// var_dump($final);

			$sqlfinal = "insert into scoreone(xh,xm,timenow,score) values";
			foreach($final as $k=>$val){  
							  $sqlfinal = $sqlfinal."("."'".$val['xh']."'".","."'".$val['xm']."'".","."'".$val['timenow']."'".","."'".$val['score']."'".")".",";  
} 
				$sqlfinal = trim($sqlfinal,',');
				// echo $sqlfinal;
				if(query_sql($sqlfinal)){
					echo 'ok';

				}else{
					return;
				}


			
  }



?>