$(document).ready(function(){
$('#run').click(function(){
	$('#right').load('/app/running/run');
});
$('#reset').click(function(){

	$('#right').load('/app/areas/left/items/rules');
});
$('#alarm_pre_show').click(function(){

	$('#right').load('/app/areas/left/items/alarms');
});
$('#rule_pre_show').click(function(){

	$('#right').load('/app/areas/left/items/rules');
});
$('#system_params_setting').click(function(){

	$('#right').load('/app/areas/left/root/config');
});
});