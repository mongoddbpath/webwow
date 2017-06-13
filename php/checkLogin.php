<?php
	session_start();
		$action = $_GET['action'];	//为什么用post不行，而且get 与 post接口不对接也OK
		switch ($action) {
		case 'stuxh':
			stuxh();
			break;
		
		case 'stuxm':
			stuxm();
			break;

		case 'texh':
			texh();
			break;

		case 'tologin':
			tologin();
			break;

		case 'delete':
			delete();
			break;

		case 'deleteStu':
			deleteStu();
			break;

		case 'checkL':
			checkL();
			break;

		case 'stuge':
			stuge();
			break;

	}

	//检查学生登录
	function stuxh(){
		if(isset($_SESSION['stuxh'])){
		echo $_SESSION['stuxh'];
	}else{
		echo 1;
	}
}

	function stuxm(){
		if(isset($_SESSION['stuxm'])){
		echo $_SESSION['stuxm'];
	}else{
		echo 1;
	}
}

	function stuge(){
		if(isset($_SESSION['stuge'])){
		echo $_SESSION['stuge'];
	}else{
		echo 1;
	}
}



	//检查老师登录
	function texh(){
		if(isset($_SESSION['xh'])){
		echo $_SESSION['xh'];
	}else{
		echo 1;
	}
}
	

	//防止重复登录
	function tologin(){
		// if(isset($_POST['tocheck'])){
		// 	$_POST['tocheck'] = $_POST['tocheck'];
		// 	echo $_POST['tocheck'];
		// }else{			
		// 	return;
		// }		//预计时间线不同

		if(isset($_SESSION['xh'])){
		echo 1;			//表示ok,有这个Session,登录老师页面检测
	}else if(isset($_SESSION['stuxh'])){
		echo 2;			//登录学生界面检测
	}else{
		echo 3;
	}
}

	function delete(){
		//退出登录删除SESSION
		if(isset($_SESSION['xh'])){
			unset($_SESSION['xh']);
		}
	}

	function deleteStu(){
		if(isset($_SESSION['stuxh'])){
			unset($_SESSION['stuxh']);
		}
	}


?>