<?php 

$conn=mysqli_connect("localhost","root","", "satoyama");
$sensor = $_POST['Export'];

if(isset($_POST["Export"]))
{
	header('Content-Type: text/csv; charset=utf-8');  
	header('Content-Disposition: attachment; filename='.$sensor.'_data.csv');
	
	$sensor = strtolower($sensor);
	$output = fopen("php://output", "w");  
	fputcsv($output, array('No.', 'Node', 'Readings', 'Timestamp', 'Remarks'));  
	$query = "SELECT * from $sensor";  
	$result = mysqli_query($conn, $query);  
	// echo "sensor data is ". $sensor[$i]; 
	while($row = mysqli_fetch_assoc($result))  
	{  
	   fputcsv($output, $row);  
	}  
	fclose($output);  
 } 

?>