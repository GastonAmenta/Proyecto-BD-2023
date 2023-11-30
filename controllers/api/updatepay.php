<?php
require_once "../../includes/config.php";
if (!isset($_SESSION['user'])) {
    header('Location:login.php');
} else if (!isset($_GET['id'])) {
    header("Location:../home.php");
}
$sqlPays = "SELECT pagos.* 
            FROM prestamos
            LEFT JOIN pagos
            ON prestamos.prestamo_id = pagos.prestamo_id
            WHERE prestamos.usuario_id = '" . $_SESSION['user']['ID'] . "'";

$resultPays = mysqli_query($conn, $sqlPays);

if (mysqli_num_rows($resultPays) < 0) {
    header("Location: ../home.php");
} else {
    $pagoid = $_GET['id'];

    $sqlUpdate = "UPDATE pagos SET estado_pago = 'Pagado', fecha_baja = now() WHERE pago_id= $pagoid";
    $resultUpdate = mysqli_query($conn, $sqlUpdate);
    if (!$resultUpdate) {
        die("Error de consulta: " . mysqli_error($conn));
    } else {
        $userid = $_SESSION['user']['ID'];

        $sqlSelectPay = "SELECT monto FROM pagos WHERE pago_id=$pagoid";
        $resultSelectPay = mysqli_query($conn, $sqlSelectPay);
        if (!$resultSelectPay) {
            die("Error de consulta: " . mysqli_error($conn));
        }
        $rowSelectPay = mysqli_fetch_assoc($resultSelectPay);

        $monto = $rowSelectPay['monto'];

        $sqlUpdateAcc = "UPDATE caja_ahorro SET monto_disp = monto_disp- '$monto' WHERE usuarios_id='$userid'";
        $resultUpdateAcc = mysqli_query($conn, $sqlUpdateAcc);

        if (!$resultUpdateAcc) {
            die("Error de consulta: " . mysqli_error($conn));
        }

        $sqlUpdateLoan = "UPDATE prestamos SET total_pagado = total_pagado+'$monto' WHERE usuario_id='$userid'";
        $resultUpdateLoan = mysqli_query($conn, $sqlUpdateLoan);

        if (!$resultUpdateLoan) {
            die("Error de consulta: " . mysqli_error($conn));
        }
        header("Location: ../loans.php");
    }
}
