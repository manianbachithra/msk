/*
$(document).ready(function(){
	

	var newresult=$('#userstring').text();
	  console.log("____________________________________________>"+newresult);
	
	

	$(document).on("click",".atcusrid",function(){
	
console.log("-------clicked--->");
var usrid=$(this).closest('tr').children('td:eq( 3 )').text();
console.log("Td Value is----->"+usrid);


$.ajax({
	 type:'post',
	 url:'atcdetails',
	 data:{
         'usrid':usrid
		 },
		 success:function(data) 
		 {
			  console.log("user response=====-->"+data);  
             window.location.href="atcdetails";   
           
       },

      
  	 error: function() 
       {
       console.log("ERROR");
       }

       
});


}); 
 		 
	 });



*/