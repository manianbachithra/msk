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
a{
text:decoration:none;
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
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/bootstrap.offcanvas.css"/>
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/studentstable.css" />


<script type="text/javascript" src="js/dashboard.js"></script>
<script src="js/uploadimg.js"></script>
<script  src="js/Angularjs.js"></script>
<script  src="js/Angular_route.js"></script> 

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Source Sans Pro">

<style>

#addstudentlist .form-control-feedback {
	top: 6px;
	right: -25px;
}

form {
  margin: 20px 0px 10px 0px ;
  padding: 10px 0px 0px 10px;
  border-radius: 8px;
}
.common-adds{
width: 24px; 
margin-top: 6px;
cursor: pointer
}

.addstu h3{
padding:10px 0;
color:#5c5c5c;
font-family:Source Sans Pro;
}

.addstu{
margin-top:60px;
}

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

<div class="clear"></div>


<div class="col-lg-12 rmpad row studentsupload">

<div class="dashboard-box1">
<div class="span_box1 col-lg-4">
<i class="fa fa-money" aria-hidden="true"></i>
</div>
<div class="span_box1_right col-lg-8">
<h2>${totalsplC}</h2>
<p>Total Campus Voucher Credits</p>
</div>
</div>

<div class="dashboard-box1">
<div class="span_box2 col-lg-4">
<img src="images/multiple-users.png" style="margin-top:45%">

</div>
<div class="span_box2_right col-lg-8">
<a href="studentlist">
<h2>${usedsplC}</h2></a>
<a href="studentlist" style="color:#333"><p>Used Campus Voucher Credits</p>
</a>
</div>
</div>

<div class="dashboard-box1">
<div class="span_box3 col-lg-4">
<img src="images/newregisters.png" style="margin-top:36%;width:45px">
</div>
<div class="span_box3_right col-lg-8">
<h2 id="balance_credits">${balancesplC}</h2>
<p>Balance Campus Voucher Credits</p>
</div>
</div>
                     <!--START ADD STUDENTS MANNUALY -->
                     
                 <div class="col-lg-12 fbt"	style="background-color: #fff; padding-top:4%;padding-left:4%; margin-top: 22px;">
                      
                     <form action="voucherAssign" id="addstudentlist" method="post">
                     
	                       
								<div class="col-lg-12">
								<div class="col-lg-3" style="padding-left:20px;"> <label for="mail">Name:</label>
								</div> 
								<div class="col-lg-3" style="padding-left:18px;"> <label for="mail">Email:</label>
								</div> 
								<div class="col-lg-3" style="padding-left:15px;"> <label for="mail">Mobile:</label>
								</div>
								<div class="col-lg-2">
								</div>
								</div>
								
				<div class="col-lg-12" id="addcontactperson">
								 
								<div class="contactpersons-block col-lg-12" id="first0div" >
							    	
							    	
									<p style="float:left;margin-top: 9px;" class="counter">1</p>
									<div class="col-lg-3"> 
									<div class="form-group">
									<input type="text" id="c_person" name="contact" class="form-control vouchermail" placeholder="Enter Student Name"/>
									</div>
									</div>
									
								    <div class="col-lg-3">
									<div class="form-group">
									<input type="text" id="contact_email" name="email" class="form-control vouchermail" placeholder="Email"/>
									</div>
									</div>

									<div class="col-lg-3">
										<div class="form-group">
											<input type="text" id="mobile_no" name="mobile" class="form-control vouchermail" maxlength="10" placeholder="Mobile No"/>
										</div>
									</div> 
									
									<div class="col-lg-2"> 
									<img class="common-add common-adds" id="add-newuser"src="images/add-user.png">
									<span class="common-add common-adds"style="position: relative;top: 4px;padding: 10px;">ADD</span>
									</div>
									
								</div>

                 </div>
                      
						
						
							  <div align="center" class="col-lg-12" style="background-color:#fff;padding:20px 0">
                         <div class="errormsg"></div>
							<button class="nxt-button btn-md btn-success" type="button" id="sendvocher">Send Vouchers</button>
							
						</div>
						<input type="hidden" name="contactperson_json" id="contactperson"/>
						<input type="text" name="voucher_type" value="2" style="display:none"/>
							</form>
								</div>
							
							 <!--END STUDENTS MANNUALY -->

