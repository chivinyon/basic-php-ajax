<?php
    if(!isset($_SESSION['is_logged']) && $_SESSION['is_logged'] != 1)
    header("location:login.php");
?> 