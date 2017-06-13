$.post("../php/checkLogin.php?action=texh", {}, function(res) {
	if (res == 1) {
		//表示未登录,老师登录检测
		// layer.msg('您还没有登录,5秒后退回登录页面', {icon: 16,shade: 0.01},function() { setTimeOut(window.location.href = "../index.html",5000) });
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
	$.post("../php/checkLogin.php?action=delete", {}, function(res) {
		return;
		//退出的时候把Session删除掉


	});

});