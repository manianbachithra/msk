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
if it's not present, don't show loader */
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
.joindate{
font-size:11px;
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
.footer{
margin-top:0px!important;
}
.vouchersubmit{
    transition: transform .25s ease,opacity .25s ease .05s,-webkit-transform .25s ease;
    background: #e3714d;
    border-radius: 2px;
    min-width: 60px;
    border: none;
    color: #fff;
    font-size: 12px;
    text-transform: uppercase;
    cursor: pointer;
    text-align: center;
    padding:12px;

}
#voucherform{

padding:40px 0;

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
padding-bottom:2%;
}
.fixed-table-body
{
height:auto;
}
.hi
{
display:none;
}
.atcdetails{
padding:40px;
}
.clear{
clear:both;
}
.atctimings{
border-right:1px solid #E3E3E3; 
border-left:1px solid #E3E3E3;
height:135px;
font-family:Open Sans
}
.atcdetails-block{
height: 70px;
border-right: 1px solid #E3E3E3;
text-align:center;
padding:0px;
}
.atcdetails-block h3{
padding:0px;
margin:0px;
color:#31708f;
}
.atcdetails-block p{
font-size:11px;
padding:15px 0;
text-transform:uppercase;
}
.moreinfo{

padding: 20px 0;
    border-bottom: 1px solid #eee;
}

#langtable{
    border-collapse: collapse;
    width: 80%;
    margin:0 auto;
}

#langtable th, td {
    text-align: left;
    padding: 8px;
    text-align:center;
}

#langtable tr:nth-child(even){background-color: #f2f2f2}

#langtable th {
    background-color: #00ade3;
    color: white;
    
}
.footer{
margin-top:0px!important;
}
</style>
</head>
<body>
    <!-- Paste this code after body tag -->
	<div class="se-pre-con"></div>
	<!-- Ends -->
<div class="col-lg-12">

		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 column">
				<div class="row clearfix"> 
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 column">
					<a href="admindashboard" >	<img src="images/talentexcb.png" width="180px" height="60px" /></a>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-6 col-xs-6 column">
							<ul class="nav nav-pills pull-right" style="font-size: 13px">
							<li role="presentation" class="pp"><a href="portal" id="logoutid" class="logoutid"><i class="fa fa-sign-out"></i> LOGOUT</a></li>
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
				
				
				<div id='cssmenu' class="pull-right" style="margin-right: 15px;">
					<ul>
					<li ><a id="#md" class="md disabled" data-placement="bottom"  href='admindashboard'>Dashboard</a></li>
					</ul>
				</div>
				
			</div>
		</div>

<div class="row clearfix" id="main_body">
<div class="container" style="background-color:white;border-right: 3px solid grey;border-left: 3px solid grey;width:100%">



<div class="col-lg-12">
<div class="atclist col-lg-12">
<div style="background-color:#337AB7;color:#fff;padding:5px">
<h4>ATC / Nodal College Details</h4>

</div>

<div class="col-lg-12 atcdetails">

<div class="col-lg-6" style="height:135px">

<div class="col-lg-3">
<img src="images/atclogo.jpg" width="100px"id="atcLogoImg">
</div>
<div class="col-lg-9">
<h3 id="company_name"></h3>

<span id="atc_Location"></span><br/>
<span class="joindate">Joined at </span></span><span id="join_date" class="joindate"></span>
</div>

</div>

<div class="col-lg-6 atctimings">

<div class="col-lg-12 atctimingsdiv" style="border-bottom:1px solid #E3E3E3;height:70px;">
<div class="col-lg-4 atcdetails-block">
<h3 id="system_Count"></h3>
<p>Computer Systems</p>
</div>
<div class="col-lg-4 atcdetails-block">
<h3 id="start_Time"></h3>
<p>Start Time</p>
</div>
<div class="col-lg-4 atcdetails-block" style="border-right:1px solid #fff">
<h3 id="end_Time"></h3>
<p>End Time</p>
</div>
</div>

<div class="col-lg-12">
<div class="col-lg-12 atcdetails-block" style="border-right:1px solid #fff">
<h3 style="margin-top: 15px;" id="net_Speed"></h3>
<p>Internet speed</p>
</div>
</div>

</div>

</div>
<div class="clear"></div>
<div class="col-lg-12" style="padding-left:60px;">

<div class="col-lg-6 row">

<h4>Contact Details</h4>

<div class="col-lg-12 moreinfo">
<span class="col-lg-6">Email</span>
<span class="col-lg-6" id="atc_email"></span>
</div>

<div class="col-lg-12 moreinfo">
<span class="col-lg-6">ATC-ID</span>
<span class="col-lg-6" id="atc_Id"></span>
</div>

<div class="col-lg-12 moreinfo">
<span class="col-lg-6">Mobile</span>
<span class="col-lg-6" id="atc_Mobile"></span>
</div>

