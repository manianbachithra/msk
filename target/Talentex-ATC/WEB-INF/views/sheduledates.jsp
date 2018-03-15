<! DOCTYPE html> 
<html>
<head>  
<title>Talentex ATC Dashboard</title>
<style>
/* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript, 
if it's not present, don't show loader */
.no-js #loader { display: none;  }
.js #loader { display: block; position: absolute; left: 100px; top: 0; }
.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url(images/Preloader_2.gif) center no-repeat #fff;
}
</style>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
	//paste this code under head tag or in a seperate js file.
	// Wait for window load
	$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");
	});
</script>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/bootstrap.offcanvas.css"/>
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/studentstable.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.navgoco.js"></script>
<script type="text/javascript" src="js/bootstrap.offcanvas.min.js"></script>
<script type="text/javascript" src="js/dashboard.js"></script>
<script src="js/uploadimg.js"></script>
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">

<style>
.examdates1{
text-align: center;
margin: 3%;
border: 1px solid #dddddd;
    font-family: Montserrat;
   text-align: center;
    background: #e5e5e5;
    background: -webkit-linear-gradient(#FAFAFA, #e5e5e5);
    background: -o-linear-gradient(#FAFAFA, #e5e5e5);
    background: -moz-linear-gradient(#FAFAFA, #e5e5e5);
    background: linear-gradient(#FAFAFA, #e5e5e5);

}
.daycolors{

color:#5cb85c;

}
.examdates1 h2 {
       color: #555;
       margin-top: 10px;
       font-size: 30px;
}
.changeimg
{
display:none;
}
.changeimg
{
display:none;
}
.imageshow:hover .changeimg
{
display: block;
}
#preview 
{
	background-color: #fff;
	display: block;
	margin-top: -75px;
	float: right;
	margin-right: 5px;
	width: 200px;
	position: relative;
}

#fileinfo,#error,#error2,#abort,#warnsize,#none 
{
	color: #aaa;
	display: none;
	font-size: 10pt;
	font-style: italic;
	margin-top: 10px;
}

@media only screen and (max-width:400px) {
	#preview {
		background-color: #fff;
		display: block;
		margin-left: 82px;
		margin-top: 50px;
		float: left;
		width: 200px;
	}
}

@media only screen and (max-width:350px) {
	#preview {
		background-color: #fff;
		display: block;
		margin-left: 22px;
		float: left;
		width: 200px;
	}
}
</style>
</head>
<body>
    <!-- Paste this code after body tag -->
	<div class="se-pre-con"></div>
	<!-- Ends -->
<%@include file="/WEB-INF/common/header.jsp"%>

<div class="clear"></div>

<%@include file="/WEB-INF/common/offcanvas.jsp"%>

<div class="container2">
<div class="col-lg-3">
<%@include file="/WEB-INF/common/profilewidget.jsp"%>

    
<br/><br/>

<%@include file="/WEB-INF/common/enquiry.jsp"%>
</div>
<div class="col-lg-9">

<div class="dashboard-box1">
<div class="span_box1 col-lg-4">
<i class="fa fa-money" aria-hidden="true"></i>
</div>
<div class="span_box1_right col-lg-8">
<h2>0</h2>
<p>Payments Received</p>
</div>
</div>

<div class="dashboard-box1">
<div class="span_box2 col-lg-4">
<img src="images/multiple-users.png" style="margin-top:45%">

</div>
<div class="span_box2_right col-lg-8">
<h2><%=(session.getAttribute("completedCount"))%></h2>
<p>Students Participated </p>
</div>
</div>

<div class="dashboard-box1">
<div class="span_box3 col-lg-4">
<img src="images/newregisters.png" style="margin-top:36%;width:45px">
</div>
<div class="span_box3_right col-lg-8">
<h2><%=(session.getAttribute("newRegistercount"))%></h2>
<p>New Registers</p>
</div>
</div>
<div class="clear"></div>
<br/><br/>
<div class="col-lg-8 rmpad row" style="background-color:#fff;margin-left:17px;margin-left:13%;margin-top:5%">
<div id="displaydiv">
<div class="profile-head">
<i style="padding:10px;background-color:#0093C8"class="fa fa-table" aria-hidden="true"></i><span id="textstatus"style="padding:10px;font-size:16px">Select ATC open dates for taking assessment</span></div>

<div id="profile-head">


</div>
<br><br>

<button type="button" class="datesubmit btn btn-info btn-sm" data-toggle="modal" data-target="#examsubmit_model" style="margin-top:105px;margin-right:20px;margin-bottom:20px;float:right" disabled>Submit</button>

<div style="clear:both"></div>
<p style="color:red;padding:20px;margin-top:10px" id="note1">*Note : Choose the dates carefully has no modifications can be allowed after submission</p> 
</div>

<h4 class="finaldates" style="display:none"></h4>

<br>

</div>
</div>
</div>

<h1 id="resistration_status" style="display:none"><%=session.getAttribute("booked")%></h1>

<div id="photomodel" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Select your File and Click Upload</h4>
				</div>
				<div class="modal-body">
					<div id="imgcontent" class="row">

						<div class="container_image">
							<div class="upload_form_cont">

								
									<label for="image_file">
										<div id="hed">Please select image file with size less
											then 1 MB</div>
									</label>

									<div id="textbo">
										<input type="file" class="filestyle"
											data-buttonName="btn-primary" id="image_file"
											name="image_file" onchange="fileSelected();"> 
										<!-- <input type="file" id="image_file" name="image_file" class="filestyle" data-buttonBefore="true" onchange="fileSelected();"> -->
										<!-- <input type="file" name="image_file" id="image_file" onchange="fileSelected();" /> -->
									</div>
								<!-- 	<input type="button" class="btn btn-primary" value="Upload"  id="upload"/>
                                <input type="button" class="btn btn-danger" value="Cancel" id="cancel"  /> -->

									<div id="fileinfo">
										<div id="filename"></div>
										<div id="filesize"></div>
										<div id="filetype"></div>
										<div id="filedim"></div>
									</div>
									<div class="none" id="none">You should select valid image
										files First!</div>
									<div class="none" id="error">
										Only Image Formats Such as BMP/GIF/JPEG/PNG/TIFF Can be
										uploaded<br />You should select valid image files only!
									</div>
									<div class="none" id="error2">An error occurred while
										uploading the file</div>
									<div class="none" id="abort">The upload has been canceled
										by the user or the browser dropped the connection</div>
									<div class="none" id="warnsize">Your file is very big. We
										can't accept it. Please select more small file</div>

									<div id="progress_info">
										<div id="progress"></div>
										<div id="progress_percent"></div>
										<div class="clear_both"></div>
										<div>
											<div id="speed"></div>
											<div id="remaining"></div>
											<div id="b_transfered"></div>
											<div class="clear_both"></div>
										</div>
										<div id="upload_response" style="display: none"></div>
									</div>
								

								<img id="preview" />
							</div>

						</div>
						<div id="dataurl"
							style="position: absolute; bottom: 0; left: 0; width: 100%; height: 20%; border: 2px solid black; overflow: scroll; display: none"></div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="button" id="upload" class="btn btn-primary"
						data-dismiss="modal">UPLOAD</button>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- START Exam Submit Modal -->
  <div class="modal fade" id="examsubmit_model" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Dates Confirmation</h4>
        </div>
        <div class="modal-body">
          <p class="finaldates2" style="font-size:26px;padding:20px">Plese select dates.</p>
          
          <form action="schedule" method="post" id="dates_sendform">


<input type="text" name="scheduleDates" id="finaldates" style="display:none">
<button type="button" class="btn btn-default" data-dismiss="modal" style="text-transform:none">Cancel</button>
<input type="submit" class="btn datesubmit" value="Confirm"  disabled>

</form>
        </div>
        <div class="modal-footer">
          
        </div>
      </div>
      
    </div>
  </div>
    <!-- END Exam Submit Modal -->
    
<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>

<!-- <span style="background-color:#F26E7C;border-radius:15px;float: right;margin-top: -11px;padding: 5px 22px;margin-right: -22px;color:#fff">0</span>
 -->
 
<script>

$(document).ready(function(){
	                         

	     $(document).on('mouseenter','.examdates1',function(e){
                 

		   //   $(".xx").remove();
		   
		if ($(this).find("img").length > 0){
				   
		        
		         }
		     
		     else{
		    		
					$(this).children(".countValue").append('<img src="images/success.png" class="xx" width="30px">'); 
					//$(".xx").fadeOut(3000);
					$(".xx").fadeOut(300, function() { $(this).remove(); });
				 
		         }

			
			 });
	
	var month_name = function(dt)
	{  
		 mlist = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];  
		  return mlist[dt.getMonth()];  
	}  

	/* var day_name = function(day)
	{          
		 dlist = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"];  
		  return dlist[day.getday()];  
	}
	 */
   var registrationstatus=$('#resistration_status').text();

   console.log("Current registrationstatus is"+registrationstatus);
	  
	if(registrationstatus=="0")
	{
		
	$.ajax({
	type:"POST",
	url:'atcDateOptions',
	success:function(response){
		console.log("#########RESPONSe is------>"+response);
		
		//var getresponse=["17-11-2016","18-11-2016","19-11-2016","20-11-2016","21-11-2016","22-11-2016","23-11-2016","24-11-2016","25-11-2016","26-11-2016"];
		if(response=="empty")
			{
			console.log("go to if");
			 $("#profile-head").append('<div style="padding:20px;text-align:center"><h4 style="padding-top: 40px;">Yet to be announced soon..!</h4>');
			 $('#dates_sendform').hide();
             $('#note1').hide();
             $('.datesubmit').hide();
             
             
             $('#textstatus').text("Announcement")
		
			}

		else{
			console.log("go to else");
			var getresponse=JSON.parse(response);
			
		for(i=0;i<getresponse.length;i++)
	    {
		    
		var getdate=getresponse[i].split('-');
            //console.log("FIRST VALUE is---->"+getdate);
            
		var getmonth=month_name(new Date(getdate[1]));
		    //console.log("SECOND VALUE is---->"+getmonth);

		    /* for getting day value */
			var dayNames = new Array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
			var st = getresponse[i];
			var pattern = /(\d{2})\-(\d{2})\-(\d{4})/;
			var dt = new Date(st.replace(pattern,'$3-$2-$1'));
            console.log("===== >"+dayNames[dt.getDay()]);
			/* ========= */
	

		  if(dayNames[dt.getDay()]=="Saturday"||dayNames[dt.getDay()]=="Sunday"){
			  
			   $("#profile-head").append('<div class="col-lg-3 examdates1 tickfunction text" data-value="'+getresponse[i]+'" style="cursor:pointer;"><span class="countValue" id="countValue'+i+'" style="float: right;width:51px;height:26px;margin-top: -11px;padding: 5px 22px;margin-right: -22px;color:#fff"></span><h2><span style="font-size:16px;font-size:16px;position: relative;top: -4px;padding-right:4px">'+getmonth+'</span>'+getdate[0]+'</h2><span style="color:red">'+ dayNames[dt.getDay()] +'</span></div>')
			  }

			  else{
				  $("#profile-head").append('<div class="col-lg-3 examdates1 tickfunction text" data-value="'+getresponse[i]+'" style="cursor:pointer;"><span class="countValue" id="countValue'+i+'" style="float: right;width:51px;height:26px;margin-top: -11px;padding: 5px 22px;margin-right: -22px;color:#fff"></span><h2><span style="font-size:16px;position: relative;top: -4px;padding-right:4px">'+getmonth+'</span>'+getdate[0]+'</h2><span class="daycolors">'+ dayNames[dt.getDay()] +'</span></div>')
				  }
	    }
		}
	}
	});
	
	}
	else
	{

		 window.location.href = "dashboard"; 
		
		}
	
    $(document).on("click",".tickfunction",function(){

	// console.log("tick function ticked");
	 
	 
    	
	 
     var iddd=$(this).children(".countValue").attr("id");
     //console.log("Your ID is ---->"+iddd);

        
     var check=$('.countValue').text();
    
     if ($(this).find("img").length > 0){
    	
           $(this).find("img").remove();
           //console.log("IMAGE HAVING");
           //$(this).children(".countValue").append('<img class="imgavi" src="images/success.png" />');
         }
     
     else{
    	 $(this).children(".countValue").append('<img class="imgavi" src="images/success.png" />');  
         }


     if ($('.examdates1').find("img").length >0){
 	   
 			$('.datesubmit').prop("disabled", false);
 			$('.datesubmit').addClass("btn-primary");
 		}
 	  else{
     	
 		  $('.datesubmit').prop("disabled", true);
 		  $('.datesubmit').removeClass("btn-primary");
     	  }
	  
    });

    
  
$(document).on("click",".datesubmit",function(){

	$('.finaldates').text("");
	$('.finaldates2').text("");
	
<%session.setAttribute("booked","1");%>

  $(document).find(".countValue:has(img)").each(function(){
	  
	   $(".datesubmit").prop("disabled", false);
      //$('.datesubmit').attr('disabled', 'disabled');

	var getcountValueId=$(this).attr("id");
       
	
	var str1=$('#'+getcountValueId).parent(".examdates1").attr("data-value");

             console.log("STR 1 Value is---->"+str1);
    
    $(".finaldates").append(str1+",<br/>");
    $(".finaldates2").append(str1+",<br/>").slice(0, -1);
    

    var atcexamdates=$('.finaldates').text(); 
  
              
         var result1='{\"available_dates_id\":\"'+atcexamdates+'\"}';

                      $('#finaldates').val(result1);
                 
                         
                   
});
  

});





	/*  Click Event Photo Upload End */
	
 $(":file").filestyle({buttonName: "btn-primary"});

/*  Click Event Photo Upload Start */
	 
	 $(document).on('click','#upload',function(){
		 data = $("#dataurl").text();
		 console.log("BASE 64 is=====>"+data);
		 if (data === '')
	        {
			   $(".none").css("display","none");
	            document.getElementById('none').style.display = 'block';
	        }
	        else
	        {
	        	var src=$("#preview").attr("src");
	            $.ajax({
                    url:"photoupload",
                    type:"post",
                    data:{photo:src},
                    success:function (response) 
       	     	 {
       	        		
       	        	console.log("Ajax Response is----->"+response);
       	               
       	         },
       	          error: function() 
       	         {
       	         }
       	         
		            });
		            
		        $("#img").attr("src",src);
		        $(".img").text("");
		    	$("#barwidth1").text((parseInt($.trim($("#barwidth").text()).slice(0, -1), 10) + 5)+"%");
				$("#barwidth").css("width",$.trim($("#barwidth").text()).slice(0, -1)+"%");
			
	        }
		
    });

	/*  Click Event Photo Upload End */


	     
	
});



</script>



</html>