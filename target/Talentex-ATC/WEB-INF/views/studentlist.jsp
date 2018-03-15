<! DOCTYPE html> 
<html>
<head>  
<title>Talentex ATC Dashboard</title>
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
<link rel="stylesheet" href="css/bootstrap.offcanvas.css"/>
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/studentstable.css" />

<script type="text/javascript" src="js/dashboard.js"></script>
<script  src="js/Angularjs.js"></script>
<script  src="js/Angular_route.js"></script> 

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans">
         <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Source Sans Pro">


<style>

.studentsupload{
font-family:Montserrat;
text-align:center;
background-color:#fff;
position: relative;
top: -30px;
padding-top: 60px;
height:auto;
}

.addstu h3{
padding:10px 0;
color:#5c5c5c;
font-family:Source Sans Pro;
}

.addstu{
margin-top:60px;
}

a:hover{
text-decoration:none;
}
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
#preview 
{
	background-color: #fff;
	display: block;
	margin-top: -75px;
	float: right;
	margin-right: 5px;
	width: 200px;
	position: relative;
}

#fileinfo,#error,#error2,#abort,#warnsize,#none 
{
	color: #aaa;
	display: none;
	font-size: 10pt;
	font-style: italic;
	margin-top: 10px;
}
.atclist{
height:auto;
border:1px solid blue;
margin-top:2%;
padding-left:0px;
padding-right:0px;
}
.fixed-table-body
{
height:auto;
}
.download{
cursor:pointer;
}

@media only screen and (max-width:400px) {
	#preview {
		background-color: #fff;
		display: block;
		margin-left: 82px;
		margin-top: 50px;
		float: left;
		width: 200px;
	}
}

@media only screen and (max-width:350px) {
	#preview {
		background-color: #fff;
		display: block;
		margin-left: 22px;
		float: left;
		width: 200px;
	}
}

</style>
</head>
<body>
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

<div class="clear"></div>


<div class="col-lg-12 rmpad row studentsupload">

<div class="dashboard-box1">
<div class="span_box1 col-lg-4">
<i class="fa fa-money" aria-hidden="true"></i>
</div>
<div class="span_box1_right col-lg-8">
<h2>${totalC}</h2>
<p>Total Voucher Credits</p>
</div>
</div>

<div class="dashboard-box1">
<div class="span_box2 col-lg-4">
<img src="images/multiple-users.png" style="margin-top:45%">

</div>
<div class="span_box2_right col-lg-8">

<a href="studentlist">
<h2>${usedC}</h2></a>
<a href="studentlist" style="color:#333"><p>Used Voucher Credits</p>
</a>
</div>
</div>

<div class="dashboard-box1">
<div class="span_box3 col-lg-4">
<img src="images/newregisters.png" style="margin-top:36%;width:45px">
</div>
<div class="span_box3_right col-lg-8">
<h2>${balanceC}</h2>

<p>Balance Voucher Credits</p>

</div>
</div>


<div class="atclist col-lg-12">
<div style="background-color:#337AB7;color:#fff;padding:5px">
<h4>Studet list</h4>  

</div>
                  <!-- /.panel-heading -->
               
												<div class="panel-body" style="padding: 5px;">
																<table id="langtable" class="dynamicatclist">
																		<thead>
																			<tr>
																				<th>S.No</th>
																				<th>Name</th>
																				<th>Email</th>
																				<th>Date  Time</th>
																			</tr>
																		</thead>
																		<tbody>
																		
																
																		</tbody>
																	</table>
																	
												</div>
												<!-- /.panel-body -->
</div>

</div>

<div id="voucher_studentlist" style="display:none">${voucher_studentlist}</div>
</div>
</div>


