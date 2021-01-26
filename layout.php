<?php include 'header.php'?>
<?php
$sql = "SELECT * FROM pages";
$data = $mysqli->query($sql)->fetch_all();
// $insert = "	INSERT INTO `homestead`.`affiliates` (
//     `brand`,
//     `location_id`,
//     `content`,
//     `created_at`,
//     `created_by`,
//     `affective_start`,
//     `affective_end`,
//     `updated_at`,
//     `updated_by` 
// )
// VALUES
//     (
//         'OPPO',
//         1,
//         'Testing',
//         '2021-01-26 09:07:36',
//         NULL,
//         '2021-01-26 09:07:39',
//         '2021-01-26 09:07:44',
//         '2021-01-26 09:07:47',
//     NULL 
//     )";
// $result = $mysqli->query($insert);

// $call = "CALL GetAffiliates()";
// $result = $mysqli->query($call)->fetch_all();
// echo "<pre>";
//     print_r($result);
// echo "</pre>";
?>
<div class="container" style="padding-left: 15%;padding-right: 15%;"> 
    <div class="card" style="margin-top: 15%; padding: 20px;">
    </div>
</div>   
<?php include 'footer.php'?>
