<?php 

	 include_once "./PHPExcel.php"

	 $phpexcel=array(
			'host'=>"127.0.0.1",
			"username"=>"andy",
			"password"=>"",
			"database"=>"test",
			"charset"=>"utf8"
	);
	
	$mysqli = new Mysqli('127.0.0.1','andy','','test','3306');
					if($mysqli->connect_errno){
				die("连接失败");
			}
			$mysqli->query('set names utf8');


	function getAllGrade(){
			$sql="select * from classone";
			$resource=mysqli_query($sql,$this->conn) or die('Error');//查询sql语句
			$res=array();
			while(($row=mysqli_fetch_assoc($resource))!=false){
				$res[]=$row;
			}
			return $res;
	}

	class db{
		public $conn=null;

		public function __construct($config){//构造方法 实例化类时自动调用 
				$this->conn=mysqli_connect($config['host'],$config['username'],$config['password']) or die(mysqli_error());//连接数据库
				mysqli_select_db($config['database'],$this->conn) or die(mysqli_error());//选择数据库
				mysqli_query("set names ".$config['charset']) or die(mysqli_error());//设定mysql编码
		}
	}


	// require "./db.php";
	$db=new db($phpexcel);//实例化db类 连接数据库
	$objPHPExcel=new PHPExcel();//实例化PHPExcel类， 
	$objPHPExcel->createSheet();//创建新的内置表

		$objPHPExcel->setActiveSheetIndex();//把新创建的sheet设定为当前活动sheet
		$objSheet=$objPHPExcel->getActiveSheet();//获取当前活动sheet
		$data=$db->getAllGrade();//查询每个年级的学生数据
		$objSheet->setCellValue("A1","学号")->setCellValue("B1","姓名")->setCellValue("C1","性别")->setCellValue("D1","班级");//填充数据
		$j=2;
		foreach($data as $key=>$val){
				$objSheet->setCellValue("A".$j,$val['xh'])->setCellValue("B".$j,$val['xm'])->setCellValue("C".$j,$val['gender'])->setCellValue("D".$j,$val['classname']);
				$j++;
		}

	$objWriter=PHPExcel_IOFactory::createWriter($objPHPExcel,'Excel5');//生成excel文件
	//$objWriter->save($dir."/export_1.xls");//保存文件
	browser_export('Excel5','browser_excel03.xls');//输出到浏览器
	// $objWriter->save("php://output");


	// function browser_export($type,$filename){
	// 	if($type=="Excel5"){
	// 			header('Content-Type: application/vnd.ms-excel');//告诉浏览器将要输出excel03文件
	// 	}else{
	// 			header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');//告诉浏览器数据excel07文件
	// 	}
	// 	header('Content-Disposition: attachment;filename="'.$filename.'"');//告诉浏览器将输出文件的名称
	// 	header('Cache-Control: max-age=0');//禁止缓存
	// }

?>