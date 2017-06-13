$.ajaxSetup({
	async: false
});
//强制把异步变成同步

$("#send").click(function() {
	// var xh = $("#xh").val();
	// var xm = $("#yourname").val();
	var liuyanto = $("#liuyan").val();
	var liuyan = $.trim(liuyanto);
	//消除空格
	var Getxh = (function() {
		$.post("../php/checkLogin.php?action=stuxh", {}, function(res) {
			// async:false;
			xhget = res;
		});
		return xhget;
	})(); //取得SESSION的学号

	var Getxm = (function() {
		$.post("../php/checkLogin.php?action=stuxm", {}, function(res) {
			xmget = res;
		});
		return xmget;
	})(); //取得SESSION的姓名


	if (liuyan == "") {
		layer.alert('请检查您的输入', {
			icon: 5
		});
	} else {

		// 获取
		// 发送Ajax请求 
		$.post("../php/liuyan.php", {
			xh: Getxh,
			xm: Getxm,
			liuyan: liuyan
		}, function(res) {
			switch (parseInt(res)) {
				//留个心眼,res有可能是string
				case 1: //普通用户  
					layer.alert('悄悄话发送成功', {
						icon: 6
					});
					break;
				case 2: //管理员用户  
					layer.alert('抱歉，悄悄话未发送成功', {
						icon: 5
					});
					break;
			}

		});

	}

	//把学号传到该去的地方
	(function() {
		$.post("../php/scoreStu.php", {
			xh: Getxh,
			xm: Getxm
		}, function(res) {
			return;
		});


	})();

});