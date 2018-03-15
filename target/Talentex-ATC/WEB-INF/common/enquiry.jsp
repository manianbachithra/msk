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

<style>
    #enquiry_form label {
    margin-bottom: 0px;    
    }
     #enquiry_form i {
    line-height: 1.75em;
    }

</style>

<div class="profile-app">
<div class="profile-head"><i style="padding:10px;background-color:#0093C8"class="fa fa-pencil" aria-hidden="true"></i><span style="padding:10px;font-size:16px">Enquiry</span></div>


<div id="contactForm" class="contactForm">
	
	<div id="formBody" class="formBody" style="height:286px">
	<p id="errormsg" style="display:none;color:red;text-align:center;font-size:16px;"> Fill all the Fields</p>
		
		<form id="enquiry_form">
			<div class="inputContainer">
				<label for="userName">
					<i class="fa fa-lg fa-fw fa-user"></i>
				</label>
				<input name="enquiryname" id="username" type="text" placeholder="Your Name">
			</div>
			
			<div class="inputContainer">
				<label for="userEmail">
					<i class="fa fa-lg fa-fw fa-envelope"></i>
				</label>
				<input name="enquiryemail" id="userEmail" type="email" placeholder="Your Email">
			</div>
			
		    <div class="inputContainer" style="display:none">
				<label for="userEmail">
					<i class="fa fa-lg fa-fw fa-envelope"></i>
				</label>
				<input name="atcuserid" id="atcuserid" type="email" value="<%=session.getAttribute("email")%>">
			</div> 
			
			<div class="inputContainer">
				<textarea name="feedbackmsg" id="userMessage" rows="5" placeholder="Enter your message"></textarea>
			</div>
			<input id="enquiryBtn" class="enquiryBtn btn-default" type="button" value="Send" style="float: right;margin-top:12px">
		</form>
	</div>
</div>

  <!--START Modal for Enquiry form -->
  <div class="modal fade" id="thankyouModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Thank You</h4>
        </div>
        <div class="modal-body">
          <p>Your Feedback / Query,  We shall revert you as soon as possible. </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
	 <!--END Modal for Enquiry form -->
</div>
<div class="clear"></div>


<script>

$(document).ready(function(){

	
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
	
	
	$(document).on("click", "#enquiryBtn",function() { 

	    var username=$("#username").val();
	    var  userEmail=$("#userEmail").val();
	    var atcuserid=$("#atcuserid").val();
	    var feedbackmsg=$("#userMessage").val();

	     console.log(username+","+userEmail+","+atcuserid+","+userMessage);
	    
	     if (username == "" || userEmail == ""  || testEmail(userEmail) == false || feedbackmsg == "") 
	     {
	    	 
	    	 if($("#username").val() =="")
	    	 {	
	    		 console.log(username+","+userEmail+","+atcuserid+","+userMessage);
	    		 $("#username").css("border","1px solid #a94442");
	    	 }
	    	 else
	    	 {
	    		 $("#username").css("border","1px solid #2b542c");
	    	 } 
	    	 
	    	 if(userEmail =="")
    		 {
    		 $("#userEmail").css("border","1px solid #a94442");
    		 console.log("email empty");
    		 }
	    	 else if(testEmail(userEmail))
	    	 {
	    		 $("#userEmail").css("border","1px solid #2b542c");
	    	 }
	    	 else
	    	 {
	    		 $("#userEmail").css("border","1px solid #a94442");
	    		 console.log("email error");
	    	 }
	    	 
	    	 if(feedbackmsg =="")
    		 {
    		 $("#userMessage").css("border","1px solid #a94442");
    		 }
	    	 else
	    	 {
	    		 $("#userMessage").css("border","1px solid #2b542c");
	    	 }

  	         $("#errormsg").show().delay(2000).fadeOut();
	     }
	     else
	     {
	    	 $("#username").css("border","1px solid #2b542c");
	    	 $("#userMessage").css("border","1px solid #2b542c");
	    	 $("#userEmail").css("border","1px solid #2b542c");
	    	 
	    	 
	    	 
	   	  $.ajax({
	 		 url:'enquiryform',
	 		 type:'post',
	 		 data:{
	                'enquiryname':username,
	                'enquiryemail':userEmail,
	                'atcuserid':atcuserid,
	                'feedbackmsg':feedbackmsg               
	     		 },
	     		 success:function (response) 
	     		 {

	     		
    				$('#username').val("");
    				$('#userEmail').val("");
    				$('#userMessage').val("");

    				$("#username").css({"border-color": "#B0B0BA","border-style":"solid"});
    				$("#userEmail").css({"border-color": "#B0B0BA","border-style":"solid"});
    				$("#userMessage").css({"border-color": "#B0B0BA","border-style":"solid"});
    				
                   var chkstatus=response;
	                if (response=="thankyou");
	                {
	                    $('#thankyouModal').modal('show');
	                }
	                
	              },
	         	 error: function() 
	              {
	              console.log("ERROR");
	              }
	 		 
	 }); 
	         }

		  
		});
 

 	
		  
}); 
</script>


