$(document).ready(function(){
	
	/* START CONTACT PERSONS DETAILS */
	 
	
	 $( ".interspeed" ).change(function() {
 		   var xx=	 $("#selectedrange option:selected").text();
 	
 	 });
 	 
 	 $( "#timepicker1" ).change(function() {
 		$('#systeminfo').bootstrapValidator('revalidateField', 'starttime');
	 });
 	 
 	$( "#timepicker2" ).change(function() {
 		$('#systeminfo').bootstrapValidator('revalidateField', 'endtime');
	 });
 	
	 $('#systeminfo').bootstrapValidator({
		 feedbackIcons: {
           valid: 'glyphicon glyphicon-ok',
           invalid: 'glyphicon glyphicon-remove',
           validating: 'glyphicon glyphicon-refresh'
       },
       fields:{
     'contact_email[]': {
      		 validators: {
      			 notEmpty: 
                   {
                       message: 'The email address is empty'
                   },
                  regexp: 
                  {              	 
                  regexp: /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i,
                  message: 'The email address is not a valid'
                  }
               }
      	 },
      	 'contact_p[]': {
      		 validators: {
      			 notEmpty: 
                   {
                       message: 'The Contact Person Name is empty'
                   }
               }
      	 },
      	 
      	 totalsystems: {

               validators: {
                   notEmpty: 
                   {
                       message: 'Enter current Dedicated systems for taking test'
                   }, 
                   digits: {
                       message: 'The Dedicated systems can contain digits only'
                   },
                   between: 
                   {
                       min: 11,
                       max: 999,
                       message: 'The System Counts must be between 11 and 999'
                   }
              
               }
           },
           netspeed: {

               validators: {
                   notEmpty: 
                   {
                       message: 'Select Internet speed'
                   }
               }
           },
           starttime: {
               validators: {
                   notEmpty: 
                   {
                       message: 'select Start time'
                   },
                  min:
                  {
                  field: 'endtime',
                  message: 'End Time is lower than Start Time'
                  }
               }
           },
           endtime: {

               validators: {
                   notEmpty: 
                   {
                       message: 'select Start time'
                   },
                   max:
                  {
                  field: 'starttime',
                  message: 'End Time is lower than Start Time'
                  }
               }
           },
           'mobile_no[]': {

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
           }

       }

		 
	  }).on('status.field.bv', function(e, data) {
	         if (data.bv.isValid()) 
	         {
	             $('#regsubmit').removeClass('btn-default').addClass('btn-primary');
	             $("#contactperson").val("");
  	             var getitem=[];
  	             $(".contactpersons-block").each(function(){
  	            	 var item={};
  	            	 var getid="#"+$(this).attr("id");
  	            	 item.person=$(getid).find('[name="contact_p[]"]').val();
  	            	 item.mail=$(getid).find('[name="contact_email[]"]').val();
  	            	 item.mobile=$(getid).find('[name="mobile_no[]"]').val();
  	            	 getitem.push(item);
  	            	 console.log("The get item is--->"+JSON.stringify(getitem));
  	             });
  	             $("#contactperson").val(JSON.stringify(getitem));
	             
	         }
	         else 
	         {
	        	 
	        	 
	         }
	    });
   
    
	
	
	/*	 ------------------Bootstrap Validations-------------------

	 $('#addressform').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields:{
        	p_address_line_1: {
                message: 'The Address is not valid',
                validators: {
                    notEmpty: {
                        message: 'The Address is required and cannot be empty'
                    }
                }
            },
            p_landmark: {
            	 message: 'The Landmark is not valid',
                validators: {
                    notEmpty: 
                    {
                        message: 'The Landmark is  required and cannot be empty '
                    }
                }
            },
            p_pincode: {
           	 message: 'The Pincode is not valid',
               validators: {
                   notEmpty: 
                   {
                       message: 'The Pincode is  required and cannot be empty '
                   }
               }
           },
            state: {
                message: 'Select your State',
                validators: {
                    notEmpty: {
                        message: 'The State name is required and cannot be empty'
                    }
                }
            },
            p_city: {
                message: 'Select your City',
                validators: {
                    notEmpty: {
                        message: 'The City name is required and cannot be empty'
                    }
                }
            },
            
        }
    }).on('status.field.bv', function(e, data) {
        if (data.bv.isValid()) 
        {
//            data.bv.disableSubmitButtons(false);
            $('#addressid').removeClass('btn-default').addClass('btn-primary');
        }
        else 
        {
//            data.bv.disableSubmitButtons(true);
        }
    });
	  
	 
	 

	 
	 	 ------------------Bootstrap Validations FOR BASIC INFORMATIONS-------------------

	 	 $('.registrationform').bootstrapValidator({
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
	                   }
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
	                          message: 'The Institution name is required and cannot be empty'
	                      }
	                  }
	              },
	              city: {
	                  message: 'Select your City',
	                  validators: {
	                      notEmpty: {
	                          message: 'The Institution name is required and cannot be empty'
	                      }
	                  }
	              },
	              
	          }
	      }).on('status.field.bv', function(e, data) {
	          if (data.bv.isValid()) 
	          {
//	              data.bv.disableSubmitButtons(false);
	              $('#regsubmit').removeClass('btn-default').addClass('btn-primary');
	          }
	          else 
	          {
//	              data.bv.disableSubmitButtons(true);
	          }
	      });
	 		 ---------------END---Bootstrap Validations FOR BASIC INFORMATIONS-------------------
	 	 
	 	 */
	 	 
});