function toShowAll() {
	$(function(res) {

		$.post("../php/checkVoice.php", {}, function(res) {
			data = $.parseJSON(res);
			var t = _.template($("#tpl").html());
			$("#try").append(t(data));
		});

	});

}

toShowAll();