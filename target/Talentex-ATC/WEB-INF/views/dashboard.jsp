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
		$(".se-pre-con").fadeOut("slow");;
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
a:hover{
text-decoration:none;
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
<div class="profile-head" >
<i style="padding:10px;background-color:#0093C8"class="fa fa-table" aria-hidden="true"></i><span style="padding:10px;font-size:16px">ATC OPEN DATES FOR TAKING ASSESSMENT</span></div>
<div id="profile-head">

</div>
</div>
</div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel-2">
  		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel-2">Check Your Email</h4>
				</div>

				<div class="modal-body">
					<p>Thank you for your Interest to become Nodal College / ATC Verification Link has sent to your Registered Mail-ID. To Create your Password.</p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-dialog" data-dismiss="modal">Ok</button>
					
				</div>
			</div><!-- modal-content -->
		</div><!-- modal-dialog -->
 
  </div>


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
	
	
	 
<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>



<!-- <span style="background-color:#F26E7C;border-radius:15px;float: right;margin-top: -11px;padding: 5px 22px;margin-right: -22px;color:#fff">0</span>
 -->
 
 
<script>


$(document).ready(function(){

	console.log("checkinggg");

	var month_name = function(dt)
	{  
		mlist = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];  
		  return mlist[dt.getMonth()];  
	}  
	
 $.ajax({
	type:"POST",
	url:'atcDates',
	success:function(response){

		console.log("kisho--->"+response);
		
			var getresponse=JSON.parse(response);
			console.log("getresponse is--->"+getresponse);
		if(getresponse==""||getresponse=="null"||getresponse==null)

			{
           	 console.log("iffff");
			 $("#profile-head").append('<div style="padding:20px;text-align:center"><h4>No dates selected</h4> <div class="col-lg-12"><br/><hr><div align="center" style="color:#5cb85c;font-weight:bold"><a href="sheduledates">Click here to select dates on which atc will be kept open for taking assesement</a></div><img src="images/registerhere.gif"><br/> </div>');		
			 
			}
		else
			{
			console.log("elseeee");
		for(i=0;i<getresponse.length;i++)
	      {
		var getdate=getresponse[i].split('-');
		var getmonth=month_name(new Date(getdate[1]));
		$("#profile-head").append('<div class="col-lg-3 examdates" data-value="'+getresponse[i]+'" style="cursor:pointer;"><span class="countValue btn-success" id="countValue'+i+'" style="border-radius:15px;float: right;margin-top: -11px;padding: 5px 22px;margin-right: -22px;color:#fff">0</span><h2>'+getdate[0]+'</h2><p>'+getmonth+'</p></div>')
		 		
		    }  
    	}
		
	},
	 error: function() 
     {
     console.log("ERROR");
     }
	
	});


   /* 	
   var logosrc=$('#userlogo').text();
    
   if(logosrc===''||logosrc==="null")
	{
	   $("#img").attr("src","images/profilepic.png");
	}   
   else{
	   
    $("#img").attr("src",logosrc);      
     
    }
    */
	
$(document).on("click",".examdates",function(){
$.ajax({
	 type:'post',
	 url:'setSessionSlotDate',
	 data:{'slotDate':$(this).attr("data-value")},
	 success:function(response) 
		{
			window.location.href="studentstable"
        },
 	 error: function() 
      {
      console.log("ERROR");
      }
}); 
    });


setTimeout(function(){
	
	
	$(document).find(".examdates").each(function(){
		
		var getcountValueId="#"+$(this).find('.countValue').attr("id");
		
		console.log("The Count Value is-->"+getcountValueId);
		
	 	$.ajax({
			 type:'post',
			 url:'dateWisecount',
			 data:{'date':$(this).attr("data-value")},
			 success:function(responseData) 
			 {
				    $(document).find(getcountValueId).text(responseData);
					console.log("The Response date  is-->"+responseData);
		     },
		 	error: function() 
		    {
		    console.log("ERROR");
		    }
		}); 
		
	});
	
},1000);


/* Click Event disable preventDefault */

	$("li a,.tec,.alradd").on("click",function(e){
			 if ($(this).hasClass("disabled")) {
				 
				 e.preventDefault();
				   return false;
				 }
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