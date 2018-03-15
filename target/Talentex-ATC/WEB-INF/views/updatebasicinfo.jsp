<! DOCTYPE html> 
<html>
<head>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>TalentEx - ATC</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link rel="stylesheet" href="css/bootstrap.offcanvas.css" />
<link rel="stylesheet" href="css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/updateforms.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/uploadimg.js"></script>
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">

<style>
.row{
margin:0px;
}
<!--  Profile Pic upload  -->
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
<!--  END Profile Pic upload  -->
.form-control
{
color:#999;
}
#addressform .form-control-feedback 
{
	top: 22px;
	right: -25px;
}
#registrationform .form-control-feedback 
{
	top: 22px;
	right: -25px;
}
#systeminfo .form-control-feedback {
	top: 22px;
	right: -25px;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/common/header.jsp"%>

<div class="clear"></div>

<%@include file="/WEB-INF/common/offcanvas.jsp"%>

               <div class="alert alert-success alert-dismissible" id="chksuccess"
					role="alert" style="display: none;">
					<button type="button" class="close">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4><div id="successdata"></div></h4>
				</div>
<div class="clear"></div>
<h1 id="pass_status" style="display:none"><%=session.getAttribute("passchanged")%></h1>

<div class="container2">
<div class="col-lg-3">
<%@include file="/WEB-INF/common/profilewidget.jsp"%>
<br/><br/>
   
<%@include file="/WEB-INF/common/enquiry.jsp"%>

</div>
<div class="col-lg-9">

<div class="clear"></div>

