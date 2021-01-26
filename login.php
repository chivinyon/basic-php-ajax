<!DOCTYPE html>
<html>
<title>Login</title>
<body>
<?php include 'header.php'?>
<?php
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $email = trim($_POST['email']);
        $password = trim($_POST['password']);
        $selectUser = "SELECT * FROM users where email ='".$email."' AND `password` = '".$password."'";
        $result = $mysqli->query($selectUser)->fetch_row();
        if(isset($result)){
            $_SESSION['is_logged'] = 1;
            header("location:users.php");
            $message = "<div style='margin-top:10px;' class='alert alert-success' role='alert'>Login Successful</div>";
        }else{
            $message = "<div style='margin-top:10px;' class='alert alert-danger' role='alert'>User Not Found</div>";
        }
    }
?>
<div class="container" style="padding-left: 15%;padding-right: 15%;"> 
    <div class="card" style="margin-top: 15%; padding: 20px;">
        <div class="card-body">
            <h2 class="card-title">Login Form</h2>
            <h4>Provide Credentials</h4>
            <form action="login.php" method="post">
                <div class="mb-12">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="email@gmail.com">
                </div>

                <div class="mb-12">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="password">
                </div>

                <div class="control-form" style="margin-bottom: 10px;">
                    <input type="checkbox" name="remember"> Remember!
                </div>
                <button class="btn btn-primary">Submit</button>
                <a href="forgot-password.php" class="btn btn-warning">Forgot Password</a><br>
                <?php echo $message;?>
            </form>
        </div>
    </div>
</div>
</body>
</html>