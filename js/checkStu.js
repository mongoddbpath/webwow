$.post("../php/checkLogin.php?action=stuxh", {}, function(res) {
	if (res == 1) {
		layer.alert('您还没有登录,请先登录', {
				title: '警告',
				closeBtn: 0,
				icon: 5,
				btn: ['知道了']
			},
			function() {
				window.location.href = "../index.html";
			});
	} else {
		return;
	}

});

$("#rand").click(function() {
	// var tocheck = 666;	//解决不能正常退出的问题
	$.post("../php/checkLogin.php?action=deleteStu", {}, function(res) {
		return;
		//退出的时候把Session删除掉


	});

});


$("#Excel").click(function() {
	var index = layer.confirm('你确定要导出该班信息Excel表格么?', {
		btn: ['确定', '取消'] //按钮
	}, function() {
		window.location.href = "../PHPExcelCode/export.php";
		layer.close(index);

	}, function() {
		layer.msg('已取消');

	});

});

//首页以及模态框姓名
(function() {
	var Getxm = (function() {
		$.get("../php/checkLogin.php?action=stuxm", {}, function(res) {

			$("#addName").text(res);
			$("#addMName").text(res);
		});

	})(); //取得SESSION的姓名

})();

//模态框的学号
(function() {
	var Getxm = (function() {
		$.get("../php/checkLogin.php?action=stuxh", {}, function(res) {

			$("#addMxh").text("学号:" + "\t" + res);
		});

	})(); //取得SESSION的姓名

})();

//模态框的性别
(function() {
	var Getxm = (function() {
		$.get("../php/checkLogin.php?action=stuge", {}, function(res) {

			$("#addMge").text("性别:" + "\t" + res);

			if (res == '男') {
				(function() {
					$("#Mimg").attr("src", "../img/nan.jpeg");
				})();
			} else if (res == '女') {
				(function() {
					$("#Mimg").attr("src", "../img/nv.jpg");
				})();
			}



		});

	})(); //取得SESSION的姓名

})();