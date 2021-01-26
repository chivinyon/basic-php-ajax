<!DOCTYPE html>
<html>
<title>Forgot Password</title>
<body>
<?php include 'header.php'?>
<div class="container" style="padding-left: 15%;padding-right: 15%;"> 
    <div class="card" style="margin-top: 15%;padding: 20px;">
        <div class="card-body">
            <h2 class="card-title">Forgot Password</h2>
            <h4>Provide Email</h4>
            <form action="forgot-password.php" method="post">
                <div class="mb-12" style="margin-bottom: 10px;">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="email@gmail.com">
                </div>

                <button class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>    
</body>
</html>