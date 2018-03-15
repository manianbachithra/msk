<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
if(session.getAttribute("email") == null)
{ 
    response.sendRedirect("adminlogin");
}
    response.setHeader("Pragma","no-cache"); 
    response.setHeader("Cache-Control","no-store"); 
    response.setHeader("Expires","0"); 
    response.setDateHeader("Expires",-1); 

%>
<! DOCTYPE html> 
<html>
<head>  
<title>TalentEx - ATC | Index</title>
<style>
/* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript, 
if it's nott present, don't show loader */
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
.hide_email{
display:none!important;
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
<link rel="stylesheet" href="css/bootstrap-table.min.css">
<link rel="icon" type="img/ico" href="images/ex.ico">
<link rel="stylesheet" type="text/css" href="css/menu.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">

<style>

body{
font-size:14px;
font-family:Montserrat;
}
.container{
max-width:1100px;
margin:0 auto;
}
#main_body {
    background: url("images/collage.jpg") no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
.row{
margin:0px;
}
.atclist{
height:auto;
border:1px solid blue;
margin-top:2%;
width:100%;
padding-left:0px;
padding-right:0px;
}
.fixed-table-body
{
height:auto;
}
.hi
{
display:none;
}
#langtable a{
color:#fff;
}
#langtable a:hover:focus:visited{
color:#fff;
text-decoration:none;
}
.usrhide{
display:none!important;
}
.hidetd{
display:none!important;
}
.footer{
margin-top:0px!important;

}
</style>
</head>
<body>
<div id="notnull_atc"></div>
    <!-- Paste this code after body tag -->
	<div class="checkatc_status" style="display:none">${notnull_atc}</div>
	<!-- Ends -->
<div class="col-lg-12">

		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 column">
				<div class="row clearfix"> 
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 column">
					<a href="" >	<img src="images/talentexcb.png" width="180px" height="60px" /></a>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-6 col-xs-6 column">
							<ul class="nav nav-pills pull-right" style="font-size: 13px">
							<li role="presentation" class="pp"><a href="portallogout" id="logoutid" class="logoutid"><i class="fa fa-sign-out"></i> LOGOUT</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
  </div>
  	<div class="row clearfix">
			<div class="col-md-12 column"
				style="border-bottom: 2px solid #e3e3e3; padding-bottom: 3px">
				<div class="pull-left" style="margin-top: 11px;margin-left: 79px;font-size: 18px;">
				<%if(session.getAttribute("nickname")==null){ %>
				<%}else{ %>
					<span>Hi </span><span id="nickname" style="text-transform:uppercase;"><%=session.getAttribute("nickname")%></span>
				<%}%>
				
				</div>
				
				
				
				
			</div>
		</div>

<div class="row clearfix" id="main_body">
<div class="container" style="background-color:white;border-right: 3px solid grey;border-left: 3px solid grey;height:auto;width:100%">


<div class="col-lg-12">

<div class="atclist col-lg-12" style="margin-bottom:18%">
<div style="background-color:#337AB7;color:#fff;padding:10px;">
<span style="font-size:14px">ATC lists</span>  
 <span style="float:right;">
  <input type="radio" id="checkradio1" onclick="window.location='admindashboard';"> Completed
  <input type="radio" id="checkradio2" onclick="window.location='halfadmindashboard';"> In Completed<br>
</span>

</div>
                  <!-- /.panel-heading -->
												<div class="panel-body row" style="padding: 5px;">
																<table id="langtable" class="dynamicatclist">
																		<thead>
																			<tr>

																				<th>S.No</th>
																			
																				<th>Institution  Name</th>
																				<th class="hide_email">Email-Id</th>
																				<th data-align="center">State</th>
																				<th data-align="center">city</th>
																				<th  data-align="center">Joined At</th>
																				<th  data-align="center">Details</th>
																				<th class="hi" ></th>
																			</tr>
																		</thead>
																		
																		<tbody>
																		
																			

																		</tbody>
																	</table>
												</div>
												<!-- /.panel-body -->
