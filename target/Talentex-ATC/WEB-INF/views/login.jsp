
<! DOCTYPE html> 
<html>
<head>  
<title>TalentEx - ATC | Login</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link rel="stylesheet" href="css/indexstyle.css" />
<link rel="stylesheet" href="css/login.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="icon" type="img/ico" href="images/ex.ico">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300'>
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
<p>MASSIVE ONLINE CAMPUS DRIVE</p>
</div>
</div>

<div class="container">
<div class="col-lg-12 loginform row">

<div class="login-navbar col-lg-12">
<div class="col-lg-7">
Log in to Your Mocd portal
</div>
<div class="col-lg-4">
Not a Member?
</div>
</div>

<div class="col-lg-12">
	<div id="login" class="col-lg-7">

		<div class="userexits" style="display:none;">${username}</div>
		<h1 class="invalidusr" style="display:none;">${invaliduser}</h1>
		<form action="userlogin" id="loginform" method="post">

			<fieldset>
               				
				 <div class="alert alert-danger alert-dismissible" id="emaildanger2"
					role="alert" style="display:none;!important">
					<button type="button" class="close">
					
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<div>Plese Check your Email ID. & Password</div>
					<div id="emaildangerdata"></div>
				</div>
				
                <div class="form-group">
                <span style="display: block;font-weight: bold;padding: 0 0 6px;">Your Username</span>
				<p style="margin-bottom:20px"><input type="text" Placeholder="username" name="email" id="checkuser" autocomplete="off" ></p> 
				</div>
				
				<div class="form-group">
                <span style="display: block;font-weight: bold;padding: 0 0 6px;">Password</span>
				<p style="margin-bottom:20px"><input type="password" Placeholder="password" id="pass_click"name="password" autocomplete="off"></p> 
                </div>
                
                <p id="forget_pass">Forgot your password?</p>
               
				<p><input type="submit" value="Login" class="btn btn-primary" id="chkuser" class="logsubmit"></p>

			</fieldset>
       
		</form>
		       <div class="alert alert-danger alert-dismissible" id="emaildanger"
					role="alert" style="display: none;">
					<button type="button" class="close">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<div id="emaildangerdata"></div>
				</div>

				
				 <div class="alert alert-success alert-dismissible" id="emailsucess"
					role="alert" style="display: none;">
					<button type="button" class="close">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<div id="emailsucessdata"></div>
				</div>
				
				<div class="alert alert-danger alert-dismissible" id="chkdanger"
					role="alert" style="display: none;">
					<button type="button" class="close">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<div id="dangerdata"></div>
				</div>
                <div class="forget form-group">
                <span style="display: block;font-weight: bold;padding: 0 0 6px;">Registered Email</span>
				<p style="margin-bottom:20px"><input type="email" Placeholder="Enter Registed Email" name="send_email" id="rstmail" class="errorbox" required></p>
					<p><input type="button" value="Send Rest Password" class="btn btn-success" id="recovary_email"></p>
				
				</div>
		

		
	</div> <!-- end login -->
	
	<div class="col-lg-5 not-member">
	<h3>New user Registration</h3>

	  <a href="registration"><button type="button" class="crate_btn">Create New Account</button></a>
	</div>
	
	
	
	</div>

</div>
</div>

<!-- FOOTER -->

		<!-- <footer class="footer-distributed">

			<div class="footer-right">

				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-linkedin"></i></a>
				<a href="#"><i class="fa fa-github"></i></a>

			</div>

			<div class="footer-left">

				<p class="footer-links">
					<a href="#">Home</a>
					·
					<a href="#">Blog</a>
					·
					<a href="#">Pricing</a>
					·
					<a href="#">About</a>
					·
					<a href="#">Faq</a>
					·
					<a href="#">Contact</a>
				</p>

				<p>Company Name &copy; 2015</p>
			</div>

		</footer> -->
<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>

<style>
#forget_pass{
cursor:pointer;
}
.forget{
margin-top:15px;
display:none;
}
.errorbox{
border:1px solid red;
}
.rmv-errorbox{
border:1px solid #555;
background-color:#f0f0f0;
}

</style>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script>

