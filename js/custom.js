
function user_register(){
	jQuery('.field_error').html('');
	var name=jQuery("#name").val();
	var email=jQuery("#email").val();
	var mobile=jQuery("#mobile").val();
	var password=jQuery("#password").val();
	var is_error='';
	if(name==""){
		jQuery('#name_error').html('Please enter name');
		is_error='yes';
	}if(email==""){
		jQuery('#email_error').html('Please enter email');
		is_error='yes';
	}if(mobile==""){
		jQuery('#mobile_error').html('Please enter mobile');
		is_error='yes';
	}if(password==""){
		jQuery('#password_error').html('Please enter password');
		is_error='yes';
	}
	if(is_error==''){
		jQuery.ajax({
			url:'register_submit.php',
			type:'post',
			data:'name='+name+'&email='+email+'&mobile='+mobile+'&password='+password,
			success:function(result){
				if(result=='email_present'){
					jQuery('#email_error').html('Email id already present');
				}
				if(result=='insert'){
					jQuery('.register_msg p').html('Thank you for registeration');
				}
			}	
		});
	}
	
}

function user_login() {
    jQuery('.field_error').html('');
    var email=jQuery("#login_email").val();
    var password=jQuery("#login_password").val();
    var is_error='';
    if(email=="") {
        jQuery('#login_email_error').html('please enter email');
        is_error='yes';
    }
    if(password=="") {
        jQuery('#login_password_error').html('please enter password');
        is_error='yes';
    }
    if(is_error=='') {
        jQuery.ajax({
            url:'login_submit.php',
            type:'post',
            data:'email='+email+'&password='+password,
            success:function(result) {
                if(result=='wrong') {
                    jQuery('.login_msg p').html('please enter valid login details');
                }
                if(result=='valid') {
                    window.location.href='index.php';
                }
            }
        });

    }
}
/*---------------------------------------
function register_message() {
    var name=jQuery("#name").val();
    var email=jQuery("#email").val();
    var mobile=jQuery("#mobile").val();
    var password=jQuery("#password").val();
  

    if(name=="") {
        alert('please enter name');
    }else if(email=="") {
        alert('please enter email');
    }else if(mobile=="") {
        alert('please enter mobile');
    }else if(password=="") {
        alert('please enter password');
    }else{
        jQuery.ajax({
          url:'register_message.php', 
          type:'post',
          data:'name='+name+'&email='+email+'&mobile='+mobile+'&password='+password,
          success: function(result) {
            alert(result);  
          }
        });
    }
}
--------------------------*/