<div class="col-lg-12 row rmpad formupdate-body">
	<div class="c_title">
                                <h2>Basic Informations</h2>
                                <div class="clearfix"></div>
	</div>
	   <div class="userinput-form address-form" id="basicinfoidform">
                                  
    <div class="form-horizontal" id="commentForm">

                                    
                                    <h5 class="head-style-1">
                                    <span class="head-text-green">
                                        <strong style="font-size:14px;line-height:20px;padding-bottom:8px;">Basic Informations</strong>
                                    </span>
							    </h5>
							    <br/><br/>
							    
                                     <div class="form-group">
                                        <label for="cname" class="control-label col-lg-3">Email</label>
                                        <div class="col-lg-6">
                             				 <span class="form-control" id="usernameid"> </span>                           					 
                                        </div>
                                    </div>
                               
                                    <div class="form-group">
                                        <label for="cname" class="control-label col-lg-3">Institution Name</label>
                                       <div class="col-lg-6">
                                            <span class="form-control" id="institutenameid"></span>
                                        </div> 
                                    </div>
                                     <div class="form-group">
                                        <label for="cname" class="control-label col-lg-3">Mobile No</label>
                                       <div class="col-lg-6">
                                            <span class="form-control" id="mobileid"></span>
                                        </div> 
                                    </div>
                                    <div class="form-group">
                                        <label for="cname" class="control-label col-lg-3">State</label>
                                       <div class="col-lg-6">
                                            <span class="form-control" id="pstateid"></span>
                                        </div> 
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="cname" class="control-label col-lg-3">City</label>
                                       <div class="col-lg-6">
                                            <span class="form-control" id="pcityid"></span>
                                        </div> 
                                    </div>
                                   

                                    
      </div>

                                
   </div>
	
	
	 <!--**********START System Information **********-->                            
                                <hr><br/>
                                <div class="userinput-form address-form" id="systeminfoidform">
                                	<h5 class="head-style-1">
                                    <span class="head-text-green">
                                        <strong style="font-size:14px;line-height:20px;padding-bottom:8px;">Contact & System Information</strong>
                                    </span>
    </h5>
    <br/><br/>
  <%--   <form  id="systeminfo" method="post" action="systeminfodetails" oninput="starttime.value = starttime.value +':00'" method="post">
                                    
                                    
                                  <!-- <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Conform Password</label>
                                        <div class="col-lg-6">
                                            <input class="form-control" id="curl" type="password" name="url">
                                        </div>
                                    </div> -->
                                       
                                
                                        <span class="col-lg-1"></span>
                                        <div class="col-lg-2 control-label" style="text-align:left">
								        <label for="name" class="control-label" style="padding-bottom: 12px;">No of Systems</label>
								         <div class="form-group">
								           <input type="text" name="totalsystems"  class="form-control" id="totsyscount" style="width:120px;">
								        </div>
								        </div>
								        
								        <span class="col-lg-2 control-label" style="text-align:left">
								        <label for="name" class="control-label" style="padding-bottom: 12px;">Internet Speed</label>
								        
								        <select name="netspeed" class="form-control interspeed" id="selectedrange" style="width:120px">
                                        <c:forEach var="netspeed" items="${netspeed}">
			                            <option value="${netspeed.id}">${netspeed.ranges.toUpperCase()}</option>
		                                 </c:forEach>
                                        </select>
								        
								        </span>
								        
								         <span class="col-lg-6 control-label" style="padding-left:70px;text-align:left">
								          <label for="name" class="control-label" style="padding-bottom: 12px;">Working Hours</label>
								         <span class="input-group bootstrap-timepicker timepicker">
								         
								          <span class="input-group bootstrap-timepicker timepicker" style="float:left;padding-right:22px">
								          <input type="text" id="timepicker1" class="form-control atcstart_time" name="starttime" placeholder="Start Time"  style="width:81px;float:left;margin-bottom:0px;font-size:15px;!important">
								         <span class="input-group-addon" style="border:none"><i class="glyphicon glyphicon-time"></i></span>
								         </span>
								         
								          <span class="input-group bootstrap-timepicker timepicker">
								          <input type="text" id="timepicker2" class="form-control atcend_time" name="endtime" placeholder="End Time"  style="border-left:1px solid #ddd;width:81px;margin-bottom:0px;float:left;font-size:15px;!important">
								         <span class="input-group-addon" style="border:none"><i class="glyphicon glyphicon-time"></i></span>
								          </span>
								          
								          </span>
        								  </span>
        								  
        								  <div class="clear"></div>
        								  
        								<!-- *** CONTACT PERSON Details ********** -->
        								
        								 <div class="fbt" style="background-color:#fcfcfc;padding:2% 5%;margin-top:22px;">
								         
								          <span class="col-lg-4">
								          <label for="mail" class="control-label">Contact Person:</label>
								          </span>
								          <span class="col-lg-4">
								           <label for="mail" class="control-label">Email:</label>
								          </span> 
								          <span class="col-lg-4">
								           <label for="mail" class="control-label">Mobile:</label>
								          </span> 
								          
								          
								          </div>  
								          
                                   
                                    <input type="hidden" name="contactperson_json" id="contactperson"/>
                                    <input type="hidden" value="1" name="updatedata"/>
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary btn-flat" style="float:right" type="submit">Update</button>
                                        
                                        </div>
                                    </div>
          </form> --%>
          
           <form  id="systeminfo" method="post" action="" oninput="starttime.value = starttime.value +':00'" method="post">
                                    
                                        <div class="col-lg-12" style="padding-left: 45px;">
                                        <div class="col-lg-2 control-label" style="text-align:left">
								        <label for="name" class="control-label" style="padding-bottom: 12px;">No of Systems</label>
								         <div class="form-group">
								           <!-- <input type="text" name="totalsystems"  class="form-control" id="totsyscount" style="width:120px;"> -->
								          <span id="totsyscount" class="form-control" style="width:120px;"></span>
								        </div>
								        </div>
								        
								        <div class="col-lg-2 control-label" style="text-align:left">
								        <label for="name" class="control-label" style="padding-bottom: 12px;">Internet Speed</label>
								        
			                            <span id="selectedrange" class="form-control" style="width:120px;"></span>
  
								        </div>
								        
								         <div class="col-lg-6 control-label" style="padding-left:70px;text-align:left">
								          <label for="name" class="control-label" style="padding-bottom: 12px;">Working Hours</label>
								         <span class="input-group bootstrap-timepicker timepicker">
								         
								          <span class="input-group" style="float:left;padding-right:22px">
								          
								          <span id="timepicker1" class="form-control" style="width: 118px;float:left;margin-bottom:0px;font-size:15px;!important"></span>
								         </span>
								         
								          <span class="input-group">
								         
								          <span id="timepicker2" class="form-control atcend_time" style="border-left:1px solid #ddd;width:118px;margin-bottom:0px;float:left;font-size:15px;!important"></span>
								          
								          </span>
								          
								          </span>
        								  </div>
        								  </div>
        								  <div class="clear"></div>
        								  
        								<!-- *** CONTACT PERSON Details ********** -->
        								
        								 <div class="fbt" style="background-color:#fcfcfc;padding:2% 5%;margin-top:22px;">
								         
								          <span class="col-lg-4">
								          <label for="mail" class="control-label">Contact Person:</label>
								          </span>
								          <span class="col-lg-4">
								           <label for="mail" class="control-label">Email:</label>
								          </span> 
								          <span class="col-lg-4">
								           <label for="mail" class="control-label">Mobile:</label>
								          </span> 
								          
								          
								          </div>  
                 </form>
                                <div class="clear"></div>
                                </div>
	<!--**********END System Information **********-->
	
	
	    <!--**********START Update Address **********-->                            
                                <hr><br/>
                                  <div class="userinput-form address-form" id="addresidform">
                                	<h5 class="head-style-1">
                                    <span class="head-text-green">
                                        <strong style="font-size:14px;line-height:20px;padding-bottom:8px;">Test Centre Address</strong>
                                    </span>
    </h5>
    <br/>
                                    
                                    
                                  
        <div class="" style="display: block;">
        
       <div id="addressform">
       
       
        <div style="max-width:90%;margin:0 auto"> 
        <div class="col-lg-5">
        
                                     <div class="form-group" style="padding-bottom:42px">
                                        <label for="cname" class="control-label col-lg-12">Address Line 1 :</label><br/>
                                        <div class="col-lg-12">
                             				 <span class="form-control" id="addrs1"> </span>                           					 
                                        </div>
                                     </div>
         
                                     <div class="form-group" style="padding-bottom:42px">
                                        <label for="cname" class="control-label col-lg-12">Address Line 2 :</label><br/>
                                        <div class="col-lg-12">
                             				 <span class="form-control" id="addrs2"> </span>                           					 
                                        </div>
                                     </div>
                                    
                                    <div class="form-group" style="padding-bottom:42px">
                                        <label for="cname" class="control-label col-lg-12">Landmark :</label><br/>
                                        <div class="col-lg-12">
                             				 <span class="form-control" id="atclankmark"> </span>                           					 
                                        </div>
                                     </div>
                                     
                                       <div class="form-group" style="padding-bottom:42px">
                                        <label for="cname" class="control-label col-lg-12">Nearest Railway Station :</label><br/>
                                        <div class="col-lg-12">
                             				 <span class="form-control" id="railway_station"> </span>                           					 
                                        </div>
                                     </div>
         
        
       </div>
       <div class="col-lg-1"></div>
       <div class="col-lg-5 ">

       
                                     <div class="form-group" style="padding-bottom:42px">
                                        <label for="cname" class="control-label col-lg-12">State :</label><br/>
                                        <div class="col-lg-12">
                             				 <span class="form-control" id="s_stateid"> </span>                           					 
                                        </div>
                                     </div>
       
                                    <div class="form-group" style="padding-bottom:42px">
                                        <label for="cname" class="control-label col-lg-12">City :</label><br/>
                                        <div class="col-lg-12">
                             				 <span class="form-control" id="testcenter_cityid"> </span>                           					 
                                        </div>
                                     </div>
                                     
                                      <div class="form-group" style="padding-bottom:42px">
                                        <label for="cname" class="control-label col-lg-12">Pincode :</label><br/>
                                        <div class="col-lg-12">
                             				 <span class="form-control" id="citycode"> </span>                           					 
                                        </div>
                                     </div>
                                     
                                     <div class="form-group" style="padding-bottom:42px">
                                        <label for="cname" class="control-label col-lg-12">Nearest Bus Stop / Route :</label><br/>
                                        <div class="col-lg-12">
                             				 <span class="form-control" id="bus_stop"> </span>                           					 
                                        </div>
                                     </div>
       </div>  
       </div>
        <div class="clear"></div>
        
        
       
       <br/> <br/> <br/> <br/> 
                                  
                                  
         </div>
                                </div>
                       </div>
                                 <div class="clear"></div>
	<!--**********END Update Address **********-->
	
	
	 <!--**********START Update Password **********-->                            
                                <hr><br/>
                                <div class="userinput-form address-form" id="passwordidform">
                                	<h5 class="head-style-1">
                                	
													
															
                                    <span class="head-text-green">
                                        <strong style="font-size:14px;line-height:20px;padding-bottom:8px;">Change Password</strong>
                                    </span>
									</h5>
									    <br/><br/>
								 <form class="validator form-horizontal" id="passwordchange"  method="post" action="createpassword">
           
                                           <input id="pass" name="oldpass" type="hidden" />
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">Current Password</label>
                                        <div class="col-lg-6">
                                           <input type="password" name="opassword" id="opassword" class="form-control "
																		placeholder="Enter Old Password">
                                        </div>
                                    </div>
                                   
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-3">New Password</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="cemail" type="password" placeholder="New Password" name="password">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Conform Password</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="curl" type="password" placeholder="Conform Password" name="confirmpassword">
                                        </div>
                                    </div>
                                    
                                   <input type="hidden" value="1" name="updatepass"/>
                                   
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary btn-flat" type="submit" style="float:right">Update</button>
                                           
                                        </div>
                                    </div>
                                    
                                </form>
                                </div>
	<!--**********END Update Password **********-->
	
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


