<?php session_start();?>
<link rel="stylesheet" href="/bootstrap-5.0.0/css/bootstrap.css">
<link rel="stylesheet" href="/bootstrap-5.0.0/css/bootstrap.min.css">
<script src="/bootstrap-5.0.0/js/bootstrap.js"></script>
<script src="/bootstrap-5.0.0/js/bootstrap.min.js"></script>
<link href="/progressbar/themes/blue/pace-theme-minimal.css" rel="stylesheet" />
<script src='/progressbar/pace.min.js' type='text/javascript'></script>
<?php
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','123456@Abc');
define('DB_NAME','homestead');
// $con=mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
//  // Check connection
//  if (mysqli_connect_errno())
//     echo "Failed to connect to MySQL: " . mysqli_connect_error();

$mysqli = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
// Check connection
if ($mysqli->connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli->connect_error;
  exit();
}

