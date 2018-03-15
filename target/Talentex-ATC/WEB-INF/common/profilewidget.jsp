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

<div class="profile-app">
<div class="profile-head"><i style="padding:10px;background-color:#0093C8"class="fa fa-user" aria-hidden="true"></i><span style="padding:10px;font-size:16px">Profile</span></div>

<div class="col-lg-12 rmpad profile-heading">

    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 imageshow" data-toggle="modal" data-target="#photomodel">
		<img src="" style="margin-top:13px;margin-left: 12px;" width="80" height="80" style="cursor: pointer" class="profile img"  id="img" />
        <div class="changeimg"  style="cursor: pointer;position:absolute;top:80px;border:1px solid black;padding:2.5px;left:17px;box-shadow: 1px 1px 7px rgba(0,0,0,1.2);font-size:10px;width:80px;color:white;background-color:gray;">
		<i class="fa fa-camera"></i>&nbsp;Change Photo</div>
	</div>
	
<div class="col-lg-8" style="margin-top:34px;padding:0px;">
<p class="colg-name">${institution_Name}</p>
</div>
</div>


<div class="col-lg-12 profile-accesaries">
<div class="col-lg-2"></div>
<div class="col-lg-10" style="border-bottom:1px solid #eee;padding:5px 0;">
<img src="images/computer.png">
<span class="basic-info">Computer systems</span>
<span class="basic-icons">${dedicted_System}</span>

</div>
</div>

<div class="col-lg-12 profile-accesaries">
<div class="col-lg-2"></div>
<div class="col-lg-10" style="border-bottom:1px solid #eee;padding:5px 0;">
<img src="images/internet.png">
<span class="basic-info">netspeed</span>
<span class="basic-icons" style="color:#FF4B4C;">${net_Speed}</span>

</div>
</div>

<div class="col-lg-12 profile-accesaries">
<div class="col-lg-2"></div>
<div class="col-lg-10" style="border-bottom:1px solid #eee;padding:5px 0;">
<img src="images/credit-card.png">
<span class="basic-info">Total Payments</span>
<span class="basic-icons" style="color:#2ACB4E">0</span>
</div>
</div>

<div class="col-lg-12 profile-accesaries">
<div class="col-lg-2"></div>
<div class="col-lg-10" style="padding:5px 0;">
<img src="images/atcid.png">
<span class="basic-info">ATC ID</span>
<span class="basic-icons" style="color:#343f4b;text-transform: uppercase;">${atc_comp_id}</span>
</div>
</div>

</div>
<div class="clear"></div>

<div id="userlogo" style="display:none">${logo}</div>


<script>

$(document).ready(function(){

	var logosrc=$('#userlogo').text();
    
	   if(logosrc===''||logosrc==="null")
		{
		   console.log("Profile widget IFFFFFFFFFFFFFFff");
		   $(".img").attr("src","images/profilepic.png");
		}   
	   else
	   {
		   console.log("Profile widget ELSEEEEEEEEE");
	       $(".img").attr("src",logosrc);      
	     
	   }
	    
	
});
</script>


