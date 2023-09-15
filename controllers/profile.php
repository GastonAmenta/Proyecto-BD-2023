<?php
require_once "../includes/config.php";

$sqltrans = " SELECT transacciones.*, usuarios.*, caja_ahorro.alias FROM `transacciones` INNER JOIN `usuarios` ON transacciones.cuenta_origen = usuarios.ID INNER JOIN `caja_ahorro` ON caja_ahorro.usuarios_id = usuarios.ID WHERE usuarios.ID = " . $_SESSION['user']['ID'] ;
$users = "SELECT * FROM `usuarios`";
$res = mysqli_query($conn, $sqltrans);
$resUsers = mysqli_query($conn, $users);
if(!$res)
{
    die("error de consulta : ". mysqli_error($conn));
}
$sqlAlias = "SELECT alias FROM caja_ahorro WHERE usuarios_id ='".$_SESSION['user']['ID']."'";
$resultAlias = mysqli_query($conn, $sqlAlias);
$rowAlias = mysqli_fetch_assoc($resultAlias);

//$transType = array();

if($res && $resUsers){
    $rowecard = mysqli_fetch_all($res, MYSQLI_ASSOC);
    $rowusers = mysqli_fetch_all($resUsers, MYSQLI_ASSOC);
}
$view = "profile";
require_once "../views/layout.php";
require_once "../includes/config.php";
