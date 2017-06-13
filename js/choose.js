$("#chooseto").click(function() {

	var number = $("#number").val();
	if (number > 18) {
		layer.alert('所选的人数超过了18个', {
			icon: 5
		});
	} else {

		$.post("../php/choose.php?action=choose", {
			number: number
		}, function(res) {

			var shijian = $("#time").val();
			// alert(shijian);
			var data = $.parseJSON(res);
			var t = _.template($("#tpl").text());
			$("#infotable").html(t(data));

			var Ittd = $("<th>学号</th><th>姓名</th><th>成绩</th>");
			var Ittr = $("<tr></tr>");
			var Itok = Ittr.append(Ittd);
			$("#infotable").prepend(Itok);
			// debugger;
			// $("#demo").html(shijian);

		});

	}



});

// 安全区以下
$("#okda").click(function() {

	var input_fields = $("#infotable tr").find("input");
	// alert(input_fields.length);
	var post_fields = [];
	for (var i = 0, j = input_fields.length; i < j; i++) {
		post_fields[i] = input_fields[i].value;

	}

	// alert(post_fields);
	layer.confirm('你确定要将该成绩记录保存到数据库吗?', {
		btn: ['确定', '取消'] //按钮
	}, function() {

		$.post("../php/choose.php?action=ok", {
			post_fields: post_fields
		}, function(res) {
			// alert(res);
			if (res) {
				layer.alert('学生的成绩已经成功录入数据库', {
					icon: 6
				});
			} else {
				layer.alert('成绩录入不成功', {
					icon: 5
				});
			}
		});


	}, function() {
		layer.msg('已取消');

	});

});