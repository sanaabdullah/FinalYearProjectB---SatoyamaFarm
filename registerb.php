<?php
//Connecting to sql db.
if (isset($_POST['registerb']))
   {
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "satoyama";
	//Create connection
	$conn = new mysqli($servername,$username,$password,$dbname);
	//Check connection
	if ($conn->connect_error){
		die("Connection failed ".$conn->connect_error);
	}
	//Sending form data to sql db.
	$sql = "INSERT INTO admin (username,password)
	VALUES ('$_POST[username]','$_POST[password]')";
	if ($conn->query($sql) === TRUE) {
				header("location: login.php");
			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}

			$conn->close();
}
?>