<?php include('ta_header.html')?>

<link href="css/login.css" rel="stylesheet">

<div id="result"></div>

<div class="wrapper" >
    <form class="form-signin" action="" method='POST'>
      <h2 class="form-signin-heading">Faça seu login</h2>
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-user"></i></span>
        <input type="email" class="form-control" id="email" placeholder="Email Address" required="" autofocus="" />
      </div>

      <div class="input-group">
        <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-lock"></i></span>
        <input type="password" class="form-control" id="password" placeholder="Password" />
      </div>

      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Lembrar-me
      </label>

      <button class="btn btn-lg btn-primary btn-block" >Login</button>
    </form>
  </div>

<script src="js/ta_login.js"></script>

