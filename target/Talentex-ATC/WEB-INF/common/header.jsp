<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
if(session.getAttribute("email") == null)
{
	
    response.sendRedirect("index");
}
    response.setHeader("Pragma","no-cache"); 
    response.setHeader("Cache-Control","no-store"); 
    response.setHeader("Expires","0"); 
    response.setDateHeader("Expires",-1); 

%>
<header>
<div class="col-lg-12 top-info top-strip">
<div class="container">

</div>
</div>
<div class="col-lg-12 dash_header">
<div class="col-lg-2 mainlogo" style="height:75px;color:#fff">
<img src="images/talentexcb.png" style="width:150px;padding:4px;">              
</div>
<div class="col-lg-10" style="border-bottom:10px solid #00ADE3;height:75px;color:#fff;padding-left:5%;">

<div class="head-options" id="nav-expander"> <img style="width: 20px;margin-bottom:8px;cursor:pointer" src="images/user.png" width="28px"><br><span style="cursor:pointer">User</span></div>

<div class="head-options"><a style="color:#fff!important" href="dashboard"> <img style="width: 20px;margin-bottom:8px;cursor:pointer" src="images/home.png" width="28px"><br><span style="cursor:pointer">Dashboard</span></a></div>

<div class="head-options Schedule"><a style="color:#fff!important" href="sheduledates"><img style="width: 20px;margin-bottom:8px;" src="images/calendar.png" width="26px"><br>Schedule Exam Dates</a></div>

<!-- <div class="head-options voucher"><a style="color:#fff!important;" href="voucher"><span data-toggle="tooltip" data-placement="right" title="purchase bulk exam Vouchers Call +91 42307128"><img src="images/coupon.png" width="26px"><br>Exam Vouchers</span></a></div>
 -->
 
 <div class="head-options voucher"><span data-toggle="tooltip" data-placement="right" title="purchase bulk exam Vouchers Call +91 42307128"><img src="images/coupon.png" width="26px"><br>
 <ul class="nav navbar-nav navbar-right">
 <li id="theme_selector" class="dropdown">
 <a href="#" style="color:#fff!important;background-color:#343F4B;padding:0px" class="dropdown-toggle" data-toggle="dropdown">Exam Vouchers<i class="fa fa-sort-desc" style="padding:0 5px"aria-hidden="true"></i></a>
    <ul id="theme" class="dropdown-menu" role="menu">
                            <li class="g_voucher"><a href="voucher">General Voucher code</a></li>
                            <li class="c_voucher"><a href="campusvoucher">Campus Voucher code</a></li>
                            
                        </ul>
 </li>
                    </ul></span>
                    </div>
      


<div class="head-options"><a style="color:#fff!important;" class="pdf_upload" href="upload_pdf"><span id="tooltipcheck" data-toggle="tooltip" data-placement="right" title="It will be enabled only after students completes the test"><img src="images/upload.png" width="26px"><br>PDF Upload</span></a></div>

 <div class="head-options"><img src="images/coupon.png" width="26px"><br>
 <ul class="nav navbar-nav navbar-right">
 <li class="dropdown">
 <a href="#" style="color:#fff!important;background-color:#343F4B;padding:0px" class="dropdown-toggle" data-toggle="dropdown">MOCD<i class="fa fa-sort-desc" style="padding:0 5px"aria-hidden="true"></i></a>
    <ul id="theme" class="dropdown-menu" role="menu">
                            <li><a data-toggle="tooltip" data-placement="right" title="Completed Select the current MOCD dates" href="#">MOCD 1</a></li>
                             <li><a data-toggle="tooltip" data-placement="right" title="Completed Select the current MOCD dates" href="#">MOCD 2</a></li>
                              <li><a href="sheduledates">MOCD 3</a></li>
                        
                            
                        </ul>
 </li>
                    </ul>
                    </div>

<div class="head-options " style="float:right;border-right: 1px solid #343F4B;"><a style="color:#fff" href="logout"><img style="width: 20px;margin-bottom:8px;" src="images/logout.png" width="26px"><br>Logout</a></div>
 
