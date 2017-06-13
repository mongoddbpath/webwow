$("#toLook").click(function() {
	var select = $("#select").val();
	var value = $("#Itvalue").val();
	$.post("../php/summary.php?action=toLook", {
		select: select,
		value: value
	}, function(res) {
		var data = $.parseJSON(res);
		var t = _.template($("#tpl").text());
		$("#infotable").html(t(data));
		// alert(res);

		var td = $("<td>学号</td><td>姓名</td><td>时间</td><td>成绩</td>");
		var tr = $("<tr></tr>");
		var ok = tr.append(td);
		$("#infotable").prepend(ok);
	});
});

// $(node).one('click',function(){})	表示只在第一次触发生效
$("#toShowAll").click(function() {
	$.post("../php/summary.php?action=toShowAll", {}, function(res) {
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
});


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