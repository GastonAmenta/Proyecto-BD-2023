<?php
require_once "../includes/config.php";

if (!$_SESSION['user']) {
    header("Location: login.php");
}




//print_r($rowTarjeta);   

$view = "loans";
require_once "../views/layout.php";