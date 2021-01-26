<!DOCTYPE html>
<html>
<title>List User</title>
<body>
<?php include 'header.php'?>
<?php 
$select_users = "SELECT * FROM users";
$dataUser = $mysqli->query($select_users)->fetch_all();
?>
<div class="container" style="padding-left: 15%;padding-right: 15%;"> 
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
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
</div>    
</body>
</html>
<?php include 'footer.php'?> 
