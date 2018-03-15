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

<div class="container2">
<nav>
  <ul class="list-unstyled main-menu">
 
    <!--Include your navigation here-->
  
    <li style="padding:0px;margin:0px">
    <div class="canvas-menu-header"><a href="#" id="nav-close">X</a>
    <br/>
    <img src="" style="width:80px" id="imglogo">
    <h4>${institution_Name}</h4>
    </div>
    </li>
    <li><img src="images/dashboard.png"><span style="position: relative;top: 8px;"><a href="dashboard">Dahboard </a><span class="icon"></span></span></li>
    <li><img src="images/text-document.png"><span style="position: relative;top: 8px;"><a href="updatebasicinfo#commentForm">Basic Info </a><span class="icon"></span></span></li>
    <li><img src="images/computerinfo.png"><span style="position: relative;top: 8px;"><a href="updatebasicinfo#systeminfoidform">System Info </a><span class="icon"></span></span></li>
    <li><img src="images/placeholder.png"><span style="position: relative;top: 8px;"><a href="updatebasicinfo#addresidform">Test Centre Address </a><span class="icon"></span></span></li>
    <li><img src="images/key.png"><span style="position: relative;top: 8px;"><a href="updatebasicinfo#passwordidform">Update Password </a><span class="icon"></span></span></li>
    <li><img src="images/question.png"><span style="position: relative;top: 8px;"><a href="http://talentex.in/user/mocd#tf-nodal" target="_blank">FAQ</a><span class="icon"></span></span></li>
 
    <!-- <li><a href="#">Dropdown</a>
      <ul class="list-unstyled">
          <li class="sub-nav"><a href="#">Sub Menu One <span class="icon"></span></a></li>
          <li class="sub-nav"><a href="#">Sub Menu Two <span class="icon"></span></a></li>
          <li class="sub-nav"><a href="#">Sub Menu Three <span class="icon"></span></a></li>
          <li class="sub-nav"><a href="#">Sub Menu Four <span class="icon"></span></a></li>
          <li class="sub-nav"><a href="#">Sub Menu Five <span class="icon"></span></a></li>
      </ul> 
    </li>-->
   
    
  </ul>
</nav>
 </div>


<div id="offcanvaslogo" style="display:none">${logo}</div>


<script>

$(document).ready(function(){

	var logosrc=$('#offcanvaslogo').text();

	   if(logosrc===''||logosrc==="null"||logosrc==="(NULL)")
		{
			
		   $("#imglogo").attr("src","images/profilepic.png");
		   console.log("IF  OFF CANVAASSSSSSSSSSSS");
		   
		}   
	   else{
		   
	      $("#imglogo").attr("src",logosrc);
	    
	    console.log("ELSE OFF CANVAASSSSSSSSSSSS");      
	     
	    }
	
});
</script>