<br/><br/>


</div>
</div>
<div id="net_speedmodel" style="display:none;">${net_speed}</div>




<div class="upcontact" id="upcontact"  style="display:none;"></div>
<div id="updatedata" style="display:none;">${alrATC_Complete_Update}</div>


<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.navgoco.js"></script>
<script type="text/javascript" src="js/bootstrap.offcanvas.min.js"></script>

<script type="text/javascript" src="js/dashboard.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/profileupdation.js"></script>




<script type="text/javascript">
$(document).ready(function () {
	
var alrATCBasicDashboard=${alrATCBasicDashboard};

var alrATCAddressPassword=${alrATCAddressPassword};

console.log("===========LIST ONE==========================>>>>>>>>>"+alrATCBasicDashboard);
console.log("===========LIST TWO==========================>>>>>>>>>"+alrATCAddressPassword);

$("#usernameid").text(alrATCBasicDashboard[0][2]);
$("#institutenameid").text(alrATCBasicDashboard[0][3]);
$("#mobileid").text(alrATCBasicDashboard[0][4]);
$("#pstateid").text(alrATCBasicDashboard[0][5]);
$("#pcityid").text(alrATCBasicDashboard[0][6]);
$("#totsyscount").text(alrATCBasicDashboard[0][7]);
$("#selectedrange").text(alrATCBasicDashboard[0][8]);
/* $("#timepicker1").text(alrATCBasicDashboard[0][9]);
$("#timepicker2").text(alrATCBasicDashboard[0][10]); */



/*    START ATC TIMING TRIM */
var starttime = alrATCBasicDashboard[0][9];
starttime1 = starttime.substring(0, 5);
starttime2 = starttime.substring(9, 11);
starttime3=starttime1.concat(starttime2)
$("#timepicker1").text(starttime3);


var endtime = alrATCBasicDashboard[0][10];
endtime1 = endtime.substring(0, 5);
endtime2 = endtime.substring(9, 11);
endtime3=endtime1.concat(endtime2)
$("#timepicker2").text(endtime3);
/*    END ATC TIMING TRIM */


$(".upcontact").text(alrATCBasicDashboard[0][11]);

$("#addrs1").text(alrATCAddressPassword[0][0]);
$("#addrs2").text(alrATCAddressPassword[0][1]);
$("#atclankmark").text(alrATCAddressPassword[0][2]);
$("#s_stateid").text(alrATCAddressPassword[0][3]);
$("#testcenter_cityid").text(alrATCAddressPassword[0][4]);
$("#citycode").text(alrATCAddressPassword[0][5]);
$("#pass").val(alrATCAddressPassword[0][6]);
$("#railway_station").text(alrATCAddressPassword[0][7]);
$("#bus_stop").text(alrATCAddressPassword[0][8]);

/* START CONTACT PERSONS DETAILS */

      var contact=JSON.parse($("#upcontact").text());

     var mycount=0;
     $.each(contact,function(key,value) {
    	 mycount++;
    	 console.log("Mycount sttus--->"+mycount);
    	 console.log("The value is---"+value.person);
    	// $(".fbt").append("<div id='first"+mycount+"div' class='contactpersons-block' style='padding:20px 0!important;'><span class='col-lg-4'><input type='text' class='form-control' id='contact_p'"+mycount+"'  name='contact_p' value='"+value.person+"'></span><span class='col-lg-4'><input type='email' id='contact_email' class='form-control' name='contact_email[]' value='"+value.mail+"'></span><span class='col-lg-3'><input type='text' id='mobile_no' class='form-control' name='mobile_no[]' value='"+value.mobile+"'></span> <span class='col-lg-1'><img class='common-add' id='add-newuser' style='width:24px;margin-top:6px;cursor:pointer' src='images/add-user.png'></span></div>");    	 
    	 
    	 $('.fbt').append($('<div id="first'+mycount+'div" class="contactpersons-block" style="padding:20px 0!important;"><div class="col-lg-4 form-group"><span id="id="contact_p'+mycount+'"" class="form-control">'+value.person+'</span></div><div class="col-lg-4 form-group"><span id="contact_email'+mycount+'" class="form-control">'+value.mail+'</span></div><div class="form-group col-lg-3"><span id="mobile_no'+mycount+'" class="form-control">'+value.mobile+'</span></div><span class="col-lg-1" form-group></span></div>'));         
    	 
    	 var $option =$("#first"+mycount+"div").find('[name="mobile_no[]"]');
   	     var $option1 =$("#first"+mycount+"div").find('[name="contact_email[]"]');
   	     var $option2 =$("#first"+mycount+"div").find('[name="contact_p[]"]');
     	 $('#systeminfo').bootstrapValidator('addField', $option);
	     $('#systeminfo').bootstrapValidator('addField', $option1);
	     $('#systeminfo').bootstrapValidator('addField', $option2);
     });
           


/* $(document).on("click",".common-add",function(){
mycount++; 
			$('.fbt').append($('<div id="first'+mycount+'div" class="contactpersons-block" style="padding:20px 0!important;"><span class="col-lg-4 form-group"><input type="text" class="form-control" id="contact_p'+mycount+'" name="contact_p[]"></span><span class="form-group"><span class="col-lg-4"><input type="email" class="form-control" id="contact_email'+mycount+'" name="contact_email[]"></span></span><div class="col-lg-3"> <div class="form-group"><input type="text" class="form-control" id="mobile_no'+mycount+'" maxlength="10" name="mobile_no[]"></div></div><span class="col-lg-1"><img class="common-rmv" id="first'+mycount+'" style="width:24px;margin-left:12px;margin-top:6px;cursor:pointer" src="images/remove-user.png"></span></div>'));         

var $option =$("#first"+mycount+"div").find('[name="mobile_no[]"]');
var $option1 =$("#first"+mycount+"div").find('[name="contact_email[]"]');
var $option2 =$("#first"+mycount+"div").find('[name="contact_p[]"]');
$('#systeminfo').bootstrapValidator('addField', $option);
$('#systeminfo').bootstrapValidator('addField', $option1);
$('#systeminfo').bootstrapValidator('addField', $option2);
}); 


$(document).on("click",".common-rmv",function(){
  
      var xx=$(this).attr("id")+"div";
      
      var $option =$('#'+xx).find('[name="mobile_no[]"]');
      var $option1 =$('#'+xx).find('[name="contact_email[]"]');
	  $('#systeminfo').bootstrapValidator('removeField', $option);
	  $('#systeminfo').bootstrapValidator('removeField', $option1);
	  $('#'+xx).remove();
}); 
 */

/* END CONTACT PERSONS DETAILS */

/* 	var pcityidmodelval=$("#cityid").find('option:contains("'+$("#pcityidmodel").text().toUpperCase()+'")').val(); */


   var selectedrangeval=$("#selectedrange").find('option:contains("'+alrATCBasicDashboard[0][8].toUpperCase()+'")').val();

   
	
	$("#selectedrange").val(selectedrangeval); 

	
	
   /*  $("#basicityid").text(pcityidmodel); */
	

   
   function cityselect(selectedstate,status,dateValue)
   {
	   $.ajax({
	 		 url:'atccity',
	 		 type:'post',
	 		 data:{'state':selectedstate},
	         success:function (response) 
	     	 {
	        		
	        	 
	        	 if(status=="1")
	        		 {
	        		    document.getElementById('cityid').innerHTML=response;
		                if(dateValue!="")
		                {
		                console.log("The data list is-->"+dateValue.toUpperCase());	
		                var pcityidmodel=$("#cityid").find('option:contains("'+dateValue.toUpperCase()+'")').val();
		                $("#cityid").val(pcityidmodel);
		                }
	        		 }
	        
        		 
	        	 else
	        		 {
	        		    document.getElementById('pcityid').innerHTML=response;
		                if(dateValue!="")
		                {
		                console.log("The data list is-->"+dateValue);
		                var pcityidmodel=$("#pcityid").find('option:contains("'+dateValue.toUpperCase()+'")').val();
		                $("#pcityid").val(pcityidmodel);
		                }
	        		 }
	               
	         },
	          error: function() 
	         {
	         }
	 		 
	        });
   }



    //*****========= END ATC TIMINGS==========***
   

	/* ================= PASSWORD VALIDATION=================== */
	
	

    if($("#pass_status").text()==="passchanged"){
    	 $('#successdata').text("Your Password has been Changed Successfully...!");
     	 $('#chksuccess').fadeIn('slow');
    	
    }
    
	$('#pass').trigger('blur');
            
              if($("#status").val()==="Changed")
                  {
            	  $('#successdata').text("Your Password has been Changed Successfully...!");
              	  $('#chksuccess').fadeIn('slow');
              	
              	
                  }
              
              else
                  {
                  
                  }
              $('.close').click(function(){
                  $('.alert').fadeOut('slow');
                
                     });

              
    $('#passwordchange').bootstrapValidator({

    	feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },

        fields:{      
        	oldpass: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    }
                    
                }
            },
           opassword: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    
                    identical: {
                        field: 'oldpass',
                        message: 'The Password that you have entered is Wrong. Please enter your Old Password  '
                    }
                }
            },
            
       	 password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    different: {
                        field: 'fname',
                        message: 'The password cannot be the same as your name'
                    },
                    callback: {
                        message: 'The password is not valid',
                        callback: function(value, validator, $field) {
                            if (value === '') {
                                return true;
                            }

                            // Check the password strength
                            if (value.length < 8) {
                                return {
                                    valid: false,
                                    message: 'Password must contain atleast 8 characters'
                                };
                            }

                            return true;
                        }
                    }
                }
            },
            confirmpassword: {
                validators: {
                    notEmpty: {
                        message: 'Please retype password the field cannot be empty'
                    },
                    identical: {
                        field: 'password',
                        message: 'The password and its confirm are not the same'
                    },
                    callback: {
                        message: 'The password is not valid',
                        callback: function(value, validator, $field) {
                            if (value === '') {
                                return true;
                            }

                            // Check the password strength
                            if (value.length < 8) {
                                return {
                                    valid: false,
                                    message: 'It must be more than 8 characters long'
                                };
                            }

                            return true;
                        }
                    }
                }
            }
       	 
        }

    }).on('status.field.bv', function(e, data) {
        if (data.bv.isValid()) 
        {
//            data.bv.disableSubmitButtons(false);
            $('#regsubmit').removeClass('btn-default').addClass('btn-primary');
        }
        else 
        {
//            data.bv.disableSubmitButtons(true);
        }
    });



			    
        
});





</script>
<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>

</html>