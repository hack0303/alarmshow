$(document).ready(function(){
$('#alarms-data').click(function(){
	var container=$('#alarms-data');
	var obj=$('#alarms-data input');
	if(obj.attr('checked')=="checked")
	{
		obj.removeAttr('checked');
		container.removeClass('bootstrap-switch-on').addClass('bootstrap-switch-off');
		
	}else if(obj.attr('checked')==undefined)
	{
		obj.attr('checked','checked');
		container.removeClass('bootstrap-switch-off').addClass('bootstrap-switch-on');
	}
});
$('#rules-data').click(function(){
	var container=$('#rules-data');
	var obj=$('#rules-data input');
	if(obj.attr('checked')=="checked")
	{
		obj.removeAttr('checked');
		container.removeClass('bootstrap-switch-on').addClass('bootstrap-switch-off');
	}else if(obj.attr('checked')==undefined)
	{
		obj.attr('checked','checked');
		container.removeClass('bootstrap-switch-off').addClass('bootstrap-switch-on');
	}
});
$('#run').click(function(){
	$('#right').load('/app/running/run');
});
$('#reset').click(function(){

	$('#right').load('/app/running/reset');
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