<div class="col-lg-12 moreinfo">
<span class="col-lg-6">State</span>
<span class="col-lg-6" id="atc_State"></span>
</div>

<div class="col-lg-12 moreinfo" style="border-bottom:none">
<span class="col-lg-6">City</span>
<span class="col-lg-6" id="atc_City"></span>
</div>

</div>
<div class="col-lg-6">
<h4 style="paddinng-top:50px;padding-bottom:10px;text-align:center"> PDF status</h4>
<table id="langtable">
	<thead>
																			<tr>
																				<th>Dates</th>
																				
																				<th>Download</th>
																				

																			</tr>
																		</thead>
<tbody>

</tbody>
</table>


<div class="col-lg-12" style="margin-top:35px">
   <form action="portalupdate" method="post">
                                  
                                  <div class="col-lg-7" style="text-align:right;padding-top: 8px;">
                                  Status
                                  </div>
                                  
                                  <div class="form-group col-lg-5">
                                      
							         <select name="atc_status" class="form-control" id="atc_status">
							       
										<option value="1">active</option>
										<option value="2">in-active</option>
										<option value="3">blocked</option>
										<option value="4">available</option>
										<option value="5">un-available</option>
									
							         </select> 
							         
                                   </div>
                                   
                                   <input type="text" id="atcuniqueid" name="atcuniqueid" style="display:none">
                                   
                                   <div class="form-group col-lg-12" style="padding-left:20px;">
                                    <button class="btn btn-primary btn-flat" style="float:right" type="submit">Submit</button>
                                   </div>
                                    
                                   </form>
                                   </div>
</div>

<br/>


<div class="col-lg-12">
<div class="col-lg-12">
<br/><br/>
<span class="btn-success purchase_voucher" style="border-radius:5px;padding:8px;font-size:12px;color:#fff;cursor:pointer">Voucher Details</span>

<div id="voucherform2">
<div class="col-lg-6 hide_voucherdiv">

<div class="col-lg-12 hide_vouchernormaldiv">
<div class="col-lg-12 moreinfo" style="border-bottom:none">
<span class="col-lg-8">Total General Voucher Credits</span>
<span class="col-lg-4" id="voucher_credits"></span>
</div>
<div class="col-lg-12 moreinfo" style="border-bottom:none">
<span class="col-lg-8">Used General Voucher Credits</span>
<span class="col-lg-4" id="voucher_bal"></span>
</div>
<div class="col-lg-12 moreinfo" style="border-bottom:none">
<span class="col-lg-8">Balance General Voucher Credits</span>
<span class="col-lg-4" id="voucher_used"></span>
</div>
</div>

<div class="col-lg-12 hide_voucherspecialdiv" style="display:none">
<div class="col-lg-12 moreinfo" style="border-bottom:none">
<span class="col-lg-8">Total Campus Voucher Credits</span>
<span class="col-lg-4" id="specialvoucher_credits"></span>
</div>
<div class="col-lg-12 moreinfo" style="border-bottom:none">
<span class="col-lg-8">Used Campus Voucher Credits</span>
<span class="col-lg-4" id="specialvoucher_used"></span>
</div>
<div class="col-lg-12 moreinfo" style="border-bottom:none">
<span class="col-lg-8">Balance Campus Voucher Credits</span>
<span class="col-lg-4" id="specialvoucher_bal"></span>
</div>
</div>

</div>

<div class="col-lg-6">
<form id="voucherform" action="voucherPurchase" method="post">
   <div style="padding-bottom:15px">

  <input type="radio" name="voucher" value="1"checked>General Voucher
  <input type="radio" name="voucher" value="2">Campus Voucher<br>

  </div>
<!--     <div id="normal_voucher">
    <div class="form-group">
      <label for="inputdefault">Add Normal Vouchers</label>
      <input class="form-control" id="inputdefault" type="text" name="no_of_vouchers">
    </div> 
                           
    </div>  --> 
    
    <div id="special_voucher">
    <div class="form-group">
      <label for="inputdefault" id="voucher_model">Add General Vouchers</label>
      
      <input class="form-control" id="inputdefault" type="text" name="no_of_vouchers" required>
    </div>
                   
    </div> 
    <input type="text" class="atc_email" name="atc_email" style="display:none">
    <input type="text" id="voucher_type" name="voucher_type" style="display:none">                       
    <button class="vouchersubmit" type="submit">Proceed</button>
   <!--  <input type="submit" value="Proceed" class="vouchersubmit">  -->
</form>
    </div>
    </div>
</div>
                                   </div>

</div>
                           
                                  
</div>
</div>

</div>
</div>

<h1 style="display:none;" id="atcuniquemail"><%=session.getAttribute("usrid")%></h1>


<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table.min.js"></script>

<script>

