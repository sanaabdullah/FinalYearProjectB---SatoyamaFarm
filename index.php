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
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
    
    <?php
    
        $url = "http://45.76.50.6:8080/api/v1/data";
      
        $cnn = array (
            'http'=>array(
            'method'=>"GET",
            'header'=>"Gateway-API-Key: eXck3cwEi98NalDC55jgjNDL5a1m2h9S"
        )
      );
      
        $context = stream_context_create($cnn);

        $output = file_get_contents($url, true, $context);
        // $output = 'datas = '. $output ;
        // echo $output;

        $package = json_decode($output);
      //var_dump($package);
        $package = json_decode($output,true);
      // var_dump($package);
        $package = $package['data'];

      $conn=mysqli_connect("localhost","root","", "satoyama");
      mysqli_query($conn, "TRUNCATE TABLE humidity" );
      mysqli_query($conn, "TRUNCATE TABLE error_readings" );
      mysqli_query($conn, "TRUNCATE TABLE light" );
      mysqli_query($conn, "TRUNCATE TABLE moisture" );
      mysqli_query($conn, "TRUNCATE TABLE temperature" );
    
    $initData = "data=[";
    ?>
	<?php 
      
      foreach ($package as $item)
      {
            $data = $item['data'];
            // echo "<br/>------- Data: ".$data; // Output: N06C00073
            $remarks = "";

            // Splitting $data Follow the pattern
            $chars = preg_split('//', $data, -1, PREG_SPLIT_NO_EMPTY);
            $initial = $chars[0];
            $node = $chars[1].$chars[2];
            $sensor = $chars[3]; // Sensor Code ++++ A:Temperature || C: Humidity || E: Moisture || I: Light Intensity
		    $readings = $chars[4].$chars[5].$chars[6].$chars[7].$chars[8];
		    $readings = intval($readings);
		  
		    switch ($sensor) {
				case 'A':
		  			$sensor = "temperature";
					//$readings .= " C";
		  			break;
		        case 'C':
		  			$sensor = "humidity";
					//$readings .= "%";
		  			break;
		        case 'E':
		  			$sensor = "moisture";
					//$readings .= "%"; 
		  			break;
		        case 'I':
		  			$sensor = "light";
					//$readings .= " lx";
		  			break;
			}
            
            //echo "-------  Initials: ".$initial;
            //echo "-------  Node: ".$node;
            //echo "-------  Sensor: ".$sensor;
            //echo "-------  Readings: " . (int)$readings;
          
            date_default_timezone_set('Asia/Kuching');
            $timestamp = $item['timestamp'];
            // singlebyte strings
            $timestamp = substr($timestamp, 0, 10);
            $timestamp = (int)$timestamp + 28800;
            $timestamp = new DateTime("@$timestamp");  // convert UNIX timestamp to PHP DateTime
            $timestamp = $timestamp->format('Y-m-d H:i:s'); // output = 2017-01-01 00:00:00
            //echo "-------  Timestamp: ".$timestamp; // Output: 1525398781546
            // echo date_default_timezone_get();
          
            if(($sensor == 'temperature' || $sensor == 'humidity' || $sensor == 'moisture' ) && $readings < 100 && is_numeric($readings))
            {
				switch ($sensor) {
				case 'temperature':
					$readings .= " C";
		  			break;
		        case 'humidity':
					$readings .= "%";
		  			break;
		        case 'moisture':
					$readings .= "%"; 
		  			break;
				}
				
                $query=mysqli_query($conn, "INSERT INTO $sensor (Node,Readings,Timestamp,Remarks)
                VALUES ('$node','$readings','$timestamp','$remarks')");
                
                $initData .= "
                {
                    'node':'".$node."',
                    'sensor':'".$sensor."',
                    'readings':'".$readings."',
                    'timestamp':'".$timestamp."',
                    'remarks':'".$remarks."'
                },";
            }
            else if ($sensor == 'light' && $readings < 100000 && is_numeric($readings))
            {
				$readings .= " lx"; 
				
                $query=mysqli_query($conn, "INSERT INTO $sensor (Node,Readings,Timestamp,Remarks)
                VALUES ('$node','$readings','$timestamp','$remarks')");
                
                $initData .= "
                {
                    'node':'".$node."',
                    'sensor':'".$sensor."',
                    'readings':'".$readings."',
                    'timestamp':'".$timestamp."',
                    'remarks':'".$remarks."'
                },";
            }
            else 
            {
                if($node == 6)
                {
                    if($sensor == 'light' && $readings > 100000)
                    {
                        $remarks = "Light Intensity Readings has over 100,000 or less than 0 (Valid Range : 0 - 100,000)";
                    }
                    else if (($sensor == 'temperature' || $sensor == 'humidity' || $sensor == 'moisture') && $readings > 100)
                    {
                            $remarks = "Sensor ".$sensor." readings has over 100 or less than 0 (Valid Range : 0 - 100)";
                    }
                    else if ($sensor != 'temperature' || $sensor != 'humidity' || $sensor != 'moisture' || $sensor != 'light')
                        $remarks = "Sensor ".$sensor." is Invalid ... Additional sensor please contact with developer.";
                    else if (is_numeric($readings) == false)
                            $remarks = "Sensor ".$sensor." readings is not fulfill pattern of Readings (Valid : Numeric Only)";
                }
                else $remarks = "Node is INCORRECT (Valid Value = 06)";
				
            
                
                $query=mysqli_query($conn, "INSERT INTO error_readings (Node,Sensor,Readings,Timestamp,Remarks)
                VALUES ('$node','$sensor','$readings','$timestamp','$remarks')");
            }
		  
		   
          
            if (!$query) 
            {
                die("Error ".mysqli_error($conn));
            }
      
      }
            // to remove the last , character
            $initData = rtrim($initData,',');
            $initData .= "]";
            $initData = str_replace("'", '"', $initData);
            // echo "The init data is " . $initData;

      ?>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top" data-ng-app="myApp" data-ng-controller="myController">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="">Satoyama Farm</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="index.php">
            <i class="fa fa-fw fa-cubes"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="chart.php">
            <i class="fa fa-fw fa-bar-chart"></i>
            <span class="nav-link-text">Charts</span>
          </a>
        </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="table1.php">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Daily/Monthly Summary</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" data-toggle="" data-target="" href="login.php">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
            
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">System Overview</li>
      </ol>
     <!-- Example DataTables Card-->
		<?php
		echo "
		   <div class='card mb-3' data-ng-init='".$initData."'>
		";
		  ?>
        <div class="card-header">
          <i class="fa fa-table"></i> Testing Data </div>
        <div class="card-body">
          <div class="table-responsive">
			  <p class="radio-inline" style="text-align: center; font-weight: 900; margin-top: 50px; margin-bottom: 50px;">
				  Filter Data:&nbsp;
			  	<input type="radio" name="sensor" data-ng-model="search.sensor" value=""/>&nbsp;All &nbsp;&nbsp;
				<input type="radio" name="sensor" data-ng-model="search.sensor" value="temperature"/>&nbsp;Temperature &nbsp;&nbsp;
				<input type="radio" name="sensor" data-ng-model="search.sensor" value="humidity"/>&nbsp;Humidity &nbsp;&nbsp;
				<input type="radio" name="sensor" data-ng-model="search.sensor" value="moisture"/>&nbsp;Moisture &nbsp;&nbsp;
				<input type="radio" name="sensor" data-ng-model="search.sensor" value="light"/>&nbsp;Light 
				
			  </p>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead  style="text-align:center;">
                <tr>
                  <th>Timestamp</th>
                  <th>Sensor</th>
                  <th>Readings</th>
                  <th>Remarks</th>
                </tr>
              </thead>
              <tbody>
                <tr data-ng-repeat="x in data | filter: search | orderBy: '-timestamps'"  style="text-align:center;">
                            <td headers="core">{{x.timestamp}}</td>
                            <td headers="desc">{{x.sensor}}</td>
                            <td headers="crpt">{{x.readings}}</td>
                            <td headers="type">{{x.remarks}}</td>
                        </tr>
              </tbody>
				<tfoot>
					<tr>
						<td colspan="4">
							<h2>Export Sensors Data:</h2>
							<form class="form-horizontal" action="functions.php" method="post" name="upload_excel" enctype="multipart/form-data">
							    <div class="form-group">
									<div class="col-md-12" style="margin: 20px 50px 20px 50px;">
										<input type="submit" style="margin-left:20px;" name="Export" class="btn btn-success" value="Temperature"/>
										<input type="submit" style="margin-left:20px;" name="Export" class="btn btn-success" value="Humidity"/>
										<input type="submit" style="margin-left:20px;" name="Export" class="btn btn-success" value="Moisture"/>
										<input type="submit" style="margin-left:20px;" name="Export" class="btn btn-success" value="Light"/>
									</div>
							    </div>                    
							</form>         
						</td>
					</tr>
                 </tfoot>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
 
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Satoyama Farm 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
  
<?php // echo $initData; ?>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
      
      <!-- jQuery – required for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- All Bootstrap plug-ins file -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Basic AngularJS -->
        <script src="js/angular.min.js"></script>
      
      <script src="js/sb-admin-charts.min.js"></script>
      <script src="https://d3js.org/d3.v4.min.js"></script>
      <script src="js/data.js"></script>    
      <script src="js/script.js"></script> 
</body>

</html>
