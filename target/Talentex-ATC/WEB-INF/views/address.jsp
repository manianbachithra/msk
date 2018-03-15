<! DOCTYPE html> 
<html>
<head>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>TalentEx | ATC - Address</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/indexstyle.css" />
<link rel="stylesheet" href="css/registration.css" />
<link rel="stylesheet" href="css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link rel="stylesheet" href="css/font-awesome.min.css" />

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<style>
#addressform .form-control-feedback {
	top: 22px;
	right: -25px;
}
</style>
</head>

<body>

<header>
<div class="container">
<div class="col-lg-6 mainlogo">
<img src="images/talentexcb.png">               
</div>
<div class="col-lg-6 top-icons">
<div class="top-info">

						<div class="clear"></div>
	
</div>



</div>
</div>
</header>

<div class="menunav">
<div class="container">
<p style="padding-left:48px">MASSIVE ONLINE CAMPUS DRIVE</p>
</div>
</div>

<div class="container2 row">
<div class="col-lg-8 formbody">

<legend style="padding: 25px;padding-top:50px;">
          <span id="" style="cursor:pointer;opacity:0.2;" class=""><span class="number">1</span>Your basic info</span>
          <span id="" style="padding-left:15px;cursor:pointer;opacity:0.2;" class=""><span class="number">2</span>Create Password</span>
          <span id="" style="padding-left:15px;cursor:pointer;opacity:0.2;" class=""><span class="number">3</span>System Info</span>
          <span id="" style="padding-left:15px;cursor:pointer;opacity:0.2;" class="tab activeTab"><span class="number">4</span>Address</span>
</legend>

    <div class="userinput-form address-form" style="padding-right:0px;">
        <div class="" style="display: block;">
        <h4 style="padding-left:20px;padding-top:15px;">Test Center Address</h4>
        
       <form action="addressreg" method="post" id="addressform">
        <fieldset> 
        <div class="col-lg-5">
         <div class="form-group">
          <label for="name"><span style="color:#d9534f;padding:0px 3px"> * </span> Address Line 1 :</label>
          <input type="text" class="form-control" name="p_address_line_1" placeholder="Address" required>
        </div>
         <div class="form-group">
          <label for="name">Address Line 2 :</label>
          <input type="text" class="form-control"name="p_address_line_2" placeholder="Address">
          </div>
           <div class="form-group">
         <label for="name">Landmark :</label>
         <input type="text" class="form-control" name="p_landmark" placeholder="Landmark">
        </div>
         <div class="form-group">
         <label for="name"> Nearest Bus Stop /Route :</label>
         <input type="text" class="form-control" name="bus_stop" placeholder="Bus Stop /Route">
        </div>
        
        
       </div>
       <div class="col-lg-1"></div>
       <div class="col-lg-5 ">
       
   
         <div class="form-group">
        <label for="mail"><span style="color:#d9534f;padding:0px 3px"> * </span>State:</label>
        <select name="state" class="form-control sel-state" id="stateid" required>
         <option value="-1" disabled selected>Select your State</option>
          <c:forEach var="statelist" items="${statelist}">
			<option value="${statelist.id}">${statelist.state.toUpperCase()}</option>
		  </c:forEach>
        </select> 
          </div>
        
        
        
           
         <div class="form-group">
       <label for="mail"><span style="color:#d9534f;padding:0px 3px"> * </span>City / District:</label>
        <select  name="city" class="form-control" id="cityid" required>
        <option value="-1" selected disabled>Select Your State First</option>
          <c:forEach var="citylist" items="${citylist}">
			<option value="${citylist.id}">${citylist.city.toUpperCase()}</option>
		  </c:forEach>
        </select> 

         </div>
         
         <div class="form-group">
        <label for="name"><span style="color:#d9534f;padding:0px 3px"> * </span> Pincode :</label>
        <input type="text" name="p_pincode" class="form-control" placeholder="Pincode" maxlength="6">
      </div>
      <div class="form-group">
         <label for="name"> Nearest Railway Station :</label>
         <input type="text" class="form-control" name="railway_station" placeholder="Nearest Railway Station">
        </div>
       </div>   
       
        <div class="clear"></div>
       
     
          </fieldset>
           <input type="hidden" value="0" name="updatedata"/>
        <input type="submit" class="nxt-button next-info1" style="width:25%;padding:10px;margin-left:35%" value="Submit" data-toggle="modal" data-target="#myModal">
        </form> 
        
        
        
        </div>
       
         </div>
      
         
         </div>
    

</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>

       <script type="text/javascript">
       
            $(document).ready(function(){
            	
            	

            	 $( ".sel-state" ).change(function() { 

           		   var selectedstate = $("#stateid option:selected").text();
                      console.log(selectedstate);

              		 $.ajax({
                  		 url:'atccity',
                  		 type:'post',
                  		 data:{
                                 'state':selectedstate
                      		 },
                      		 success:function (response) 
                      		 {
                      			 console.log("my selected city list are===>"+response); 
                      			 
                      			 document.getElementById('cityid').innerHTML=response;
                                 
                                 $("#cityid option[value='-1']").remove();
                                 $("#cityid").append("<option value='0' selected disabled>Select Your city</option>");
                                 
                               },
                          	 error: function() 
                               {
                               console.log("ERROR");
                               }
                  		 
           	 });
              });
  
            	 
            	 
            	 $( "#addresscheckbox" ).change(function() {
            		 
             		   var getaddress=$(this).attr("checked").length;
             		   console.log("The status of checked---->"+getaddress);
             		   
             		   
                   });
            	 
            		/*	 ------------------Bootstrap Validations-------------------*/

            	 $('#addressform').bootstrapValidator({
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields:{
                    	p_address_line_1: {
                            message: 'The Address is not valid',
                            validators: {
                                notEmpty: {
                                    message: 'The Address is required and cannot be empty'
                                }
                            }
                        },
                        p_pincode: {
                       	 message: 'The Pincode is not valid',
                           validators: {
                               notEmpty: 
                               {
                                   message: 'The Pincode is  required and cannot be empty '
                               },
                               stringLength: {
                                   min: 6,
                                   max: 6,
                                   message: 'Pin number must be 6 digits'
                               },
                               regexp: {
                                   regexp: /^[0-9]{1,10}$/,
                                   message: 'Enter a valid pin number'
                               }
                           }
                       },
                      state: {
                            message: 'Select your State',
                            validators: {
                                notEmpty: {
                                    message: 'The State name is required and cannot be empty'
                                }
                            }
                        },
                      
                        city: {
                            message: 'Select your City',
                            validators: {
                                notEmpty: {
                                    message: 'The City name is required and cannot be empty'
                                }
                            }
                        }
                        
                    }
                }).on('status.field.bv', function(e, data) {
                    if (data.bv.isValid()) 
                    {
//                        data.bv.disableSubmitButtons(false);
                        $('#addressid').removeClass('btn-default').addClass('btn-primary');
                    }
                    else 
                    {
//                        data.bv.disableSubmitButtons(true);
                    }
                });
            	 
        	 
             });
          
        </script>
</body>

</html>