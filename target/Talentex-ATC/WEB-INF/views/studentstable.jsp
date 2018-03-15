<! DOCTYPE html> 
<html>
<head>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>TalentEx - ATC Student List</title>
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
<link rel="stylesheet" href="css/bootstrap.offcanvas.css" />
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/studentstable.css" />

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
        
<script type="text/javascript" src="js/dashboard.js"></script>
<script src="js/uploadimg.js"></script>
<script  src="js/Angularjs.js"></script>
<script  src="js/Angular_route.js"></script> 
<!-- <script  src="js/Angularjs.js"></script>
<script  src="js/Angular_route.js"></script>   -->   



</head>
<style>
<!--  Profile Pic upload  -->
.changeimg
{
display:none;
}
.changeimg
{
display:none;
}
.imageshow:hover .changeimg
{
display: block;
}
<!--  END Profile Pic upload  -->
.atclist{
height:500px;
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
.download{
cursor:pointer;
float:right;
}
</style>
<body >
    <!-- Paste this code after body tag -->
	<div class="se-pre-con"></div>
	<!-- Ends -->
<%@include file="/WEB-INF/common/header.jsp"%>

<div class="clear"></div>

<%@include file="/WEB-INF/common/offcanvas.jsp"%>

<div class="container2">
<div class="col-lg-3">
<%@include file="/WEB-INF/common/profilewidget.jsp"%>
<br/><br/>
    
 <%@include file="/WEB-INF/common/enquiry.jsp"%>
</div>
<div class="col-lg-9">

<div class="dashboard-box1">
<div class="span_box1 col-lg-4">
<i class="fa fa-money" aria-hidden="true"></i>
</div>
<div class="span_box1_right col-lg-8">
<h2>0</h2>
<p>Payments Received</p>
</div>
</div>

<div class="dashboard-box1">
<div class="span_box2 col-lg-4">
<img src="images/multiple-users.png" style="margin-top:45%">

</div>
<div class="span_box2_right col-lg-8">
<h2><%=(session.getAttribute("completedCount"))%></h2>
<p>Students Participated </p>
</div>
</div>

<div class="dashboard-box1">
<div class="span_box3 col-lg-4">
<img src="images/newregisters.png" style="margin-top:36%;width:45px">
</div>
<div class="span_box3_right col-lg-8">
<h2><%=(session.getAttribute("newRegistercount"))%></h2>
<p>New Registers</p>
</div>
</div>
<div class="clear"></div>


<br/><br/>
<div class="col-lg-12">

<div style="height:800px;background-color:#fff;padding-top:25px">
<div class="atclist col-lg-12">
<div style="background-color:#337AB7;color:#fff;padding:5px">
<h4>ATC lists</h4>  

</div>
                  <!-- /.panel-heading -->
               
												<div class="panel-body" style="padding: 5px;min-height:324px;">
																<table id="langtable" class="dynamicatclist langtable">
																		<thead>
																			<tr>
																				<th>S.No</th>
																				
																				<th>FRID</th>
																				<th>Name</th>
																				
																				<th>Slot</th>
																			</tr>
																		</thead>
																		<tbody>
																		
																			<%-- <c:forEach var="langlist" varStatus="counter" items="${atc_lists}"> --%>
																				<%-- <tr id="row${counter.count}" class="hid_1">
																					<td>${counter.count}</td>
																					<td class='name'>${langlist.institution_name}</td>
																					<td class="position" style="text-transform: capitalize;">${langlist.email}</td>
																					<td class="acceotstats"><span style="text-transform: capitalize;top: 5px;position: relative;font-size: 13px;">${langlist.mobile}</span></td>
																					<td class=""><a class="view" href='javascript:void(0)' style="font-size: 15px;">view</a></td>
																					<td class="hi">${langlist.id}</td>
																				</tr> --%>
																			<%-- </c:forEach> --%>

																		</tbody>
																	</table>
																	
																	<div class="col-lg-12">
																	<div class="col-lg-3 download">
																	
																	<img src="images/download.png" width="60px" id="download">Download Student List
																	
																	</div>
																	
																	</div>
																	
												</div>
												<!-- /.panel-body -->
</div>
</div>
</div>

</div>
</div>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.navgoco.js"></script> 
<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
   <h4 id="studentlist" style="display:none;">${studentslist}</h4>
   <div style="display:none" id="slotDateid"><%=session.getAttribute("slotDate")%></div>
<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>
<script type="text/javascript">

$(document).ready(function(){
	
/* var app = angular.module('app',['ngRoute']);	 */
	
/* console.log("The App is-->"+app); */	
	
$(".hid").each(function(){
	 console.log("The Each value is--->"); 
 });
 
var mainarray=[];

	 $.ajax({
		 type:'post',
		 url:'dateWiselist',
		 data:{'slotDate':$("#slotDateid").text()},
		 success:function(response) 
			{ 
			 console.log("value response-->"+response);
                
			 var studentlist=JSON.parse(response);
			 

             if(studentlist=="null"||studentlist==null||studentlist==" "||studentlist==""){
            	 
                   $('.download').hide();
                 }

			var sno=1;
			 for(i=0;i<studentlist.length;i++)
			 {
				 
			      $("#langtable tbody").append("<tr id='tr"+i+"'><td class='heloo'>"+sno+"</td><td>"+studentlist[i][0]+"</td><td>"+studentlist[i][1]+"</td><td>"+studentlist[i][2]+"</td></tr>");
		          sno++

		     }
             
			 $(".langtable tbody").find('tr').each(function () {
					
			        var str1 = $(this).find("td:eq(1)").html(); // as this is the scope of the element
			        var str2 = $(this).find("td:eq(2)").html();
			        //var str3 = $(this).find("td:eq(3)").html();
			        var str4 = $(this).find("td:eq(3)").html();
			        
		            textval2='{\"frid\":"'+str1+'\",\"name\":"'+str2+'\",\"slot\":"'+str4+'\"}';
			        mainarray.push(textval2);
			        
			 });
			  console.log("Main ARRAY---->"+mainarray);  
			    
		        
			 $('#langtable').bootstrapTable({
					clickToSelect: true,
					pagination: true,
					pageList: [10, 20, 50],
			        pageSize : 10

				});
	 
	        },
	 	 error: function() 
	      {
	      console.log("ERROR");
	      }
	}); 


	 $('#studentlist').text(studentlist);

	

	 $(document).on("click", "#download", function(){

		
		
		 $.ajax({
			 type:'post',
			 url:'dateWiselistPDF',
			 data:{'jsonlist':mainarray.toString()},
			 success:function(response) 
				{ 
					
				  console.log("Main ARRAY---->"+mainarray);  
				  console.log("download clicked");
				  window.location.href = "dateWiselistPDFList";
				  
		        },
		 	 error: function() 
		      {
		      console.log("ERROR");
		      }
		        
		}); 
		
		/*  $.ajax({
			 type:'post',
			 url:'dateWiselistPDFDownload',
			 success:function(response) 
				{ 
					
				  console.log("Main ARRAY---->"+mainarray);  
				  console.log("download clicked");
				 
				  
		        },
		 	 error: function() 
		      {
		      console.log("ERROR");
		      }
		        
		}); */


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


});
</script>
</html>