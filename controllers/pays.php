<?php
require_once "../includes/config.php";

if (!$_SESSION['user']) {
    header("Location: login.php");
}

$sqlPays = "SELECT pagos.* 
            FROM prestamos
            LEFT JOIN pagos
            ON prestamos.prestamo_id = pagos.prestamo_id
            WHERE prestamos.usuario_id = '" . $_SESSION['user']['ID'] . "' AND pagos.fecha_baja IS  NULL";

$resultPays = mysqli_query($conn, $sqlPays);

if (mysqli_num_rows($resultPays) < 1) {
    header("Location: home.php");
}

$rowPays = mysqli_fetch_all($resultPays, MYSQLI_ASSOC);

$view = "pays";
require_once "../views/layout.php";
