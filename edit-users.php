<!DOCTYPE html>
<html>
<title>List User</title>
<body>
<?php include 'header.php'?>
<?php 
    $id = $_GET['id']??$_POST['id'];
    if($id > 0){
        $dataUser = array();
        $message = '';
        //fetch user info
        $select_users = "SELECT * FROM users where id = ".$id;
        $dataUser = $mysqli->query($select_users)->fetch_row();
        
        //update data
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $en_name = $_POST['en_name']; 
            $kh_name = $_POST['kh_name']; 
            $email = $_POST['email']; 
            $password = $_POST['password']; 
            $updated_at = date('Y-m-d H:i:s'); 
    
            $updateQuery = "UPDATE users SET ";
            $updateQuery .="en_name = '".$en_name."',";
            $updateQuery .="kh_name = '".$kh_name."',";
            $updateQuery .="email = '".$email."',";
            $updateQuery .="`password` = '".$password."',";
            $updateQuery .="updated_at = '".$updated_at."'";
            $updateQuery .="WHERE id = ".$id;
            $result = $mysqli->query($updateQuery);
            if(isset($result) && $result == true){
                $message = "<div style='margin-top:10px;' class='alert alert-success' role='alert'>Update Successful</div>";
                header('location:users.php');
            }else{
                $message = "<div style='margin-top:10px;' class='alert alert-danger' role='alert'>Update Failed</div>";
            }
        }
    }
?>
<div class="container" style="padding-left: 15%;padding-right: 15%;"> 
    <div class="card" style="margin-top: 15%; padding: 20px;">
        <div class="card-body">    
            <div class="card-body">
                <h2 class="card-title">Edit Form</h2>
            </div>
            <form action="edit-users.php" method="post">
                <?php echo $message;?>
                <div class="mb-12">
                    <label for="en_name" class="form-label">English Name</label>
                    <input required type="en_name" class="form-control" id="en_name" name="en_name" placeholder="English Name" value="<?php echo $dataUser['1'];?>">
                </div>

                <div class="mb-12">
                    <label for="kh_name" class="form-label">Khmer Name</label>
                    <input required type="kh_name" class="form-control" id="kh_name" name="kh_name" placeholder="Khmer Name" value="<?php echo $dataUser['2'];?>">
                </div>

                <div class="mb-12">
                    <label for="email" class="form-label">Email</label>
                    <input required type="email" class="form-control" id="email" name="email" placeholder="email@gmail.com" value="<?php echo $dataUser['3'];?>">
                </div>

                <div class="mb-12">
                    <label for="password" class="form-label">Password</label>
                    <input required type="password" class="form-control" id="password" name="password" placeholder="password" value="<?php echo $dataUser['4'];?>">
                </div>
                <input type="hidden" name="id" value="<?php echo $id;?>">
                <button style='margin-top:10px;' class="btn btn-primary">Submit</button>
            </form>
        </div>  
    </div>
</div>    
</body>
</html>
<?php include 'footer.php'?> 