$(document).ready(function(){

	var tmp=$(".invalidusr").text();
	console.log("-------->"+tmp);

	if(tmp=="invaliduser"){
		$("#emaildanger2").show().fadeOut(6000);
		}
	
	
   $('#forget_pass').click(function(){
	   
   $('.forget').toggle();
	
   });

   $('#chkuser').on("click",function() {


var email = $('#checkuser').val();

if (email === '' || email === 'null' || email === null || emailValid(email) === false) 
{

}

else 
{
	console.log("The current email is-->"+email);
	
}

   });


   /*	 ------------------Bootstrap Validations-------------------*/

	 $('#loginform').bootstrapValidator({

		
         fields:{
        	 email: {
                 message: 'The Institution name is not valid',
                 validators: {
                     notEmpty: {
                         message: 'The email address is empty/not valid or is already registered with us'
                     },
                     regexp: 
                     {              	 
                    regexp: /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i,
                    message: 'The email address is not a valid'
                     }
                 }
     
             },
             password: {
                 message: 'Enter Corresponding Password',
                 validators: {
                     notEmpty: {
                         message: 'Enter Corresponding Password'
                     }
                 }
             },
            
             
         }

	 }).on('status.field.bv', function(e, data) {
         if (data.bv.isValid()) 
         {
//             data.bv.disableSubmitButtons(false);
             $('.logsubmit').removeClass('btn-default').addClass('btn-primary');
         }
         else 
         {
//             data.bv.disableSubmitButtons(true);
         }
     });





       
   
   function emailValid(emailAddress) {
       var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
       return pattern.test(emailAddress);
   };

   
   
   $('#recovary_email').on("click",function() {
 
	   var rstemail=$('#rstmail').val();

	    console.log("entered email--->"+rstemail);
	    if (rstemail === '' || rstemail === 'null' || rstemail === null || emailValid(rstemail) === false) 
        {
	    	  console.log("=========>invalid email--->"+rstemail);
	    	 
	    	  $('.errorbox').css({"border-color": "red", 
	              "border-width":"1px", 
	              "border-style":"solid",
	              "backgroundColor":'#fff'});
              
        }
	    else 
        {
	    	
	        
        	console.log("The email will send-->"+rstemail);
            $.ajax({
                url: 'forgetpasswordemail',
                type: 'GET',
                dataType: 'text',
                data: {'email': rstemail},
                success: function(responseText) {
                	console.log("The check responseText is -->"+responseText);
                	
                    $('.close').click(function() {
                                $('.alert').fadeOut('slow');
                            });

                    var res = $.trim(responseText).replace(" ","");
                       console.log("rest value is"+res);
                         
                    if (res === "true" || res === true) 
                    {
                       /*  $('#rstmail').val("");
                        $("#emaildangerdata").text("Plese enter correct registred email id.");
                        $("#emaildanger").show();
                        $('#registrationform').bootstrapValidator('revalidateField', 'user_email'); 
                        $("#rstmail").val("");*/
                        $("#emailsucess").show();
                        $("#emaildanger").hide();
                        $('.errorbox').css({"border-color": "#e5e5e5", 
          	              "border-width":"1px", 
          	              "border-style":"solid",
          	              "backgroundColor":'#e5e5e5'});
                        $("#emailsucessdata").text("Password reset was sent to your Email Id.");
                        //$('.forget').bootstrapValidator('revalidateField', 'send_email');
                    } 
                    else 
                    {
                    	 $("#rstmemaildangerdataail").val("");
                    	 $('#rstmail').addClass("rmv-errorbox");
                         $("#emaildanger").show();
                         $("#emailsucess").hide();
                         $("#emaildangerdata").text("Plese enter correct registred email id.");
                        // $('.forget').bootstrapValidator('revalidateField', 'send_email');

                        // $('.forget').bootstrapValidator('revalidateField', 'send_email');

                    }
                },
                error: function() {}

            });
        }
        
   });


/*   ========================= CHECK VALID USER
*************************     */
   

   //Disable part of page
   $('#pass_click').bind('cut copy paste', function (e) {
       e.preventDefault();
   });


});
</script>
</html>