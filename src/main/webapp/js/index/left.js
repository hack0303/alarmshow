//alert('??');
$(document).ready(function(){
	//规则相关
$('#left #nav #rules_rel #_opt_title').click(function(){
	$('#right').load('/app/areas/left/items/rules');
});
//告警相关
$('#left #nav #alarms_rel #_opt_title').click(function(){
	$('#right').load('/app/areas/left/items/alarms');
});
//电路相关
$('#left #nav #elecs_rel #_opt_title').click(function(){
	$('#right').load('/app/areas/left/items/elecs');
});
//告警展示
$('#left #nav #alarms_show #_opt_title').click(function(){
	$('#right').load('/app/areas/left/show/alarms');
});
//root相关
$('#left #nav #root #_opt_title').click(function(){
	$('#right').load('/app/areas/left/root/config');
});
});