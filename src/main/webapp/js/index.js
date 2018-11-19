if ($('[data-toggle="switch"]').length) {
	$('[data-toggle="switch"]').bootstrapSwitch();
}
$(document).ready(function() {
	for (var i = 0; i < 3; i++) {
		$('#choose ul li:eq(' + i + ') div').click(function() {
			$(this).attr("checked", "");
		});
	}
});