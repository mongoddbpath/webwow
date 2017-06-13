//让用户的成绩信息自动录入
(function() {
	$.post("../php/scoreStu.php?action=toShowAll", {}, function(res) {
		var data = $.parseJSON(res);
		var t = _.template($("#tpl").text());
		$("#infotable").html(t(data));
		// alert(res);


		//还是得拼接呀哈哈
		var td = $("<td>学号</td><td>姓名</td><td>时间</td><td>成绩</td>");
		var tr = $("<tr></tr>");
		var ok = tr.append(td);
		$("#infotable").prepend(ok);
	});
})();


$("#Excel").click(function() {
	var index = layer.confirm('你确定要导出该班成绩信息Excel表格么?', {
		btn: ['确定', '取消'] //按钮
	}, function() {
		window.location.href = "../PHPExcelCode/sumExcel.php";
		layer.close(index);

	}, function() {
		layer.msg('已取消');

	});

});