</div>

</div>
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
	
	<div class="modal fade " id="negativealert" role="dialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content ">
        <div style="text-align:center" class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         <img src="images/loading.gif" width="160px"><br>
		 <h2>SENDING VOUCHERS</h2>
		 <h4 style="padding:20px">Thank you Voucher shall be sent to respective Email-Id and mobile no with in 30 mins</h4>
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
 
 
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.navgoco.js"></script> 

<script src="js/uploadimg.js"></script>
<script type="text/javascript" src="js/bootstrap.offcanvas.min.js"></script>
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>



<script>

$(document).ready(function(){


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

	
	  	/*	 ------------------Bootstrap Validations-------------------*/
            
         var getitem=[];
	
	

     function snoCounter()
     {
    	 var tempcount=0;
    	 $(".counter").each(function(){
    		 tempcount++; 
    		 $(this).text(tempcount);
    		 });
     }   	 
        	 
        	 
	 var mycount = 0;
	
	 $(document).on("click",".common-add",function(){
		 console.log("common clicked");
	  mycount++; 
	
	  $('#addcontactperson').append($('<div id="first'+mycount+'div" class="contactpersons-block col-lg-12 extrablock"><span style="float:left;margin-top:9px" class="counter"></span><div class="col-lg-3"><div class="form-group"><input type="text" class="form-control vouchermail" id="contact_p'+mycount+'" name="contact"></div></div><div class="form-group col-lg-3"><span class=""><input type="email" class="form-control vouchermail" id="contact_email'+mycount+'" name="email"></span></div><div class="col-lg-3"> <div class="form-group"><input type="text" class="form-control vouchermail" id="mobile_no'+mycount+'" maxlength="10" name="mobile"></div></div><span class="col-lg-1"><img class="common-rmv" id="first'+mycount+'" style="width:24px;margin-left:2px;margin-top:6px;cursor:pointer" src="images/remove-user.png"></span></div>'));         
	  var $option =$("#first"+mycount+"div").find('[name="mobile_no[]"]');
	  var $option1 =$("#first"+mycount+"div").find('[name="contact_email[]"]');
	  var $option2 =$("#first"+mycount+"div").find('[name="contact_p[]"]');
	  snoCounter();

	  }); 
	
	 
	 
	        $(document).on("click",".common-rmv",function(){
		 	         
		      var xx=$(this).attr("id")+"div";
		      console.log("Remove clicked-------->"+xx);

                           
		      var $option =$('#'+xx).find('[name="mobile_no[]"]');
		      var $option1 =$('#'+xx).find('[name="contact_email[]"]');
		      var $option2 =$('#'+xx).find('[name="contact_p[]"]');
		      
        	  $('#'+xx).remove();



        	  $("#contactperson").val("");
	             getitem=[];
	      
	             
	             $(".contactpersons-block").each(function(){
	            	 var item={};
	            	 var getid="#"+$(this).attr("id");
	            	
	            	 item.person=$(getid).find('[name="contact_p[]"]').val();
	            	 item.mail=$(getid).find('[name="contact_email[]"]').val();
	            	 item.mobile=$(getid).find('[name="mobile_no[]"]').val();
	            	 getitem.push(item);
	            	
	            	 console.log("The get item is--->"+JSON.stringify(getitem));
	            	
	             });
	             
	             $("#contactperson").val(JSON.stringify(getitem));
	             snoCounter();
	         }); 
	        
	        
	        function testEmail(email)
	        {
	        	var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
	            return pattern.test(email);
	        }
	        
	        function testMobile(mobile)
	        {
	        	 var pattern1 = new RegExp(/^[789]\d{9}$/i);
	             return pattern1.test(mobile);
	        }
	        
	        
	        $("#sendvocher").click(function(){
	        	
	        	var item={};
	        	getitem=[];
	        	
	        	sentStatuss=false
	        	
	        	voucherstatus1=false;
        		voucherstatus2=false;
        		voucherstatus3=false;
	        	
	        	$(".contactpersons-block").each(function(){
	        		
	        		var getid="#"+$(this).attr("id");
	        		
	        		
	        		if($(getid).find('[name="email"]').attr("name")=="email")
	        	    {
	        			
	        			if($(getid).find('[name="email"]').val()=="")
	        			{
	        				$(getid).find('[name="email"]').css("border-color","#a94442");
	        				voucherstatus1=false;
	        			}
	        			else if(testEmail($(getid).find('[name="email"]').val()))
	        			{
	        				$(getid).find('[name="email"]').css("border-color","#2b542c");
	        				voucherstatus1=true;
	        			}
	        			else
	        			{
	        				$(getid).find('[name="email"]').css("border-color","#a94442");
	        				voucherstatus1=false;
	        			}
	        	    }
	        		if($(getid).find('[name="mobile"]').attr("name")=="mobile")
	        		{
	        			
	        			
	        			if($(getid).find('[name="mobile"]').val()=="")
	        			{
	        				$(getid).find('[name="mobile"]').css("border-color","#a94442");
	        				voucherstatus2=false;
	        			}
	        			else if(testMobile($(getid).find('[name="mobile"]').val()))
	        			{
	        				$(getid).find('[name="mobile"]').css("border-color","#2b542c");
	        				voucherstatus2=true;
	        			}
	        			else
	        			{
	        				$(getid).find('[name="mobile"]').css("border-color","#a94442");
	        				voucherstatus2=false;
	        			}
	        			
	        		}
	        		if($(getid).find('[name="contact"]').attr("name")=="contact")
	        		{
	        			
	        			if($(getid).find('[name="contact"]').val()=="")
	        			{
	        				$(getid).find('[name="contact"]').css("border-color","#a94442");
	        				voucherstatus3=false;
	        			}
	        			else
	        			{
	        				$(getid).find('[name="contact"]').css("border-color","#2b542c");
	        				voucherstatus3=true;
	        			}
	        		}
	        		
	        		    if(voucherstatus1 && voucherstatus2 && voucherstatus3)
	        			{
	        		    	    
	        	            	 var item={};
	        	            	 var getid="#"+$(this).attr("id");
	        	            
	        	            	 item.person=$(getid).find('[name="contact"]').val();
	        	            	 item.mail=$(getid).find('[name="email"]').val();
	        	            	 item.mobile=$(getid).find('[name="mobile"]').val();
	        	            	 getitem.push(item);
	        	            	 sentStatuss=true
	        	            	 
	        			}
	        		    else
	        			{
	        		    	sentStatuss=false
	        			}
	        		
	        	});
	        	
	        	if(sentStatuss)
	        	{

	        		 if($('#balance_credits').text() < getitem.length){
		   			       
		   	    	      console.log("ENTER INTO IF ");
		   	           
		   	              $('.errormsg').css("color","#C9302C").text("You have exceeded voucher limit");
		     
		   	            }
	        		 else{
	        			 console.log("The get item is--->"+JSON.stringify(getitem));
	 	        		
	 	        		$('#negativealert').modal('show');
	 	        		$(".extrablock").remove();

	     // Set a timeout to hide the element again
	     setTimeout(function(){
	     	$('#negativealert').modal('hide');
	     }, 6000);

		        		 }
	        		
	        		 if($('#balance_credits').text() < getitem.length){
		        		 
	        			    console.log("You have exceeded voucher limit");
	                        $(".btn-success").attr( "disabled", "disabled" );
	        		 }

	        				else{
	        					$.ajax({
		    	        			url:"voucherAssign",
		    	        			method:"post",
		    	        			data:{"contactperson_json":JSON.stringify(getitem),"voucher_type":"2"},
		    	        		}).	done(function(){
		    	        			
		    	        				console.log("success");
		    	        				/* $('#negativealert').modal('hide'); */
		    	        				window.location.reload();
		    	        				$('#c_person').val("");
		    	        				$('#contact_email').val("");
		    	        				$('#mobile_no').val("");
		    	        				
		                				$("#c_person").css({"border-color": "#B0B0BA","border-style":"solid"});
		    	        				$("#contact_email").css({"border-color": "#B0B0BA","border-style":"solid"});
		    	        				$("#mobile_no").css({"border-color": "#B0B0BA","border-style":"solid"});

		    	        				
		    	        				
		    	        			});

		        				}
        	
	        	}
	        	else
	        	{
	        		
	        	}
	        	 
	        	
	        });
	        
	
});

</script>

</html>