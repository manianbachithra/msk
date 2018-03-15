
<! DOCTYPE html> 
<html>
<head>  
<title>TalentEx - ATC | Index</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/indexstyle.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="icon" type="img/ico" href="images/ex.ico">
<meta name="application-name" content="TalentEx - ATC | Admin Page"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
<style>
.footer{
	margin-top:0px!important;
}

</style>
</head>

<body onload="getload()">


<header>
<div class="container">
<div class="col-lg-6 mainlogo">
<img src="images/talentexcb.png">               
</div>
<div class="col-lg-6 top-icons">
<div class="top-info">

<div class="clear"></div>

<div class="top-info2">
<!-- <span class="login"><a href="#">About Mocd</a></span> -->
<span class="login"><a href="login">Login</a></span>
<span class="register"><a href="registration">Register</a></span>
</div>

</div>



</div>
</div>
</header>

<!-- Carousel
================================================== -->
<div class="overlay"><h1>Welcome to ATC / Nodal College <br>Admin Pages</h1>
</div>
<div id="myCarousel" class="carousel slide">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/slide1.jpg" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
          </div>
      </div>
    </div>
    <div class="item">
      <img src="images/slide2.jpg" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
          
        </div>
      </div>
    </div>
    <div class="item">
      <img src="images/slide1.jpg" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
          
        </div>
      </div>
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <i class="glyphicon glyphicon-chevron-left"></i>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <i class="glyphicon glyphicon-chevron-right"></i>
  </a>  
</div>
<!-- /.carousel -->


<!-- FOOTER -->

<div class="modalsuccess" style="display:none;">${success}</div>
<div class="modalsuccess2" style="display:none;">${passupdate}</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel-2">
  		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel-2">Check Your Email</h4>
				</div>

				<div class="modal-body">
					<p>Thank you for your Interest to become Nodal College / ATC. Link sent to your Registered Mail-ID to create your password.</p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-dialog" data-dismiss="modal">Ok</button>
					
				</div>
			</div><!-- modal-content -->
		</div><!-- modal-dialog -->
 
  </div>
                          
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel-2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel-2">Your Password Changed Sucessfully</h4>
				</div>

				<div class="modal-body">
					<p>Your Password Changed Sucessfully. We suggest you to change your password after Login to make your login secure..</p>
				</div>

				 <div class="modal-footer">
					<button type="button" class="btn btn-dialog" data-dismiss="modal">Ok</button>
				</div>
				
			</div><!-- modal-content -->
		</div><!-- modal-dialog -->
	</div><!-- modal -->
	
<div class="clear"></div>
    <!-- Contact Section
    ==========================================-->
    <div id="tf-contact" class="text-center" style="padding:50px 0">
        <div class="container">
  <div class="section-title center" >
                    
                       <h2>Feel free to <strong>contact us</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                        <div class="clearfix"></div>
                        <small >
                        <em id="contactmsgshow1" style="display: none;font-size:18px;color:green;">Thanks for your Feedback.</em>
                        </small>            
                    </div>
            <div class="row">
            <div class="col-lg-3" style="font-size:14px;color:#747474;line-height:23px;text-align:-webkit-auto;font-family:Helvetica - 300 ">
<p style="font-weight:bold;font-family: Helvetica - bold;">Fore Brain Technologies Pvt Ltd,</p>
MS Towers, 2nd floor, 633/1,<br/> Aminjikarai, Chennai,<br/> Tamil Nadu - 600029, India.
<br/>Tel: +91 72000 19191 /  044-6453 6373 / 42307128.
</div>
            
                <div class="col-lg-9">
                     <form method="post" action="contactus">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <!--<label for="exampleInputEmail1">Email address</label>-->
                                    <input type="text" name="name" class="form-control" required  placeholder="Enter Name">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <!--<label for="exampleInputPassword1">Password</label>-->
                                    <input type="text" name="contact" class="form-control" required  placeholder="Enter Mobile">
                                </div>
                            </div>
                             <div class="col-md-4">
                                <div class="form-group">
                                    <!--<label for="exampleInputPassword1">Password</label>-->
                                    <input type="email" name="email" class="form-control" required  placeholder="Enter Email">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                           <!-- <label for="exampleInputEmail1">Message</label>-->
                            <textarea class="form-control" name="comment" rows="3" required placeholder="Message" style="resize:none;"></textarea>
                        </div>
                        
                        <button type="submit" class="btn tf-btn btn-default">Submit</button>
                    </form>

                </div>
            </div>
            <div id="contactsuccess" style="display:none;"><%=session.getAttribute("contactsuccess")%></div>
