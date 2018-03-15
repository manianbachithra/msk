<! DOCTYPE html> 
<html>
<head>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Talentex ATC</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link rel="stylesheet" href="css/indexstyle.css" />
<link rel="stylesheet" href="css/registration.css" />

<link rel="stylesheet" href="css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>

        <link rel="icon" type="img/ico" href="images/ex.ico">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300'>
</head>
<style>
#registrationform .form-control-feedback {
	top: 22px;
	right: -25px;
}
</style>
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
<div class="col-lg-7 formbody">

<h1 style="font-size: 20px;margin-bottom: 15px;padding-left: 28px;padding-top: 20px;">Sign Up</h1>
<legend style="padding: 25px;">
          <span id="basic-tab" style="cursor:pointer;opacity:0.2;" class="tab activeTab"><span class="number">1</span>Your basic info</span>
          <span id="" style="padding-left:15px;cursor:pointer;opacity:0.2;" class=""><span class="number">2</span>Create Password</span>
          <span id="" style="padding-left:15px;cursor:pointer;opacity:0.2;" class=""><span class="number">3</span>System Info</span>
          <span id="" style="padding-left:0px;cursor:pointer;opacity:0.2;" class=""><span class="number">4</span>Address</span>
          </legend>
               <div class="alert alert-danger alert-dismissible" id="emaildanger"
					role="alert" style="display: none;">
					<button type="button" class="close">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<div id="emaildangerdata"></div>
				</div>
				<div class="alert alert-danger alert-dismissible" id="chkdanger"
					role="alert" style="display: none;">
					<button type="button" class="close">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<div id="dangerdata"></div>
				</div>
    <div class="userinput-form">
        <div class="basic-tab1" style="display: block;">
       <form action="userregister" id="registrationform" method="post">
       
        <div class="form-group">
          <label for="name">Institution Name:</label>
          <input type="text" name="insit_name" class="form-control" placeholder="Your Institution Name" required="required" autofocus autocomplete="off">
         </div>
         
         <div class="form-group">
          <label for="email">Email:</label>

          <input type="email" id="uemail" name="user_email" data-toggle="tooltip" data-placement="top" data-bv-remote-name="email" autocomplete="off" data-html="true" class="form-control" placeholder="Your Email" required>

          </div>
      
          <div class="form-group">
          <label for="mobile">Mobile:</label>
          <input type="text" name="user_mobile" class="form-control" placeholder="Enter Mobile Number" maxlength="10" id="mobilenumber" required>
          </div>
          
          <div class="form-group">
        <label for="mail">State:</label>
        <select name="state" class="form-control sel-state" id="stateid" required>
         <option value="-1" disabled selected>Select your State</option>
          <c:forEach var="statelist" items="${statelist}">
			<option value="${statelist.id}">${statelist.state.toUpperCase()}</option>
		  </c:forEach>
        </select> 
          </div>
          
       <div class="form-group">
       <label for="mail">(Near by) City / District:</label>
        <select  name="city" class="form-control" id="cityid" required>
        <option value="-1" selected disabled>Select Your State First</option>
          <c:forEach var="citylist" items="${citylist}">
			<option value="${citylist.id}">${citylist.city.toUpperCase()}</option>
		  </c:forEach>
        </select> 

         </div>

       
         <input type="hidden"  value="0" name="updatedata"/>
        <input type="submit" class="nxt-button next-info1" id="regsubmit" value="CONTINUE" data-toggle="modal" data-target="#myModal">

        </form>
         </div>
          
       
          
         
        </div>
       
         </div>
      
    
<div class="col-lg-5" style="margin-top: 70px;">

        <fieldset>
          <legend style="padding: 80px 25px 25px 25px;border-bottom:none"><i class="fa fa-user prof-ico" aria-hidden="true"></i>Already a Member</legend>
        	<div class="already-member">
	      
	       
	        <a href="login"><button type="button" class="already_btn">Log In</button></a>
	        </div>
          
          </fieldset>

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
		

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
       <script type="text/javascript">
            $('#timepicker1').timepicker();
            $('#timepicker2').timepicker();

            

            $(document).ready(function(){

           	 $( ".interspeed" ).change(function() {

           		   var xx=	 $("#selectedrange option:selected").text();
                      console.log(xx);
           		 
           	 });

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

        	   //Disable part of page
        	   $('#uemail,#mobilenumber').bind('cut copy paste', function (e) {
        	       e.preventDefault();
        	   });
        
        	 
             });
          
        </script>
       
</body>

</html>
