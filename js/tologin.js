$.post("../php/checkLogin.php?action=tologin", {}, function(res) {
	if (res == 1) {
		layer.alert('检查到您已经登录,请勿重复', {
				title: '信息',
				closeBtn: 0,
				icon: 5,
				btn: ['知道了']
			},
			function() {
				window.location.href = "../tpages/index.html";
			});
	} else if (res == 2) {
		layer.alert('检查到您已经登录,请勿重复', {
				title: '信息',
				closeBtn: 0,
				icon: 5,
				btn: ['知道了']
			},
			function() {
				window.location.href = "../pages/index.html";
			});
	} else if (res == 3) {
		return;
	}

});