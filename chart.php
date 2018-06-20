<!DOCTYPE html>
<html ng-app="AngularChartExample">

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
    
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular.js"></script>
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
   <script src="http://code.highcharts.com/highcharts.js"></script>
   <script src="vendor/chart.js/Chart.js"></script>
   <script src="vendor/chart.js/angular-chart.min.js"></script>
   <script src="vendor/chart.js/tc-angular-chartjs.js"></script>
   <script src="chart.js"></script>
    
</head>

<body>
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
        <li class="breadcrumb-item active">Charts</li>
      </ol>
     <div ng-view></div>
    
    <hr>
    <a href="chart1.php" button type="button" class="btn btn-primary btn-md"> Light </a>
    <a href="chart2.php" button type="button" class="btn btn-primary btn-md"> Moisture </a>
    <a href="chart3.php" button type="button" class="btn btn-primary btn-md"> Temperature </a>

    </div>
    </div>
      
    <script>
        function MainCtrl($scope, $http){
            var data = {"xData": ["14:51:55", "14:54:48", "14:55:08", "14:55:12", "14:55:22", "14:58:35","14:58:45", "14:58:55", "15:02:08", "15:02:18", "15:02:28", "15:06"],"yData":[{
                "name": "Humidity",
                "data": [76, 80, 82, 82, 82, 84, 84, 84, 82, 82, 82]
            }, 
      ]}
            
            $scope.lineChartYData=data.yData
            $scope.lineChartXData=data.xData
        }
    </script>
    
    <script>
    angular.module('AngularChartExample',['AngularChart'], function( $routeProvider, $locationProvider ){
        $routeProvider.when('/',{
            template: '<chart title="Satoyama Humidity Sensor" xData="lineChartXData" xname="Time Interval" yData="lineChartYData" yName="Percentage (%)" subtitle="[5th May, 2018]"></chart>',
            controller: MainCtrl
            })
    })
    </script>

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
