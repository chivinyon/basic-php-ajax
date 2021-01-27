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
    
    $data = array();
    $id = $_POST['id'];
    if($id>0){
        $deleteQuery = "DELETE FROM users where id = ".$id;
        $result = $mysqli->query($deleteQuery);
        if(isset($result) && $result == true)
            $message = "<div style='margin-top:10px;' class='alert alert-success' role='alert'>Delete Successful</div>";
            
        $data['status'] = 1;
        $data['message'] = $message;
        echo json_encode($data);
        exit();
    }
?>
