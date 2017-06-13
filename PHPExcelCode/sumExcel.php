<?php 

	include_once "./PHPExcel.php";
	
		$phpexcel=array(
			'host'=>"127.0.0.1",
			"username"=>"root",
			"password"=>"",
			"database"=>"web",
			"charset"=>"utf8"
	);

		class db{
		public $conn=null;

		public function __construct($config){//构造方法 实例化类时自动调用 
					$mysqli = new Mysqli('127.0.0.1','root','','web','3306');
					if($mysqli->connect_errno){
				die("连接失败");
			}
			$mysqli->query('set names utf8');
		}


	    function getAll(){
			$sql = "select * from scoreone order by timenow DESC";
			$data = query_sql($sql);
			$res=array();
			while(($row=mysqli_fetch_assoc($data))!=false){
				$res[]=$row;
			}
			return $res;
		}

		}



	function query_sql(){
			$mysqli = new Mysqli('127.0.0.1','root','','web','3306');
			if($mysqli->connect_errno){
			die("连接失败");
			}
			$mysqli->query('set names utf8');
			$sqls = func_get_args();		//获取参数
			// $result = $mysqli->query($sqls);
			foreach($sqls as $s) {
			# code...
			$query = $mysqli->query($s);
			}
			$mysqli->close();
			return $query;
			}


	$db=new db($phpexcel);//实例化db类 连接数据库
	$objPHPExcel=new PHPExcel();//实例化PHPExcel类， 
	$objPHPExcel->createSheet();//创建新的内置表

		$objPHPExcel->setActiveSheetIndex();//把新创建的sheet设定为当前活动sheet
		$objSheet=$objPHPExcel->getActiveSheet();//获取当前活动sheet
		$data=$db->getAll();//查询每个年级的学生数据

		$objSheet->getDefaultStyle()->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER); //绝对居中


		$objPHPExcel->getDefaultStyle("A1:F1")->getFont()->setSize(10)->setName("微软雅黑"); //设置字体
		$objPHPExcel->getActiveSheet()->mergeCells('D1:F1');  //合并单元格
		$objSheet->setCellValue("A1","学号")->setCellValue("B1","姓名")->setCellValue("C1","时间")->setCellValue("D1","成绩");//填充数据
		$j=2;
		foreach($data as $key=>$val){
				$objSheet->setCellValue("A".$j,$val['xh'])->setCellValue("B".$j,$val['xm'])->setCellValue("C".$j,$val['timenow'])->setCellValue("D".$j,$val['score']);
				// $objPHPExcel->getActiveSheet()->mergeCells('D.$j.:.F.$j');
				$j++;


		}




	$objWriter=PHPExcel_IOFactory::createWriter($objPHPExcel,'Excel5');//生成excel文件
	//$objWriter->save($dir."/export_1.xls");//保存文件
	browser_export('Excel5','Web编程(1)班成绩信息表.xls');//输出到浏览器
	$objWriter->save("php://output");


	function browser_export($type,$filename){
		if($type=="Excel5"){
				header('Content-Type: application/vnd.ms-excel');//告诉浏览器将要输出excel03文件
		}else{
				header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');//告诉浏览器数据excel07文件
		}
		header('Content-Disposition: attachment;filename="'.$filename.'"');//告诉浏览器将输出文件的名称
		header('Cache-Control: max-age=0');//禁止缓存
	}

?>