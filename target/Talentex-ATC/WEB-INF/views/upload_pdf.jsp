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
<h2 id="takeexam_count"><%=(session.getAttribute("completedCount"))%></h2>
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


<div class="col-lg-8 rmpad row" style="background-color:#fff;margin-left:17px;margin-left:13%;margin-top:5%">

<div id="profile-head">

</div>
</div>



<!-- Table -->
<div class="col-lg-12">

<table id="langtable">
	<thead>
																			<tr>
																				<th>Dates</th>
																				
																				<th>Status</th>
																				
																				<th>Upload Zip file</th>

																			</tr>
																		</thead>
<tbody>
<c:forEach var="langlist" items="${alrPdf_Uploads}"> 
         <tr>
			<td class='name'>${langlist.exam_held_date}</td>
			
			<c:if test="${langlist.status == 0}">
			 <td><button type='button' class='btn btn-danger' style="text-transform: uppercase">not upload</button></td>
			</c:if>
			<c:if test="${langlist.status == 1}">
			 <td><button type='button' class='btn btn-success' style="text-transform: uppercase">Uploaded</button></td>
			</c:if>
			<td>
			 <div class="btn btn-primary pdfupload" id="addresume" style="border-radius:0px" data-toggle="modal" data-target="#resume">Upload</div>
			</td>
		
		
		</tr> 
</c:forEach>
</tbody>
</table>


</div>																

</div>

</div>
</div>
</div>
    <div class="modal fade" id="resume" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
   
        <div class="modal-header">
          <h4 class="modal-title" style="text-align: center;">Upload Zip</h4>
        </div>
        <div class="modal-body">
     <div class="form-group" style="margin-bottom:3px;">
         <label for="name">*Choose .zip File:</label>
		<input  id="inputFileToLoad1" type="file" onchange="loadImageFileAsURL1();" class="btn btn-success" required value="Upload Resume"  accept="application/zip"/>
		</div>
  <div id="rtype" style="font-size:17px;text-align: center;color: #5CB85C;">(.zip files only)</div>
 <div style="color:#D9534F;font-size:17px;display:none;text-align: center;" id="ermsg11">Please Upload Your Resume</div>
        </div>
        <form action="upload_studentspdf" method="post">
    
       <textarea id="textAreaFileContents" name="upload_pdf" style="width:640;height:240;display:none;" ></textarea>
       <input type="text" id="pass_date" name="exam_held_date" style="display:none">
          
        <div class="modal-footer">
        	<button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
          <input type="submit" class="btn btn-primary sendButton" id="submitresume" value="SUBMIT">
          
        </div>
       </form>
      </div>
      
    </div>
  </div>
  <div id="pdfstatus">

	<%-- <c:forEach var="langlist" varStatus="counter" items="${atc_lists}"> --%>
	<%-- <tr id="row${counter.count}" class="hid_1">
		<td>${counter.count}</td>
		<td class='name'>${langlist.institution_name}</td>
		<td class="position" style="text-transform: capitalize;">${langlist.email}</td>
		<td class="acceotstats"><span style="text-transform: capitalize;top: 5px;position: relative;font-size: 13px;">${langlist.mobile}</span></td>
		<td class=""><a class="view" href='javascript:void(0)' style="font-size: 15px;">view</a></td>
		<td class="hi">${langlist.id}</td>
	</tr> --%>

  </div>
<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.navgoco.js"></script> 
<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
</body>
<script type="text/javascript">

function loadImageFileAsURL1()
{
	var filesSelected = document.getElementById("inputFileToLoad1").files;
	var filesSelected1 = document.getElementById("inputFileToLoad1").value;
	var lastIndex = filesSelected1.lastIndexOf("\\");
    if (lastIndex >= 0) 
    {
    	filesSelected1 = filesSelected1.substring(lastIndex + 1);
    }
    var findindex = filesSelected1.lastIndexOf(".");
    var rfileextension=filesSelected1.substring(findindex);
    console.log("The extensions is-->"+rfileextension);


	if((rfileextension == ".zip" || rfileextension == ".ZIP" || rfileextension == ".Zip"))
     
		{
		
			$("#ermsg11").hide();
			 $("#rtype").hide();
			var fileToLoad = filesSelected[0];

			var fileReader = new FileReader();

			fileReader.onload = function(fileLoadedEvent) 
			{
				var upload_pdf = document.getElementById
				(
					"textAreaFileContents"
				);
		
				textAreaFileContents.innerHTML = fileLoadedEvent.target.result;
				console.log("The base64 is-->"+$("#textAreaFileContents").val());
				
			};

			fileReader.readAsDataURL(fileToLoad);
			$("#submitresume").removeClass("disabled");
		}
	 else
		 {
		 $("#ermsg11").hide();
		 $("#submitresume").addClass("disabled");
		 $("#rtype").css("color","#D9534F").text("Upload only  .zip").show();
	     }
	

}


$(document).ready(function(){

	/* Check PDF UPLOAD STATUS */
	var takeexam_count=$('#takeexam_count').text();
	console.log("--takeexam_count--->"+takeexam_count);
	 if(takeexam_count>=1){
		   console.log("^^^^^^^^^^^^^^^^^^^^^^^^^^^")
		   $('.pdf_upload').css({"opacity":"1"});
     	  
  		   $('.pdf_upload').unbind('click', function(e){
		        e.preventDefault();
		    })
		    		
	 }
	  else{
     	 
    	  $('.pdf_upload').css({"opacity":"1"});
    	 
		    window.location.href="dashboard";	
          }
	 /* ================ */
     


		$(document).on("click",".pdfupload",function(){

console.log("addresume clicked");
	//var vlaue=$(this).closest('td').find('#datevalue').text();
	var exam_held_date=$(this).closest('tr').children('td:first').text();

	   $('#pass_date').val(exam_held_date);
	
         
		});
		
			
	var month_name = function(dt)
	{  
		mlist = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];  
		  return mlist[dt.getMonth()];  
	}  



	

});

</script>
</html>