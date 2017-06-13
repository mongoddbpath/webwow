<?php

	function query_sql(){
			$mysqli = new Mysqli('127.0.0.1','root','','web','3306');
			if($mysqli->connect_errno){
			die("连接失败");
			}
			$mysqli->query('set names utf8');
			$sqls = func_get_args();		//获取参数
			foreach($sqls as $s) {
			$query = $mysqli->query($s);
			}
			$mysqli->close();
			return $query;
			}

?>