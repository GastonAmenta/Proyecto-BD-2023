<?php
require_once "../includes/config.php";


if (!$_SESSION['user']) {
    header("Location: login.php");
}

//chequeo pagos
$sqlCheck = "SELECT * 
            FROM prestamos
            LEFT JOIN pagos
            ON prestamos.prestamo_id = pagos.prestamo_id
            WHERE prestamos.usuario_id = '" . $_SESSION['user']['ID'] . "' AND pagos.fecha_baja IS NULL";

$resultCheck = mysqli_query($conn, $sqlCheck);

if (mysqli_num_rows($resultCheck) > 0) {
    header("Location: pays.php");
}
$view = "loans";
require_once "../views/layout.php";
