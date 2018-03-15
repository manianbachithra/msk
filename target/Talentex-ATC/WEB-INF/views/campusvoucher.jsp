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
.samplexlsx
{
color: rgb(21, 124, 160);
    background: rgb(255, 255, 255);
    border-width: 1px;
    border-style: solid;
    border-color: rgb(21, 124, 160);
    border-image: initial;
    font-weight: initial;
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
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/bootstrap.offcanvas.css"/>
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/studentstable.css" />

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.navgoco.js"></script>
<script type="text/javascript" src="js/bootstrap.offcanvas.min.js"></script>
<script type="text/javascript" src="js/dashboard.js"></script>
<script src="js/uploadimg.js"></script>
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>

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
height:725px;
}

.addstu h3{
padding:10px 0;
color:#5c5c5c;
font-family:Source Sans Pro;
}
.addstu a{
color:#5c5c5c;
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
<h1 id="vochpurchuse_status" style="display:none"><%=session.getAttribute("campus_voucher_booked")%></h1>
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
<h2>${totalsplC}</h2>
<p>Total Campus Voucher Credits</p>
</div>
</div>

<div class="dashboard-box1">

<div class="span_box2 col-lg-4">
<a href="studentlist">
<img src="images/multiple-users.png" style="margin-top:45%">
</a>
</div>
<div class="span_box2_right col-lg-8">

<a href="studentlist">
<h2>${usedsplC}</h2></a>
<a href="studentlist" style="color:#333"><p>Used Campus Voucher Credits</p>
</a>
</div>

</div>

<div class="dashboard-box1">
<div class="span_box3 col-lg-4">
<img src="images/newregisters.png" style="margin-top:36%;width:45px">
</div>
<div class="span_box3_right col-lg-8">
<h2 id="balance_credits">${balancesplC}</h2>
<p>Balance Campus Voucher Credits</p>

</div>
</div>

<div class="col-lg-12 addstu" >
<div class="col-lg-2">
</div>
<div class="col-lg-5">
<h3><a href="campusaddstudent">ADD STUDENTS MANUALLY</a></h3>

<h3>(or)</h3>

<h3 id="bulk_upload" style="cursor:pointer">BULK UPLOAD</h3>
</div>

<div class="col-lg-3" style="text-align: left">
<img style="opacity:0.15" src="images/voucher.jpg">
</div>

</div>

<div class="col-lg-12 bulkuploadiv">

<div class="col-lg-12" style="margin-top:15px;margin-bottom:15px;">
<div class="col-lg-2"></div>
<div class="col-lg-6">
<input type="file" class="filestyle" data-buttonName="btn-primary" id="bulk_file" name="image_file" class="excelfile_textbox"accept="application/xlsx,application/xls"/ > 
<div class="success_status" style="color:#50B948;font-size:14px"></div>
</div>
<div class="col-lg-3">

<input type="button" class="btn btn-success sendButton" id="submitxlsx" value="SUBMIT" style="float:left;display:none">
<img src="images/submitting.gif" width="35px" id="img_submitting" style="display:none;float:left">
<div class="errormsg"></div>
</div>
</div>

<a download  href="http://fbtech.in/upload/samplebulkupload.xlsx"><button class="pull-left samplexlsx" style="">

<i class="fa fa-download"></i>&nbsp;Sample XLSX</button>
</a>

</div>

</div>

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
 
<script src="http://cdn-na.infragistics.com/igniteui/latest/js/infragistics.core.js"></script>
<script src="http://cdn-na.infragistics.com/igniteui/latest/js/modules/infragistics.documents.core.js"></script>
<script src="http://cdn-na.infragistics.com/igniteui/latest/js/modules/infragistics.excel.js"></script>
 
<script>


$('.bulkuploadiv').hide()
$('#bulk_upload').on('click', function () {
	
    $('.bulkuploadiv').toggle('slide');
});



$(document).ready(function(){
	

	   var vochpurchuse_status=$('#vochpurchuse_status').text();

	  console.log("vochpurchuse_status---->"+vochpurchuse_status);
 	    if(vochpurchuse_status!=1)
           {
		   window.location.href = "dashboard";
		   } 
    
	

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
	        	console.log("SRC--->"+src);
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

	
	function testEmail(email)
    {
    	var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
        return pattern.test(email);
    }
	function phonenumber(phone) 
	{
	        var pattern = new RegExp(/^[789]\d{9}$/i);
	        return pattern.test(phone);
	}
	
            $("#bulk_file").on("change", function () {
            	
            	$('.sendButton').show()
                var excelFile,fileReader = new FileReader();
                var headername=["person","mail","mobile"];

                    fileReader.onload = function (e) {
                    var buffer = new Uint8Array(fileReader.result);

                    $.ig.excel.Workbook.load(buffer, function (workbook) {
                        var column, row, newRow, cellValue, columnIndex, i,
                            worksheet = workbook.worksheets(0),
                            columnsNumber = 0,
                            gridColumns = [],
                            data = [],
                            worksheetRowsCount;

                        // Both the columns and rows in the worksheet are lazily created and because of this most of the time worksheet.columns().count() will return 0
                        // So to get the number of columns we read the values in the first row and count. When value is null we stop counting columns:
                        while (worksheet.rows(0).getCellValue(columnsNumber)) {
                            columnsNumber++;
                        }

                        // Iterating through cells in first row and use the cell text as key and header text for the grid columns
                        for (columnIndex = 0; columnIndex < columnsNumber; columnIndex++) 
                        {
                            column = worksheet.rows(0).getCellText(columnIndex);
                            gridColumns.push({ headerText: column, key: headername[columnIndex] });
                        }

                        // We start iterating from 1, because we already read the first row to build the gridColumns array above
                        // We use each cell value and add it to json array, which will be used as dataSource for the grid
                        for (i = 1, worksheetRowsCount = worksheet.rows().count() ; i < worksheetRowsCount; i++) 
                        {
                            newRow = {};
                            row = worksheet.rows(i);

                            for (columnIndex = 0; columnIndex < columnsNumber; columnIndex++) 
                            {
                                cellValue = row.getCellText(columnIndex);
                                
                                if(cellValue=="")
                                {
                                	
                                }
                                else
                                {
                                	
                                if(gridColumns[columnIndex].key=="mail")
                                {
                                	if(testEmail(cellValue))
                                	{
                                		newRow[gridColumns[columnIndex].key] = cellValue;
                                	}
                                }
                                
                                if(gridColumns[columnIndex].key=="mobile")
                                {
                                	if(phonenumber(cellValue))
                                	{
                                		newRow[gridColumns[columnIndex].key] = cellValue;
                                	}
                                }
                                
                                if(gridColumns[columnIndex].key=="person")
                                {
                                 newRow[gridColumns[columnIndex].key] = cellValue;
                                }

                                
                            }
                            
                            if(newRow.hasOwnProperty("person") && newRow.hasOwnProperty("mail") &&  newRow.hasOwnProperty("mobile"))
                            {
                            data.push(newRow);
                            }
                            else
                            {
                            
                            }
                            
                        }
                   }

                        // we can also skip passing the gridColumns use autoGenerateColumns = true, or modify the gridColumns array
                        createGrid(data);
                        
                    }, function (error) {
                        $("#result").text("The excel file is corrupted.");
                        $("#result").show(1000);
                    });
                }

                if (this.files.length > 0) {
                    excelFile = this.files[0];
                    if (excelFile.type === "application/vnd.ms-excel" || excelFile.type === "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" || (excelFile.type === "" && (excelFile.name.endsWith("xls") || excelFile.name.endsWith("xlsx")))) {
                        fileReader.readAsArrayBuffer(excelFile);
                        $("#submitxlsx").removeClass("disabled");
                        $(".errormsg").text("");

                        
                    } else {
                    	$("#submitxlsx").addClass("disabled");
                    	$('.sendButton').hide();
                    	/* $("#errormsg").css("color","#D9534F").text("Upload only  .xlsx"); */
                    	$(".errormsg").css("color","#D9534F").text("Upload only  .xlsx file");
                    }
                }

            })

        function createGrid(data) 
	    {
              /*  console.log("Tge Total data is---->"+JSON.stringify(data));
               console.log("balance_credits..............."+$('#balance_credits').text()); */
             console.log("#########################################"+data);
             if($('#balance_credits').text() < data.length || data==""){

              console.log("ENTER INTO IF ");
              $("#submitxlsx").hide();
              $('.errormsg').css("color","#C9302C").text("You have exceeded voucher limit (or) exel was not valid");
              
                 }
             else if(data==""){
            	 console.log("ENTER INTO ESLE IF ");
                 $("#submitxlsx").hide();
                 $('.errormsg').css("color","#C9302C").text("Excel was not valid");
                 }
             else{
            	 console.log("ENTER INTO Else");
            	 $('.sendButton').show();
            	 
                 
                 $(".sendButton").click(function(){
              	   $('.sendButton').hide();
              	   $('#img_submitting').show();
              	   $(".btn-primary").addClass("disabled");
                		$.ajax({
              			url:"voucherAssign",
              			method:"post",
              			data:{"contactperson_json":JSON.stringify(data),"voucher_type":"2"},
              		}).	done(function(){
              			    $('.form-control ').val("");
              			    $('#img_submitting').hide();
              			    $(".btn-primary").removeClass("disabled");
              				console.log("success");
              				
              				$(".success_status").text("Thank you for the request'+<br/>+' we shall send vouchers subject to your available credit with us").fadeIn('slow').delay(3000).hide(0);
              				
              			});

                     })

                 }
           
       
        }
		
	
});

</script>

</html>