<div id="photomodel" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Select your File and Click Upload</h4>
				</div>
				<div class="modal-body">
					<div id="imgcontent" class="row">

						<div class="container_image">
							<div class="upload_form_cont">

								
									<label for="image_file">
										<div id="hed">Please select image file with size less
											then 1 MB</div>
									</label>

									<div id="textbo">
										<input type="file" class="filestyle"
											data-buttonName="btn-primary" id="image_file"
											name="image_file" onchange="fileSelected();"> 
										<!-- <input type="file" id="image_file" name="image_file" class="filestyle" data-buttonBefore="true" onchange="fileSelected();"> -->
										<!-- <input type="file" name="image_file" id="image_file" onchange="fileSelected();" /> -->
									</div>
								<!-- 	<input type="button" class="btn btn-primary" value="Upload"  id="upload"/>
                                <input type="button" class="btn btn-danger" value="Cancel" id="cancel"  /> -->

									<div id="fileinfo">
										<div id="filename"></div>
										<div id="filesize"></div>
										<div id="filetype"></div>
										<div id="filedim"></div>
									</div>
									<div class="none" id="none">You should select valid image
										files First!</div>
									<div class="none" id="error">
										Only Image Formats Such as BMP/GIF/JPEG/PNG/TIFF Can be
										uploaded<br />You should select valid image files only!
									</div>
									<div class="none" id="error2">An error occurred while
										uploading the file</div>
									<div class="none" id="abort">The upload has been canceled
										by the user or the browser dropped the connection</div>
									<div class="none" id="warnsize">Your file is very big. We
										can't accept it. Please select more small file</div>

									<div id="progress_info">
										<div id="progress"></div>
										<div id="progress_percent"></div>
										<div class="clear_both"></div>
										<div>
											<div id="speed"></div>
											<div id="remaining"></div>
											<div id="b_transfered"></div>
											<div class="clear_both"></div>
										</div>
										<div id="upload_response" style="display: none"></div>
									</div>
								

								<img id="preview" />
							</div>

						</div>
						<div id="dataurl"
							style="position: absolute; bottom: 0; left: 0; width: 100%; height: 20%; border: 2px solid black; overflow: scroll; display: none"></div>
					</div>



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="button" id="upload" class="btn btn-primary"
						data-dismiss="modal">UPLOAD</button>
				</div>
			</div>
		</div>
	</div>
	
<footer>
<%@include file="/WEB-INF/common/footer.jsp"%>
</footer>
</body>



<!-- <span style="background-color:#F26E7C;border-radius:15px;float: right;margin-top: -11px;padding: 5px 22px;margin-right: -22px;color:#fff">0</span>
 -->
 
 
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.navgoco.js"></script> 
<script type="text/javascript" src="js/bootstrap-table.min.js"></script>

<script src="js/uploadimg.js"></script>
<script type="text/javascript" src="js/bootstrap.offcanvas.min.js"></script>
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>



<script>

$(document).ready(function(){
	
	/*  Click Event Photo Upload End */
	
 $(":file").filestyle({buttonName: "btn-primary"});

/*  Click Event Photo Upload Start */
	 
	 $(document).on('click','#upload',function(){
		 data = $("#dataurl").text();
		 console.log("BASE 64 is=====>"+data);
		 if (data === '')
	        {
			   $(".none").css("display","none");
	            document.getElementById('none').style.display = 'block';
	        }
	        else
	        {
	        	var src=$("#preview").attr("src");
	            $.ajax({
                    url:"photoupload",
                    type:"post",
                    data:{photo:src},
                    success:function (response) 
       	     	 {
       	        		
       	        	console.log("Ajax Response is----->"+response);
       	               
       	         },
       	          error: function() 
       	         {
       	         }
       	         
		            });
		            
		        $("#img").attr("src",src);
		        $(".img").text("");
		    	$("#barwidth1").text((parseInt($.trim($("#barwidth").text()).slice(0, -1), 10) + 5)+"%");
				$("#barwidth").css("width",$.trim($("#barwidth").text()).slice(0, -1)+"%");
			
	        }
    });

	/*  Click Event Photo Upload End */


/*  Student list table starts */
	

			// var voucher_studentlist='[[9223,"pradeep kannan","pradeepkannan91@gmail.com","9:00 AM - 11:00 AM"],[10799,"vimal","v6vimalraj@gmail.com","12:00 PM - 02:00 PM"]]';

	         var voucher_studentlist=$("#voucher_studentlist").text();
		     var studentlist=JSON.parse(voucher_studentlist);
		     console.log("--->"+studentlist);
		     var sno=1;
			 for(i=0;i<studentlist.length;i++)
			 {
                  
				 $("#langtable tbody").append("<tr id='tr"+i+"'><td class='heloo'>"+sno+"</td><td>"+studentlist[i][0]+"</td><td>"+studentlist[i][1]+"</td><td>"+studentlist[i][2]+"</td></tr>");
				 sno++;
				     
				 }
			 $('#langtable').bootstrapTable({
					clickToSelect: true,
					pagination: true,
					pageList: [5, 10, 15],
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

/*  Student list table END */
	
});



</script>



</html>