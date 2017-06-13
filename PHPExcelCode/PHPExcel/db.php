<?php 
	require dirname(__FILE__)."/dbconfig.php";//引入配置文件

	class db{
		public $conn=null;

		public function __construct($config){//构造方法 实例化类时自动调用 
					$mysqli = new Mysqli('127.0.0.1','andy','','test','3306');
					if($mysqli->connect_errno){
				die("连接失败");
			}
			$mysqli->query('set names utf8');
		}
	}
		/**
		**根据传入sql语句 查询mysql结果集
		**/
		// public function getResult($sql){
		// 	$resource=mysqli_query($sql,$this->conn) or die('Error');//查询sql语句
		// 	$res=array();
		// 	while(($row=mysqli_fetch_assoc($resource))!=false){
		// 		$res[]=$row;
		// 	}
		// 	return $res;
		// }

		/**
		** 查询所有的年级
		**/
		 function getAllGrade(){
			$sql="select * from classone";
			$resource=mysqli_query($sql,$this->conn) or die('Error');//查询sql语句
			$res=array();
			while(($row=mysqli_fetch_assoc($resource))!=false){
				$res[]=$row;
			}
			return $res;
			




			return $res;
		}


?>