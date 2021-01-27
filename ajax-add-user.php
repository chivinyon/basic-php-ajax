<!DOCTYPE html>
<html>
<title>List User</title>
<body>
<?php include 'header.php'?>
<?php 
    $message = '';
    //fetch user list
    $select_users = "SELECT * FROM users";
    $dataUser = $mysqli->query($select_users)->fetch_all();

    //delete user
    $id = $_GET['id'];
    $action = $_GET['action'];
    if($id>0 && $action == "del"){
        $deleteQuery = "DELETE FROM users where id = ".$id;
        $result = $mysqli->query($deleteQuery);
        if(isset($result) && $result == true)
            $message = "<div style='margin-top:10px;' class='alert alert-success' role='alert'>Delete Successful</div>";
        header('location:users.php');
    }


    //insert data
    if($_SERVER['REQUEST_METHOD'] == "POST" && trim($_POST['en_name']) && trim($_POST['kh_name'])){
        $en_name = trim($_POST['en_name']); 
        $kh_name = trim($_POST['kh_name']); 
        $email = trim($_POST['email']); 
        $password = trim($_POST['password']); 
        $create_at = date('Y-m-d H:i:s'); 

        if($en_name == "" && $kh_name == "" && $email == "" && $password == "")
            $message = "<div style='margin-top:10px;' class='alert alert-danger' role='alert'>Bad Input</div>";


        $insertQuery = "INSERT INTO users(en_name,kh_name,email,`password`,created_at) VALUES(";
        $insertQuery .="'".$en_name."',";
        $insertQuery .="'".$kh_name."',";
        $insertQuery .="'".$email."',";
        $insertQuery .="'".$password."',";
        $insertQuery .="'".$create_at."')";
        $result = $mysqli->query($insertQuery);
        if(isset($result) && $result == true){
            $message = "<div style='margin-top:10px;' class='alert alert-success' role='alert'>Insert Successful</div>";
            header('location:users.php');
        }else{
            $message = "<div style='margin-top:10px;' class='alert alert-danger' role='alert'>Insert Failed</div>";
        }
    }
?>
<div class="container" style="padding-left: 15%;padding-right: 15%;"> 
    <div class="card" style="margin-top: 15%; padding: 20px;">
        <div class="card-body">    
            <div class="card-body">
                <h2 class="card-title">Create Form</h2>
            </div>
            <form action="users.php" method="post">
                <?php echo $message;?>
                <div class="mb-12">
                    <label for="en_name" class="form-label">English Name</label>
                    <input required type="en_name" class="form-control" id="en_name" name="en_name" placeholder="English Name">
                </div>

                <div class="mb-12">
                    <label for="kh_name" class="form-label">Khmer Name</label>
                    <input required type="kh_name" class="form-control" id="kh_name" name="kh_name" placeholder="Khmer Name">
                </div>

                <div class="mb-12">
                    <label for="email" class="form-label">Email</label>
                    <input required type="email" class="form-control" id="email" name="email" placeholder="email@gmail.com">
                </div>

                <div class="mb-12">
                    <label for="password" class="form-label">Password</label>
                    <input required type="password" class="form-control" id="password" name="password" placeholder="password">
                </div>

                <button style='margin-top:10px;' class="btn btn-primary">Submit</button>
            </form>
        </div>
    <div>    
    <div class="card" style="margin-top: 15%; padding: 20px;">
        <div class="card-body">
            <h2 class="card-title">List User</h2>
        </div>
        <table>
            <thead>
                <td>No.</td>
                <td>System ID</td>
                <td>English Name</td>
                <td>Khmer Name</td>
                <td>Email</td>
                <td>Action</td>
            </thead>
            <tbody>
            <?php /*
                foreach($dataUser as $arr){
                    foreach($arr as $value) {
                        echo "$value <br>";
                    }
                }
            */?>
            <?php foreach($dataUser as $i=>$arr){ ?>
                <tr>
                    <td><?php echo ++$i; ?></td>
                    <td><?php echo $arr[0];?></td>
                    <td><?php echo $arr[1];?></td>
                    <td><?php echo $arr[2];?></td>
                    <td><?php echo $arr[3];?></td>
                    <td>
                        <a target="_blank" href="/edit-users.php?id=<?php echo $arr[0];?>" class="btn btn-warning">Edit</a>
                        <a href="/users.php?action=<?php echo "del";?>&id=<?php echo $arr[0];?>" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
</div>    
</body>
</html>
<?php include 'footer.php'?> 
<script type='text/javascript'>
$( document ).ready(function() {
    $.ajax({
        data:{},
        url: "", 
        method: "post",
        success: function(data){
            console.log( "ready!" );
        }
    });
});
</script>