</div>
</div>

</div>
</div>


<h1 id="userstring" style="display:none;">${usrjsonString}</h1>
<div id="atclist" style="display:none">${jsonstring}</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>
<script>
$(document).ready(function(){
	

	var checkatc_status=$('.checkatc_status').text();
     console.log("-checkatc_status----->"+checkatc_status);
	
if(checkatc_status=="notnull_atc"){
	$("#checkradio1").prop("checked", true)	
	$("#checkradio2").prop("checked", false)	
}
else{
	$("#checkradio2").prop("checked", true)	
	$("#checkradio1").prop("checked", false)	
	
}



 		 
var atclist=JSON.parse($("#atclist").text());
/* console.log("All list value are -->"+atclist); */

var sno=1;
for(i=0;i<atclist.length;i++)
{
	 if(atclist[i][5]=="available")
	 {
	 $("#langtable tbody").append("<tr id='tr"+i+"'><td>"+sno+"</td><td>"+atclist[i][1]+"</td><td style='display:none'>"+atclist[i][7]+"</td><td>"+atclist[i][4]+"</td><td>"+atclist[i][3]+"</td><td>"+atclist[i][6]+"</td><td><span class='btn-success atcusrid' style='font-size:13px;padding:3px 14px;cursor:pointer'>"+atclist[i][5]+"</span></td></tr>");
	 }
	 else if(atclist[i][5]=="active")
	 {
     $("#langtable tbody").append("<tr id='tr"+i+"'><td>"+sno+"</td><td>"+atclist[i][1]+"</td><td style='display:none'>"+atclist[i][7]+"</td><td>"+atclist[i][4]+"</td><td>"+atclist[i][3]+"</td><td>"+atclist[i][6]+"</td><td><span class='btn-info atcusrid' style='font-size:13px;padding:3px 5px;cursor:pointer'>"+atclist[i][5]+"</span></td></tr>");
	 }
	 else if(atclist[i][5]=="un-available")
	 {
     $("#langtable tbody").append("<tr id='tr"+i+"'><td>"+sno+"</td><td>"+atclist[i][1]+"</td><td style='display:none'>"+atclist[i][7]+"</td><td>"+atclist[i][4]+"</td><td>"+atclist[i][3]+"</td><td>"+atclist[i][6]+"</td><td><span class='atcusrid' style='font-size:13px;padding:3px 5px;cursor:pointer;background-color:#d1d1d1'>"+atclist[i][5]+"</span></td></tr>");
	 }
	 else if(atclist[i][5]=="blocked")
	 {
     $("#langtable tbody").append("<tr id='tr"+i+"'><td>"+sno+"</td><td>"+atclist[i][1]+"</td><td style='display:none'>"+atclist[i][7]+"</td><td>"+atclist[i][4]+"</td><td>"+atclist[i][3]+"</td><td>"+atclist[i][6]+"</td><td><span class='btn-danger atcusrid' style='font-size:13px;padding:3px 5px;cursor:pointer'>"+atclist[i][5]+"</span></td></tr>");
	 }
	 else
	 {
     $("#langtable tbody").append("<tr id='tr"+i+"'><td>"+sno+"</td><td>"+atclist[i][1]+"</td><td style='display:none'>"+atclist[i][7]+"</td><td>"+atclist[i][4]+"</td><td>"+atclist[i][3]+"</td><td>"+atclist[i][6]+"</td><td><span class='btn-warning atcusrid' style='font-size:13px;padding:3px 5px;cursor:pointer'>"+atclist[i][5]+"</span></td></tr>");
	 }
	 sno++;
}


 $('#langtable').bootstrapTable({
		clickToSelect: true,
		pagination: true,
		pageList: [10, 15, 25],
       pageSize : 10
	});

var total=5;
var noofdiv=3;

pagination();
function pagination()
{
for(var k=0;k<Math.ceil((total/noofdiv)+2);k++)
{
 $("#pagination-nav").append(" <li><a href=\"javascript:void(0);\"></a></li>");
$("#pagination-nav li:nth-child("+(k+1)+") a").html(k);
$("#pagination-nav li:nth-child(1) a").html("<");
$("#pagination-nav li:nth-child("+Math.ceil((total/noofdiv)+2)+") a").html(">");

}

for(var k=1;k<=5;k++)
{
if(k>3) 
{
	 $("#rank"+k).hide();
}
}



$("#from").html("1");
$("#to").html(noofdiv);
$("#total").html(total);	
$("#pagination-nav li").removeClass("active");
$("#pagination-nav li:nth-child(2)").addClass("active");
$("#pagination-nav li a").click(function(){
var data=$(this).html();

if(data!= $("#pagination-nav li:nth-child("+Math.ceil((total/noofdiv)+2)+") a").html() && data!= $("#pagination-nav li:nth-child(1) a").html())
{
	 $("#pagination-nav li").removeClass("active");
  $(this).parent("li").addClass("active");
  var min=(data*noofdiv)-(noofdiv-1);
  var max=(data*noofdiv);
  if(min<=total)
      {
      $("#from").html(min);
      }
  if(max>total)
	 {
	 $("#to").html(total);
	 }
else
	 {
	 $("#to").html(max);
	 }
$("#total").html(total);
  for(var i=1;i<=total;i++){
      if(i>=min && i<=max){
     	 $("#rank"+i).show();
      }
      else{
     	 $("#rank"+i).hide();
      }
  }
     
}
else
  {
  var current=parseInt($("#pagination-nav .active a").html());
  var data1=$(this).html();
  if(current!=Math.ceil((total/noofdiv)) && current>=1 && data1==$("#pagination-nav li:nth-child("+Math.ceil((total/noofdiv)+2)+") a").html())
	{
  $("#pagination-nav li:nth-child("+(current+1)+")").removeClass("active");
  $("#pagination-nav li:nth-child("+(current+2)+")").addClass("active");
  var min=((current+1)*noofdiv)-(noofdiv-1);
  var max=((current+1)*noofdiv);
  if(min<=total)
  {
  $("#from").html(min);
  }
  
  if(max>total)
	 {
	 $("#to").html(total);
	 }
else
	 {
	 $("#to").html(max);
	 }
$("#total").html(total);
    for(var i=1;i<=total;i++){
        if(i>=min && i<=max){
     	   $("#rank"+i).show();
        }
        else{
     	   $("#rank"+i).hide();
        }
    }
 
    }
  else if(current!=1 && current < Math.ceil((total/noofdiv)+1) && data1==$("#pagination-nav li:nth-child(1) a").html()){
      $("#pagination-nav li:nth-child("+(current+1)+")").removeClass("active");
      $("#pagination-nav li:nth-child("+(current)+")").addClass("active");
      var min=((current-1)*noofdiv)-(noofdiv-1);
      var max=((current-1)*noofdiv);
      if(min<=total){
      $("#from").html(min);
      }
      if(max>total)
 	 {
 	 $("#to").html(total);
 	 }
  else
 	 {
 	 $("#to").html(max);
 	 }
  $("#total").html(total);
      for(var i=1;i<=total;i++){
     	 if(i>=min && i<=max){
       	   $("#rank"+i).show();
          }
          else{
       	   $("#rank"+i).hide();
          }
      }
      
      }
  }


});
}

$("#langtable").on("click", ".atcusrid", function(){


var usrid=$(this).closest('tr').children('td:eq( 2 )').text();
/* console.log("Td Value is----->"+usrid); */


$.ajax({
	 url:'atcgetusrid',
	 type:'post',
	 data:{
         'usrid':usrid
		 },
		 success:function(data) 
		 {
			  /* console.log("user response=====-->"+data); */  
             
	          window.location.href="atcdetails";      	
		                                                                        	     
       },

      
  	 error: function() 
       {
       console.log("ERROR");
       }

      
}); 

});  
});
</script>

</html>