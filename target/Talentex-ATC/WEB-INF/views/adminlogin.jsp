
<! DOCTYPE html> 
<html>
<head>  
<title>TalentEx - ATC | Index</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="icon" type="img/ico" href="images/ex.ico">

<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
<style>
body{
background-color:#0274BE;
color:#fff;
font-size:14px;
font-family:Montserrat;
}
.container{
max-width:900px;
margin:0 auto;
}
.login-block{
background-color:#02578F;
width:40%;
height:320px;
border:1px solid #024e81;
margin-top:15%;
text-align:center;
}
input { 
	width: 80%; 
	margin-bottom: 20px; 
	background: rgba(0,0,0,0.3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}
input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }

.btn-center{
width:80%!important;
margin:0 auto!important;
background-color:#12AD7C;
 padding: 14px 7px;
}
.btn-center:hover{
background-color:#119f72;
}
</style>
</head>
<body>
<div class="container" align="center">

<div class="login-block row">
<img src="images/logo.png" style="width: 150px;margin-top: 12px;">

<form method="post" style="margin-top: 5%;" action="portalogin">
    	<input type="email" name="email" placeholder="Email" required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large btn-center">Let me in</button>
</form>

</div>
</div>

</body>
<script>

/* $(document).ready(function(){

var tmp=$(".modalsuccess").text();
console.log("-------->"+tmp);
if (tmp=="success")
{
	console.log("sdfdsfdsfdsfdsfhdsfhoidsj");	
	$('#myModal').modal('show');
}
}); */


</script>

</html>