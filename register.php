<?php 
include ('registerb.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Welcome to Satoyama Farm</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Register With Us!</div>
      <div class="card-body">
        <form action="" method="POST">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">Username</label>
                <input class="form-control" id="exampleInputName" name="username" type="text" aria-describedby="nameHelp" placeholder="Enter your name" required>
              </div>
			  </div>
			</div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
				  
                <label for="exampleInputPassword1">Password</label>
                <input class="form-control" id="exampleInputPassword1" name="password" type="password" placeholder="Enter your password" required>
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">Confirm Password</label>
                <input class="form-control" id="exampleConfirmPassword" name="password2" type="password" placeholder="Re-enter your password" required>
              </div>
            </div>
          </div>
          <button class="btn btn-primary btn-block" name="registerb" type="submit" value="registerb" >Register</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="login.php">Back to Login Screen</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>


<