</div>
</div>
</header>

<div class="clear"></div>
<div class="registation_status" style="display:none"><%=session.getAttribute("exStatus")%></div>

<div id="vpStatus" style="display:none"><%=session.getAttribute("vpStatus")%></div>
<div id="cpStatus" style="display:none"><%=session.getAttribute("cpStatus")%></div>
<div id="takeexam_count2" style="display:none"><%=(session.getAttribute("completedCount"))%></div>
<script>

$(document).ready(function(){
	 
	 $('[data-toggle="tooltip"]').tooltip();
	var takeexam_count=$('#takeexam_count2').text();
	console.log("--takeexam_count--->"+takeexam_count);
	
	 if(takeexam_count!=0){
		
		$("#tooltipcheck").tooltip('destroy');
		 $('.pdf_upload').css({"opacity":"1"});
		 $('.pdf_upload').unbind('click', function(e){
		        e.preventDefault();
		    })
		   	
	 }
	  else{
	  		 $('.pdf_upload').css({"opacity":"1"});
	    	 
			    $('.pdf_upload').bind('click', function(e){
			        e.preventDefault();
			 })
  		 
          }
	
	
	 

	var reigstration_status= $(".registation_status").text();
	
	  console.log("Your current Registation stuatus was ----> "+reigstration_status);

          if(reigstration_status=="1"||reigstration_status=="1"){

        $('.Schedule').css({"opacity":"0.3"});
        	  //$('.Schedule').css({"background:":"rgba(255,255,255,0.5)"})
     		 $('.Schedule').bind('click', function(e){
     		        e.preventDefault();
     		 })
   	
          }
          else{
        	 
        	  $('.Schedule').css({"opacity":"1"});
        	  $('.Schedule').unbind('click', function(e){
  		        e.preventDefault();
  		    })
              }


          /* Opacity click function Start */
          var voucher_status=$('#vpStatus').text();
          console.log("----voucher_statusssssssss----->"+voucher_status);
          if(voucher_status=="1"||voucher_status==1){
        	 // window.location.href = "dashboard";
     		  $('.g_voucher').css({"opacity":"1"});
        	  $('.g_voucher').unbind('click', function(e){
  		        e.preventDefault();
  		    })
          }
          
          else{
        	 
        	 $('.g_voucher').css({"opacity":"0.3"});
      		 $('.g_voucher').bind('click', function(e){
      		        e.preventDefault();
      		 })
              }
       
          var cvoucher_status=$('#cpStatus').text();
                 
          console.log("----ccvoucher_statusssssssss----->"+cvoucher_status);
          if(cvoucher_status=="1"||cvoucher_status==1){
        	 // window.location.href = "dashboard";
     		  $('.c_voucher').css({"opacity":"1"});
        	  $('.c_voucher').unbind('click', function(e){
  		        e.preventDefault();
  		    })
          }
          
          else{
        	 
        	 $('.c_voucher').css({"opacity":"0.3"});
      		 $('.c_voucher').bind('click', function(e){
      		        e.preventDefault();
      		 })
              }
          
          /* End Opacity click function */
          

});


</script>

<style>
.voucher ul{
        padding: 0;
        list-style: none;
        background: #f2f2f2;
    }
    .voucher ul li{
        display: inline-block;
        position: relative;
        line-height: 21px;
        text-align: left;
    }
    .voucher ul li a{
        display: block;
        padding: 8px 25px;
        color: #333;
        text-decoration: none;
    }
    .voucher ul li a:hover{
        color: #fff;
        background: #939393;
    }
    .voucher ul li ul.dropdown{
        min-width: 100%; /* Set width of the dropdown */
        background: #f2f2f2;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
    .voucher ul li:hover ul.dropdown{
        display: block;	/* Display the dropdown */
    }
    .voucher ul li ul.dropdown li{
        display: block;
    }
    .navbar-right{
  z-index: 999; 
    }
</style>