$(document).ready(function(){

	 $("html, body").animate({ scrollTop: 200 }, 1000);
	
	
	
	$.ajax({
		
		 type:'post',
		 url:'uniqueAtcDetails',
		 data:{'atcuniquemail':$("#atcuniquemail").text()},
		 success:function(data) 
		 {
                var getList=JSON.parse(data);
                
                console.log("GETLIST ----->"+getList);
                
                $("#company_name").text(getList[0][2]);
                
                $("#atc_Location").text(getList[0][7]);
                
                
                $("#system_Count").text(getList[0][4]);
                
                $("#net_Speed").text(getList[0][6]);
                
                $("#atc_email").text(getList[0][1]);
                $(".atc_email").val(getList[0][1]);

                $("#atc_Id").text(getList[0][5]);

                $("#atc_State").text(getList[0][8]);

                $("#atc_City").text(getList[0][7]);

                $("#atc_Mobile").text(getList[0][3]);
                
                $("#atcLogoImg").attr("src",getList[0][12]);

                $("#atc_status").val(getList[0][11]);
                
                $("#voucher_status").text(getList[0][13]);
                
                $("#atcuniqueid").val(getList[0][14]);
                
                $("#voucher_credits").text(getList[0][15]);
                $("#voucher_bal").text(getList[0][16]);
                $("#voucher_used").text(getList[0][17]);
                
                $("#specialvoucher_credits").text(getList[1][19]);
               
                $("#specialvoucher_used").text(getList[1][20]);
                $("#specialvoucher_bal").text(getList[1][21]);

                $("#join_date").text(getList[0][18]);
                
             /*    START ATC TIMING TRIM */
                var starttime = getList[0][9];
                starttime1 = starttime.substring(0, 5);
                starttime2 = starttime.substring(9, 11);
                starttime3=starttime1.concat(starttime2)
                $("#start_Time").text(starttime3);


                var endtime = getList[0][10];
                endtime1 = endtime.substring(0, 5);
                endtime2 = endtime.substring(9, 11);
                endtime3=endtime1.concat(endtime2)
                $("#end_Time").text(endtime3);
                /*    END ATC TIMING TRIM */
                getpdfajax();
	     },
	  	 error: function() 
	     {
	       console.log("ERROR");
	     }
	      
	});

	
	

		function getpdfajax(){
			var getatcuniqueid=$('#atcuniqueid').val();
			 console.log("%%%%%%%%%%%%%%--->"+getatcuniqueid);
	$.ajax({
		
		 type:'post',
		 url:'atcpdflist',
		 data:{'atcuniquemail':getatcuniqueid},
		 success:function(data) 
		 {
			/*  JSON.parse(data);
               console.log("GETLIST ----->"+ JSON.parse(data));
               console.log("getresponse-is---->"+data);*/

           var getresponse=JSON.parse(data);

          console.log("getresponse-is---->"+getresponse); 

	     for(i=0;i<getresponse.length;i++)
		        {
			  if(getresponse[i].status==1)  

				  {  
				 $("#langtable tbody").append("<tr id='tr"+i+"'><td>"+getresponse[i].exam_held_date+"</td><td><a href='"+getresponse[i].upload_pdf+"'>Download</a></td></tr>");
				  }
			  else{
				  $("#langtable tbody").append("<tr id='tr"+i+"'><td>"+getresponse[i].exam_held_date+"</td><td>Pending</td></tr>");
					
				  }
			  
			    }   
                       
	     },
	  	 error: function() 
	     {
	       console.log("ERROR");
	     }
	      
	});

		}
		
     $(".approvestatus").click(function(){
        var getidvalue="#"+$(this).attr("id");
        console.log("The value is-->"+getidvalue);
       $.ajax({
    		 type:'post',
    		 url:'atcUserStatusUpdate',
    		 data:{'status':$(getidvalue).attr("data-value")},
    		 success:function(data) 
    			 {
    			 window.location.href="admindashboard"
    	         },
    	  	 error: function() 
    	       {
    	       console.log("ERROR");
    	       }
    	}); 
         
     });


    
     $('#voucherform2').hide();
$('.purchase_voucher').on('click', function () {
	$( "#voucherform input:radio" ).trigger( "click" );
    $('#voucherform2').toggle('slide');
    
    /* ====Start check voucher_credits==== */  
    if($('#voucher_credits').text()>0 || $('#specialvoucher_credits').text()>0){
    	
    }
    else{
    	
    	$('.hide_voucherdiv').remove();
    	console.log("IFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF");
    }

});

$('#voucherform input:radio').click(function() {

	$('#voucher_type').val($(this).val());
    console.log("Radion changed--->"+$(this).val());

    if($(this).val()==1){
        console.log("111111111111111");
    	$('#voucher_model').text("Add General Vouchers");
    	$('.hide_voucherspecialdiv').hide();
        $('.hide_vouchernormaldiv').show();
        
        
    	    	
        }
    else{
    	$('#voucher_model').text("Add Campus Vouchers");
    	$('.hide_vouchernormaldiv').hide();
    	$('.hide_voucherspecialdiv').show();


        }
    
    
});

});

</script>

<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>


</html>