<!-- <div class="row" style="margin-top: 10px;">
<div class="col-lg-3" style="font-size:14px;color:#747474;line-height:23px;text-align:-webkit-auto;margin-top: 10px;font-family:Helvetica - 300 ">
<p style="font-weight:bold;font-family: Helvetica - bold;">Fore Brain Technologies Pvt Ltd,</p>
MS Towers, 2nd floor, 633/1,<br/> Aminjikarai, Chennai,<br/> Tamil Nadu - 600029, India.
<br/>Tel: +91 72000 19191 /  044-3190 3195 / 6453 6373 / 42307128.
</div>
<div class="col-md-9" style="text-align:-webkit-auto;">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.3935514817763!2d80.218294314091!3d13.074226216157257!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a52669b56d1149f%3A0x66e2a8846f3dceb0!2sFore+Brain+Technologies+Pvt+Ltd!5e0!3m2!1sen!2sin!4v1450876350513" width="100%" height="450" frameborder="0" style="border:0; margin-top: 10px" allowfullscreen> </iframe>
</div>
</div> -->
        </div>
    </div>


<div class="clear"></div>
  <footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>
<style>
/* ----- IMPORT ROBOTO FONT FOR MD ----- */
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,100);

/* ----- DIALOG/MODAL ----- */
/* FADE/SCALE EFFECT */
	.modal.fade .modal-dialog {
		opacity: 0;
		-webkit-transform: scale(0.1);
			-ms-transform: scale(0.1);
			 -o-transform: scale(0.1);
				transform: scale(0.1);
		-webkit-transition: all 0.3s ease;
		   -moz-transition: all 0.3s ease;
			 -o-transition: all 0.3s ease;
				transition: all 0.3s ease;
	}

	.modal.fade.in .modal-dialog {
		opacity: 1;
		-webkit-transform: scale(1);
			-ms-transform: scale(1);
			 -o-transform: scale(1);
				transform: scale(1);
		-webkit-transform: translate3d(0%, 0, 0);
			-ms-transform: translate3d(0%, 0, 0);
			 -o-transform: translate3d(0%, 0, 0);
				transform: translate3d(0%, 0, 0);
	}

/* DIALOG CONTENT */
	.modal-content {
		border: none;
		border-radius: 2px;
		-webkit-box-shadow: 0 40px 77px rgba(0, 0, 0, 0.22), 0 27px 24px rgba(0, 0, 0, 0.2);
		   -moz-box-shadow: 0 40px 77px rgba(0, 0, 0, 0.22), 0 27px 24px rgba(0, 0, 0, 0.2);
				box-shadow: 0 40px 77px rgba(0, 0, 0, 0.22), 0 27px 24px rgba(0, 0, 0, 0.2);
	}

/* DIALOG HEADER */
	.modal-header {
		min-height: 16px;
		padding: 24px;
		border-bottom: none;
	}

	.modal-title {
		font-weight: 500;
		font-size: 21px;
	}

	/* DIALOG BODY */
	.modal-body {
		padding: 0 24px;
	}

	.modal-body p {
		font-weight: 400;
		font-size: 14px;
		color: #212121;
	}

	.modal-body .lead {
		font-weight: 300;
		font-size: 16px;
		color: #757575;
	}

	.modal-body p:last-child,
	.modal-body .lead:last-child {
		margin-bottom: 0;
	}

/* DIALOG FOOTER */
	.modal-footer {
		margin-top: 24px;
		padding: 8px 0;
		border-top: none;
	}

	.modal-footer .btn {
		height: 36px;
		margin-right: 8px;
		padding: 8px 10px;
		border: none;
		border-radius: 0;
		text-transform: uppercase;
		font-weight: 500;
		color: #009688;
		background-color: #fff;
	}

	.modal-footer .btn:focus {
		outline: none;
		box-shadow: none;
	}

	.modal-footer .btn:focus,
	.modal-footer .btn:hover {
		color: #00796B;
	}

	.modal-footer .btn + .btn {
		margin-left: 0;
	}

	.modal-footer .btn + .btn:last-child {
		margin-left: -4px;
	}


/* ----- v CAN BE DELETED v ----- */
body {
	font-family: 'Roboto', sans-serif;
	
}

.demo {
	padding-top: 60px;
	padding-bottom: 110px;
}

.btn-demo {
	margin: 15px;
	padding: 10px 15px;
	border-radius: 0;
	font-size: 16px;
	background-color: #FFFFFF;
}

.btn-demo:focus {
	outline: none;
}

</style>
<script>

function getload()
{
	if($("#contactsuccess").text()==="1")
	{
	$("#conta").trigger("click");
	$("#contactmsgshow1").show().fadeOut(8000);
	
	}
};


$(document).ready(function(){

var tmp=$(".modalsuccess").text();
if (tmp=="success")
{
	$('#myModal').modal('show');
	console.log("++++++++++++Registeremail")

}

var rst=$(".modalsuccess2").text();
if (rst=="passupdate")
{
	$('#myModal2').modal('show');
	console.log("++++++++++++Reset Password")
	setTimeout(function(){
	$('#myModal2').modal('hide');
	window.location.href = 'http://localhost:8080/atc/index';
	}, 6000);	
}

});

</script>

</html>