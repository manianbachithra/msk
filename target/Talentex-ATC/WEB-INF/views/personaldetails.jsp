<! DOCTYPE html> 
<head>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Talentex ATC</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link rel="stylesheet" href="css/indexstyle.css" />
<link rel="stylesheet" href="css/registration.css" />
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300'>
 <style>
#passwordcreation .form-control-feedback {
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

<h1 style="font-size: 20px;margin-bottom: 15px;padding-left: 28px;padding-top: 20px;">Basic Information</h1>
<legend style="padding: 25px;">
          <span id="" style="cursor:pointer;opacity:0.2;" class=""><span class="number">1</span>Your basic info</span>
          <span id="personal-tab" style="padding-left:15px;cursor:pointer;opacity:0.2;" class="tab activeTab"><span class="number">2</span>Create Password</span>
          <span id="" style="padding-left:15px;cursor:pointer;opacity:0.2;" class=""><span class="number">3</span>System Info</span>
          <span id="" style="padding-left:15px;cursor:pointer;opacity:0.2;" class=""><span class="number">4</span>Address</span>
          </legend>

    <div class="userinput-form">
        
        <div class="personal-tab1 commonforms" style="display: block;">
        
         <form action="createpassword" id="passwordcreation" method="post">

          <fieldset> 
           <div class="form-group">
          <label for="password">Create Password :</label>
          <input type="password" name="password" id="createpassword" required="required" Placeholder="Create new password" class="form-control">
           </div>
            <div class="form-group">
          <label for="confirmpassword">Confirm Password :</label>
          <input type="password" Placeholder="Confirm password" class="form-control" id="repassword" name="confirmpassword"/>        
            </div>          
          </fieldset>
        <input type="hidden" value="0" name="updatepass"/>
        <input type="submit" id="passwordsubmit"class="nxt-button next-info2" style="padding: 19px 39px 18px 39px;color: #FFF;background-color: #008DDE;"  value="Next">

         </form>
         
        </div>
        
       
         </div>
      
    

</div>

<div class="col-lg-4">

</div>
</div>

<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>

<!-- FOOTER -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/signup.js"></script>




       <script type="text/javascript">
          

            $(document).ready(function(){

           	 $(".interspeed" ).change(function() {

           		   var xx=	 $("#selectedrange option:selected").text();
                      console.log(xx);
           		 
           	 });
           	 
        	 $("#passwordcreation").bootstrapValidator({
        		 
        		 feedbackIcons: {
                     valid: 'glyphicon glyphicon-ok',
                     invalid: 'glyphicon glyphicon-remove',
                     validating: 'glyphicon glyphicon-refresh'
                 },
                 

                 fields:{      	 
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
//                     data.bv.disableSubmitButtons(false);
                     $('#passwordsubmit').removeClass('btn-default').addClass('btn-primary');
                 }
                 else 
                 {
//                     data.bv.disableSubmitButtons(true);
                 }
             });
                	 
           	 
            });
          
        </script>
</body>

</html>