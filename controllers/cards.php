<?php
require_once "../includes/config.php";

if (!$_SESSION['user']) {
    header("Location: login.php");
}
$id = $_SESSION["user"]['ID'];
$sqlTarjeta = "SELECT * FROM caja_ahorro WHERE usuarios_id = '" . $id . "' AND fecha_baja IS NULL";
$resultTarjeta = mysqli_query($conn, $sqlTarjeta);
if(!$resultTarjeta){
    die("Error de consulta: " .mysqli_error($conn));
}
$rowTarjeta = mysqli_fetch_array($resultTarjeta, MYSQLI_ASSOC);

//print_r($rowTarjeta);   

$view = "cards";
require_once "../views/layout.php";