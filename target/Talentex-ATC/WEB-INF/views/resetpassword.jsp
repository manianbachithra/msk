
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
Create your new password
</div>
<div class="col-lg-4">

</div>
</div>

<div class="col-lg-12" style="padding:60px 0">
	<div id="login" class="col-lg-7">

                                 <form class="validator form-horizontal" id="passwordchange"  method="post" action="resetpass">
           
                                  
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
                                            <button class="btn btn-primary btn-flat" type="submit" style="float:right">Submit</button>
                                           
                                        </div>
                                    </div>
                                    
                                </form>

		     
		
	</div> <!-- end login -->
	
	<div class="col-lg-5 not-member">
	
	</div>
	
	
	
	</div>

</div>
</div>
<div class="modalsuccess" style="display:none;">${success}</div>
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

	var tmp=$(".userexits").text();
	console.log("-------->"+tmp);
	
   $('#forget_pass').click(function(){
	   
   $('.forget').toggle();
	
   });


   
   $('#passwordchange').bootstrapValidator({

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
//           data.bv.disableSubmitButtons(false);
           $('#regsubmit').removeClass('btn-default').addClass('btn-primary');
       }
       else 
       {
//           data.bv.disableSubmitButtons(true);
       }
   });

  


});
</script>
</html>