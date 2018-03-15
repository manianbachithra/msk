<! DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Talentex | ATC - SystemInfo</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/indexstyle.css" />
<link rel="stylesheet" href="css/registration.css" />
<link rel="stylesheet" href="css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />

<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" type="text/css"	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" type="text/css"	href="https://fonts.googleapis.com/css?family=Open Sans">
<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300'>
</head>

<style>

.form-control-feedback{
right:30px;
top: 6px;
}

.timepicker i {
	padding: 0px;
	margin: 0px;
	right:0px;
}

.contactpersons-block i {
right:0px;
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
.common-add{
  cursor:pointer;
}
.has-feedback .form-control {
   padding-right: 0px;
}
.optick i{ 
top:40px;
}
</style>

<body>

	<header>
		<div class="container">
			<div class="col-lg-6 mainlogo">
				<img src="images/talentexcb.png">
			</div>
			<div class="col-lg-6 top-icons"></div>
		</div>
	</header>

	<div class="menunav">
		<div class="container">
			<p style="padding-left: 48px">MASSIVE ONLINE CAMPUS DRIVE</p>
		</div>
	</div>
	<div class="container2 row">
		<div class="col-lg-9 formbody">

			<h1	style="font-size: 20px; margin-bottom: 15px; padding-left: 28px; padding-top: 20px;">Basic	Information</h1>
			<legend style="padding: 25px;">
				<span id="" style="cursor: pointer; opacity: 0.2;" class=""><span
					class="number">1</span>Your basic info</span> <span id=""
					style="padding-left: 15px; cursor: pointer; opacity: 0.2;" class=""><span
					class="number">2</span>Create Password</span> <span id="system-tab"
					style="padding-left: 15px; cursor: pointer; opacity: 0.2;"
					class="tab activeTab"><span class="number">3</span>System
					Info</span> <span id=""
					style="padding-left: 15px; cursor: pointer; opacity: 0.2;" class=""><span
					class="number">4</span>Address</span>
			</legend>

			<div class="userinput-form">

				<div class="system-tab1 commonforms" style="display: block;">
					 
					
					<form action="systeminfodetails" id="systeminfo"	oninput="starttime.value = starttime.value" method="post">
                        <fieldset>
                        
                         <div class="col-lg-12">
                         <h4 class="col-lg-8" style="background-color: #cce8f9;padding: 8px;margin-bottom: 30px;">System info that can be dedicated for the use of MOCD
                         
                         <div class="help-tip">
				         <p>1.We would like to know the no. of system that you can dedicate for taking MOCD Apptitue test & Internet speed dedicated for this purpose<br/><br/>
				         2.We would also like to know working hours of college where the address can take assesment
				         </p>
			             </div>
			             
                         </h4>
                         </div>
						
                            <div class="col-lg-3">
								 <label for="name">No of Systems</label>
								 <div class="form-group optick">
								<input type="text" placeholder="No. of Systems"	name="totalsystems" style="width: 120px" required>
							</div>
							</div>

                            <div class="col-lg-3 optick"> 
							
								<label for="name">Internet	Speed</label> 
								<div class="form-group">
								<select id="selectedrange" name="netspeed"class="form-control interspeed" style="width: 120px" id="netid">
								<option value="-5" selected disabled>Net Speed</option>
										<c:forEach var="netspeed" items="${netspeed}">
											<option value="${netspeed.id}">${netspeed.ranges.toUpperCase()}</option>
										</c:forEach>
								</select>
								
							</div>
							</div>

							<div class="col-lg-6" style="padding-left: 70px"> 
							<label for="name" style="float:none">Working Hours</label> 
							<span	class="input-group bootstrap-timepicker timepicker">

									<div class="form-group timepicker1" style="float: left">
										<span class="input-group bootstrap-timepicker timepicker"
											style="float: left; padding-right: 32px"> <input
											type="text" id="timepicker1" name="starttime"
											placeholder="Start Time"
											style="width: 90px; float: left; margin-bottom: 0px; font-size: 15px;!important">


											<span class="input-group-addon" style="border: none"><i
												class="glyphicon glyphicon-time glyphicon-time1"></i></span>
										</span><br>
										<span id="start_timehide" style="display:none">Start time</span>
									</div>

									<div class="form-group timepicker2" style="float: left">
										<span class="input-group bootstrap-timepicker timepicker"
											style="padding-right: 32px"> <input type="text"
											id="timepicker2" name="endtime" placeholder="End Time"
											style="border-left: 1px solid #ddd; width: 90px; margin-bottom: 0px; float: left; font-size: 15px;!important">
											<span class="input-group-addon" style="border: none"><i
												class="glyphicon glyphicon-time glyphicon-time2"></i></span>

										</span>
                                  <span id="end_timehide" style="display:none">End time</span>
									</div>
							</span>


							</div>
							<div class=".clear"></div>

							<div class="col-lg-12">
                         <h4 class="col-lg-8" style="background-color: #cce8f9;padding: 8px;margin-bottom: 30px;">Persons Dedicated for MOCD
                         
                         <div class="help-tip">
				         <p>
				        Please provide list of persons who act as lab Coordinates/Invegilators, during the period of MOCD Assesment
				         </p>
			             </div>
			             
                         </h4>
                         </div>

							<div class="col-lg-12 fbt"	style="background-color: #fcfcfc; padding: 15px 0; margin-top: 22px;">
								<div class="col-lg-4"> <label for="mail">Contact Person:</label>
								</div> 
								<div class="col-lg-4"> <label for="mail">Email:</label>
								</div> 
								<div class="col-lg-4"> <label for="mail">Mobile:</label>
								</div>
								<div class="contactpersons-block" id="first0div">
									<div class="col-lg-3"> 
									<div class="form-group">
									<input type="text" id="c_person" name="contact_p[]" placeholder="Contact Person Name"/>
									</div>
									</div>
									
								    <div class="col-lg-4">
									<div class="form-group">
									<input type="email" id="contact_email" name="contact_email[]" placeholder="Email"/>
									</div>
									</div>

									<div class="col-lg-3">
										<div class="form-group">
											<input type="text" id="mobile_no" name="mobile_no[]"  maxlength="10" placeholder="Mobile No"/>
										</div>
									</div> 
									
									<div class="col-lg-2"> 
									<img class="common-add"	id="add-newuser"src="images/add-user.png">
									<span class="common-add"style="position: relative;top: 4px;padding: 10px;">ADD</span>
									</div>
									
								</div>

							</div>


						</fieldset>
						<input type="hidden" value="0" name="updatedata" />
						<div align="center">
							<button class="nxt-button" style="width: 50%" type="submit">Next</button>
						</div>
<input type="hidden" name="contactperson_json" id="contactperson"/>
					</form>
				</div>
			</div>



		</div>

		<div class="col-lg-3 "></div>
	</div>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>

	<script type="text/javascript">
	
            $('#timepicker1').timepicker();
            $('#timepicker2').timepicker();
           /*  $('#timepicker1').val("8:00 AM");
            $('#timepicker2').val("4:00 PM"); */

            $(document).ready(function(){

           	 $( ".interspeed" ).change(function() {
           		   var xx=	 $("#selectedrange option:selected").text();
           		 
           	 });

           	 $( "#timepicker1,.glyphicon-time1" ).click(function() {
           		$('#timepicker1').timepicker('showWidget');
           		$('#timepicker1').val("8:00 AM");
           		$('#start_timehide').show();
           		
          	 });
          	 
           	 $( "#timepicker2,.glyphicon-time2" ).click(function() {
           	    	$('#timepicker2').timepicker('showWidget');
            		$('#timepicker2').val("4:00 PM");
            		$('#end_timehide').show();
           	 });
           	
           	 
           	 $( "#timepicker1" ).change(function() {
           		$('#systeminfo').bootstrapValidator('revalidateField', 'starttime');
         	 });
           	 
           	$( "#timepicker2" ).change(function() {
           		$('#systeminfo').bootstrapValidator('revalidateField', 'endtime');
         	 });
           	
           	 
           	/*	 ------------------Bootstrap Validations-------------------*/

        	 $('#systeminfo').bootstrapValidator({
        		 feedbackIcons: {
                     valid: 'glyphicon glyphicon-ok',
                     invalid: 'glyphicon glyphicon-remove',
                     validating: 'glyphicon glyphicon-refresh'
                 },
                 fields:{
               'contact_email[]': {
                		 validators: {
                			 notEmpty: 
                             {
                                 message: 'The email address is empty'
                             },
                            regexp: 
                            {              	 
                            regexp: /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i,
                            message: 'The email address is not a valid'
                            }
                         }
                	 },
                	 'contact_p[]': {
                		 validators: {
                			 notEmpty: 
                             {
                                 message: 'The Contact Person Name is empty'
                             }
                         }
                	 },
                		 
                	 totalsystems: {

                         validators: {
                             notEmpty: 
                             {
                                 message: 'Enter current Dedicated systems for taking test'
                             }, 
                             digits: {
                                 message: 'The Dedicated systems can contain digits only'
                             },
                             between: 
                             {
                                 min: 11,
                                 max: 999,
                                 message: 'The System Count must be between 11 and 999'
                             }
                        
                         }
                     },
                     netspeed: {

                         validators: {
                             notEmpty: 
                             {
                                 message: 'Select Internet speed'
                             }
                         }
                     },
                     starttime: {
                         validators: {
                             notEmpty: 
                             {
                                 message: 'select Start time'
                             },
                            min:
                            {
                            field: 'endtime',
                            message: 'End Time is lower than Start Time'
                            }
                         }
                     },
                     endtime: {

                         validators: {
                             notEmpty: 
                             {
                                 message: 'select Start time'
                             },
                             max:
                            {
                            field: 'starttime',
                            message: 'End Time is lower than Start Time'
                            }
                         }
                     },
                     'mobile_no[]': {

                    	 validators: {
                             digits: {
                                 message: 'The phone number can contain digits only'
                             },
                             notEmpty: {
                                 message: 'The phone number is required / You might have entered an existing mobile number'
                             },
                             stringLength: {
                                 min: 10,
                                 max: 10,
                                 message: 'The phone number must have 10 digits'
                             },
                             regexp: {
                                 regexp: /^[789]\d{9}$/i,
                                 message: 'Enter a valid phone number'
                             }
                         }
                     }

                 }

        		 
        	  }).on('status.field.bv', function(e, data) {
        	         if (data.bv.isValid()) 
        	         {
        	             $('#regsubmit').removeClass('btn-default').addClass('btn-primary');
        	             $("#contactperson").val("");
	        	             var getitem=[];
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
        	             
        	         }
        	         else 
        	         {
        	        	 
        	        	 
        	         }
        	    });
           	
           	
        	 var mycount = 0;
        	 
        	 $(document).on("click",".common-add",function(){
        	  mycount++; 
        	  $('.fbt').append($('<div id="first'+mycount+'div" class="contactpersons-block" style="padding:10px 0!important;margin:10px 0!important"><div class="col-lg-3"><div class="form-group"><input type="text" class="form-control" id="contact_p'+mycount+'" name="contact_p[]"></div></div><div class="col-lg-4"><div class="form-group"><input type="email" class="form-control" id="contact_email'+mycount+'" name="contact_email[]"></div></div><div class="col-lg-3"> <div class="form-group"><input type="text" class="form-control" id="mobile_no'+mycount+'" maxlength="10" name="mobile_no[]"></div></div><span class="col-lg-1"><img class="common-rmv" id="first'+mycount+'" style="width:24px;margin-left:12px;margin-top:6px;cursor:pointer" src="images/remove-user.png"></span></div>'));         
        	 
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
        		      var $option2 =$('#'+xx).find('[name="contact_p[]"]');
                	  $('#systeminfo').bootstrapValidator('removeField', $option);
                	  $('#systeminfo').bootstrapValidator('removeField', $option1);
                	  $('#systeminfo').bootstrapValidator('removeField', $option2);
                	  $('#'+xx).remove();
        	  }); 
           	     	
            });
          
        </script>

</body>

</html>