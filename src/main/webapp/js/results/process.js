$(document).ready(function(){
	var indata={"processedCount":0,"totalCount":100}
    $('.progress .progress-bar').css("width",indata.processedCount+"%");
	 // $('.progress .progress-bar').css("background","red");
	var interval=self.setInterval(function(){
		$.ajax({
            url: "/app/process/",
            type: "post",
            data: JSON.stringify(indata),
            datatype:'json',
            contentType: "application/json",
            success: function (result) {
               indata=result;
               $('.progress .progress-bar').css("width",indata.processedCount+"%");
          //	 $('#process_description p').find('span').replaceWith("<span>"+indata.processedCount+"</span>"));
               if(result.processedCount==100){
            	   alert('结束了');
            	   window.clearInterval(interval);
               return;
               }
            },
            fail: function (result) {
                alert("failed！");
            }
        });
	},500);
});