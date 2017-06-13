// alert('das');
$(function() {

	var g_table = $("#data");
	var phpurl01 = "../php/app.php?action=init_data_list";
	$.get(phpurl01, function(data) {
		// alert(data);
		// debugger;
		var row_items = $.parseJSON(data);
		for (var i = 0, j = row_items.length; i < j; i++) {
			var data_dom = create_row(row_items[i]);
			g_table.append(data_dom);
		}

	});

	//删除事件
	function delData() {
		var data_id = $(this).attr("dataid");
		var meButton = $(this);



		layer.confirm('你确定要删除该学生信息么?', {
			btn: ['确定', '取消'] //按钮
		}, function() {

			$.post("../php/app.php?action=del_row", {
				dataid: data_id
			}, function(res) {
				// alert(res);
				if (res == 1) {
					$(meButton).parent().parent().remove();
					layer.alert('该学生信息已经成功从数据库移除', {
						icon: 6
					});
				} else {
					layer.alert('数据删除失败...', {
						icon: 5
					});
				}
			});

		}, function() {
			layer.msg('已取消');

		});


	}



	function editData() {
		// alert('编辑状态');
		var data_id = $(this).attr("dataid");
		var meButton = $(this);
		//meRow是没有事件的
		var meRow = $(this).parent().parent();

		var editRow = $("<tr></tr>");
		for (var i = 0; i < 4; i++) {
			var editTd = $("<td><input type='text' class='txtField form-control'</td>");
			var v = meRow.find('td:eq(' + i + ')').html();
			editTd.find('input').val(v);
			editRow.append(editTd);
		}
		var opt_td = $('<td></td>');
		var saveButton = $('<a class="optLink glyphicon glyphicon-ok" href="javascript:; ">保存</a>nbsp;nbsp;');
		var cancelButton = $('<a class="optLink glyphicon glyphicon-remove" href="javascript:; ">取消</a>nbsp;nbsp;');

		opt_td.append(saveButton);
		opt_td.append(cancelButton);
		editRow.append(opt_td);
		meRow.replaceWith(editRow);
		// 编辑状态就绪

		// 取消编辑事件
		cancelButton.click(function() {
			var currentRow = $(this).parent().parent();
			meRow.find('a:eq(0)').click(delData);
			meRow.find('a:eq(1)').click(editData);
			currentRow.replaceWith(meRow);

		});

		saveButton.click(function() {
			var currentRow = $(this).parent().parent();
			var input_fields = currentRow.find("input");
			var post_fields = {};
			for (var i = 0, j = input_fields.length; i < j; i++) {
				post_fields[i] = input_fields[i].value;
			}
			post_fields['id'] = data_id; //如果不告诉服务器ID，那么就不知道处理的是哪个数据
			$.post('../php/app.php?action=edit_row', post_fields, function(res) {
				// alert(res);
				if (res == 1) {
					// alert('数据修改成功');
					var newUpdateRow = create_row(post_fields);
					currentRow.replaceWith(newUpdateRow);
					layer.alert('该学生信息已经成功更新到数据库', {
						icon: 6
					});
				} else if (res == 2) {
					layer.alert('数据更新失败，请重试', {
						icon: 5
					});
				}



			});
		});

	}

	// alert('das');
	function create_row(data_item) {
		// return $("<tr><td colspan='4'><h1>hello</h1></td><tr>");
		var row_obj = $("<tr></tr>");
		for (var k in data_item) {
			if ("id" != k) {
				var col_td = $("<td></td>");
				col_td.html(data_item[k]);
				row_obj.append(col_td);
			}
		}
		//删除事件
		var delButton = $('<a class="optLink glyphicon glyphicon-remove" href="javascript:; ">删除</a>nbsp;nbsp;');
		delButton.attr("dataid", data_item['id']);
		delButton.click(delData);

		//编辑事件
		var editButton = $('<a class="optLink glyphicon glyphicon-pencil" href="javascript:;">编辑</a>');
		editButton.attr("dataid", data_item['id']);
		editButton.click(editData);



		var opt_td = $('<td></td>');
		opt_td.append(delButton);
		opt_td.append(editButton);
		row_obj.append(opt_td);
		return row_obj;
	}

	$("#addButton").click(function() {
		//添加框大拼接
		var addRow = $("<tr></tr>");
		var col_td1 = $("<td><select id='td1' class='txtField form-control'><option value='14级网络工程1班'>14级网络工程1班</option><option value='14级网络工程2班'>14级网络工程2班</option></select></td>");
		var col_td2 = $("<td><input id='td2' type='text' placeholder='请输入10位数字的学号' class='txtField form-control' autofocus='on' pattern='^\d{10}$'/></td>");
		var col_td3 = $("<td><input id='td3' type='text' placeholder='请输入姓名' class='txtField form-control'/></td>");
		var col_td4 = $("<td><select id='td4' class='txtField form-control'><option value='男'>男</option><option value='女'>女</option></select></td>");
		addRow.append(col_td1);
		addRow.append(col_td2);
		addRow.append(col_td3);
		addRow.append(col_td4);

		var col_opt = $("<td></td>");
		var confirmBtn = $('<a class="optLink glyphicon glyphicon-ok" href="javascript:; ">保存</a>nbsp;nbsp;');
		//保存按钮事件
		confirmBtn.click(function() {
			var td1 = $("#td1").val();
			// alert(td1);
			var td2 = $("#td2").val();
			var td3 = $("#td3").val();
			var td4 = $("#td4").val();
			// alert(td1 + td2 + td3 + td4);
			if (td2 == "" || td3 == "") {
				layer.alert('学号或姓名不能为空', {
					icon: 5
				});
				addRow.remove();
			} else if (Ishan(td3) == false) {
				layer.alert('您填的姓名不是汉字', {
					icon: 5
				});
				addRow.remove();
			} else if (IsNum(td2) == false) {
				layer.alert('您填的学号不是数字', {
					icon: 5
				});
				addRow.remove();
			} else if (IsZNum(td2) == false) {
				layer.alert('您填的学号不是10位正整数', {
					icon: 5
				});
				addRow.remove();
			} else {

				//数据发送
				$.post("../php/app.php?action=add_row", {
						classname: td1,
						xh: td2,
						xm: td3,
						gender: td4
					},
					function(res) {
						if (res > 0) {
							var addArray = {
								td1,
								td2,
								td3,
								td4
							};
							addArray['id'] = res;
							var postAddRow = create_row(addArray);
							g_table.append(postAddRow);
							layer.alert('该学生信息已经成功保存到数据库', {
								icon: 6
							});
							addRow.remove();

						} else {
							layer.alert('数据添加失败', {
								icon: 5
							});
						}

					});
			} //判断是否为空


		});


		var cancelBtn = $('<a class="optLink glyphicon glyphicon-remove" href="javascript:; ">取消</a>nbsp;nbsp;');
		// 取消按钮事件
		cancelBtn.click(function() {
			$(this).parent().parent().remove();
		});



		col_opt.append(confirmBtn);
		col_opt.append(cancelBtn);
		addRow.append(col_opt);


		g_table.prepend(addRow);
	});


});


//正则表达式
//检验是否匹配10个数字
function IsZNum(s) {
	if (s != null) {
		var r, re;
		re = /\d{10}/i;
		r = s.match(re);
		return (r == s) ? true : false;
	}
	return false;
}

//检验是否匹配数字
function IsNum(s) {
	if (s != null && s != "") {
		return !isNaN(s);
	}
	return false;
}

//检验是否是汉字
function Ishan(s) {
	if (s != null) {
		var r, re;
		re = /^[\u4e00-\u9fa5]{0,}$/; //\d表示数字,*表示匹配多个数字
		r = s.match(re);
		return (r == s) ? true : false;
	}
	return false;
}