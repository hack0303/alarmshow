//alert('??');
var isHide=true;
$(document).ready(function(){
	for(var i=0;i<3;i++){
	$('#left #nav #alarms_show #_opt_nav').eq(i).click(function(){

	});
	}
	isHide=true;
	$('#left #nav #alarms_show #_opt_nav').hide();
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
for(var i=0;i<3;i++){
		switch(i){
		case 0:{
			$('#left #nav #alarms_show #_opt_nav').eq(i).click(function(){
			$('#right').load('/app/areas/left/results/rrelation');
			});
			break;}
		case 1:{
			$('#left #nav #alarms_show #_opt_nav').eq(i).click(function(){
				$('#right').load('/app/areas/left/results/groups');
				});
				break;}
		case 2:{
			$('#left #nav #alarms_show #_opt_nav').eq(i).click(function(){
				$('#right').load('/app/areas/left/results/final');
				});
				break;}
		default:alert("异常表项");
		}
}
//告警展示
$('#left #nav #alarms_show #_opt_title').click(function(){
	$('#right').load('/app/areas/left/show/alarms');
	if(isHide){
		isHide=false;
	$('#left #nav #alarms_show #_opt_nav').show();
	}
	else{
		isHide=true;
		$('#left #nav #alarms_show #_opt_nav').hide();
	}
	});
//root相关
$('#left #nav #root #_opt_title').click(function(){
	$('#right').load('/app/areas/left/root/config');
});
});