
$(document).ready(function(){
	
    function emailValid(emailAddress) {
    	        var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
    	        return pattern.test(emailAddress);
    	    };
	
	 $('#uemail').on("keyup",function() {
	        var email = $('#uemail').val();
	       
	        if (email === '' || email === 'null' || email === null || emailValid(email) === false) 
	        {
	        	
	        }
	        
	        else 
	        {
	        	console.log("The current email is-->"+email);
	            $.ajax({
	                url: 'checkmail',
	                type: 'GET',
	                dataType: 'text',
	                data: {'email': email},
	                success: function(responseText) {
	                	console.log("The check responseText is -->"+responseText);
	                	
	                    $('.close').click(function() {
	                                $('.alert').fadeOut('slow');
	                            });

	                    var res = $.trim(responseText).replace(" ","");
	                       console.log("rest value is"+res);
	                         
	                    if (res === "true" || res === true) 
	                    {
	                        $('#uemail').val("");
//	                        $("#emaildangerdata").text("Your Email-ID is already registered with us . Please use a different Email-ID.");
//	                        $("#emaildanger").show();
	                        
	                        $('#dangerdata').text('Your E-mail is already registered with us . Please use a different E-mail Id.');
	                        $('#chkdanger').fadeIn();
	                        $('#registrationform').bootstrapValidator('revalidateField', 'user_email');
	                        $('#uemail').val(email);
	                        
	                    } 
	                    else 
	                    {
	                    	$("#emaildanger").hide();
	                        $('#registrationform').bootstrapValidator('revalidateField', 'user_email');

	                    }
	                },
	                error: function() {}

	            });


	        }
	    });
	 
	 function phonenumber(phone) 
	    {
	        var pattern = new RegExp(/^[789]\d{9}$/i);
	        return pattern.test(phone);
	    }
	 
	 $('#mobilenumber').on("keyup",function() {

	        var mobnum = $('#mobilenumber').val();
	        if (mobnum === '' || mobnum === 'null' || mobnum === null || phonenumber(mobnum) === false) 
	        {

	        } else {
	        	console.log("You typed Mobile number is----->"+mobnum);
	            $.ajax({
	                type: "post",
	                url: "verifymob",
	                data: {number: mobnum},
	                success: function(responsetext) {
	                	console.log("You typed Mobile number is----->"+responsetext);
	                	
	                    if ($.trim(responsetext)=="true") 
	                    {
	                    	
	                    	console.log("IFFF^^^^^^^^^^^^^^^^^^^^^^^^");
	                        $("#mobilenumber").val("");
	                        $('.alert-dismissible').css('display', 'none');
	                        $('#dangerdata').text('Your mobile number is already registered with us . Please use a different mobile number.');
	                        $('#chkdanger').fadeIn();
	                        $("#mobilenumber").val("");
	                        $('#registrationform').bootstrapValidator('revalidateField', 'user_mobile');
	                        $("#mobilenumber").val(mobnum);

	                    } 
	                    else 
	                    {
	                   	 console.log("ELSEEEEE if^^^^^^^^^^^^^^^^^^^^^^^^");
	                     $('.alert-dismissible').css('display', 'none');
	                    }
	                    
	                    
	                },
	                error: function(responsetext) {}

	            });

	        }
	    });
  
	 
/*	 ------------------Bootstrap Validations-------------------*/

	 $('#registrationform').bootstrapValidator({
         feedbackIcons: {
             valid: 'glyphicon glyphicon-ok',
             invalid: 'glyphicon glyphicon-remove',
             validating: 'glyphicon glyphicon-refresh'
         },
         fields:{
        	 insit_name: {
                 message: 'The Institution name is not valid',
                 validators: {
                     notEmpty: {
                         message: 'The Institution name is required and cannot be empty'
                     }
                 }
             },
             user_email: {

                 validators: {
                     notEmpty: 
                     {
                         message: 'The email address is empty/not valid or is already registered with us '
                     },
                  regexp: 
                  {              	 
                 regexp: /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i,
                 message: 'The email address is not a valid'
                  },
            
                 }
             },
             user_mobile: {
                 validators: {
                     digits: {
                         message: 'The phone number can contain digits only'
                     },
                     notEmpty: {
                         message: 'The phone number is required / You might have entered an existing mobile number'
                     },
                     stringLength: {
                         min: 10,
                         max: 10,
                         message: 'The phone number must have 10 digits'
                     },
                     regexp: {
                         regexp: /^[789]\d{9}$/i,
                         message: 'Enter a valid phone number'
                     }
                 }
             },
             state: {
                 message: 'Select your State',
                 validators: {
                     notEmpty: {
                         message: 'Select your State is required and cannot be empty'
                     }
                 }
             },
           
             city: {
                 message: 'Select your City',
                 validators: {
                     notEmpty: {
                         message: 'Select your City is required and cannot be empty'
                     }
                 }
             },
             
         }
     }).on('status.field.bv', function(e, data) {
         if (data.bv.isValid()) 
         {
//             data.bv.disableSubmitButtons(false);
             $('#regsubmit').removeClass('btn-default').addClass('btn-primary');
         }
         else 
         {
//             data.bv.disableSubmitButtons(true);
         }
     });
	 
	 
	 
	 
	 
	 

	 
	 
	 
		 
	 });



