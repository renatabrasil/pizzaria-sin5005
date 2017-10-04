$("button").on("click", function(e){
  e.preventDefault();
  if( $("#rememberMe").is(":checked") ){
    SendRemember($("#email").val());
  }else{
    if( $("#password").val().length == 0 ){
      alert('I think you forgot your password.');
    }else{
      AuthenticationUser($("#email").val(), $("#password").val());
    }
  }
});

function AuthenticationUser(email, pass){
  $.ajax({
    url : "ta_ajax_authentication.php",
    type : 'post',
    data : {
      emails : email,
      passw : pass
    }
  })

  .done(function(msg){
    var res = $.parseJSON(msg);
    if( res[0] == 0  ){
      $(location).attr('href','system.php')
    }else if ( res[0] == 1 ) {
      $("#result").html(res[1]);
    }
  })

  .fail(function(jqXHR, textStatus, msg){
    alert("falhou");
    //$("#result").html(msg);
  });
}

function SendRemember( email ){
  $.ajax({
    url : "ta_ajax_remember.php",
    type : 'post',
    data : {
      emails : email,
      action :'Password Remember'
    }
  })

  .done(function(msg){
    $("#result").html(msg);
  })

  .fail(function(jqXHR, textStatus, msg){
    $("#result").html(msg);
  });
}
