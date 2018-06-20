<?php
   session_start();
   $error=''; //vaiable to store error
   if (isset($_POST['submited']))
   {
      if (empty($_POST['username']) || empty($_POST['password']))
      {
         $error="Please enter username and password";
      }
      else
      {
          $username=$_POST['username'];
          $password=$_POST['password'];
		  
		  $connection = mysqli_connect("localhost", "root", "", "satoyama");
          $username=stripslashes($username);
          $password=stripcslashes($password);
          $username=mysqli_real_escape_string($connection, $username);
          $password=mysqli_real_escape_string($connection, $password);
          $query=mysqli_query($connection, "select * from admin where password='$password' AND username='$username'");
		  
		  $rows=mysqli_num_rows($query);
          if($rows==1)
          {
			 echo "sssss";
             header("location: index.php");
          } else {
             $error="Username or password is invalid";
          }
          mysqli_close($connection);
		  
	  }
   }

?>