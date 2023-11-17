<?php
require_once "../includes/config.php";

if (!$_SESSION['user']) {
    header("Location: login.php");
}

$view = "loans";
require_once "../views/layout.php";