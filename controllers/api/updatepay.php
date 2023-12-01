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
    //Si esta realizando un pago atrasado

    $userid = $_SESSION['user']['ID'];
    $pagoid = $_GET['id'];
    $sqlPays = "SELECT pagos.* 
            FROM prestamos
            LEFT JOIN pagos
            ON prestamos.prestamo_id = pagos.prestamo_id
            WHERE prestamos.usuario_id = '" . $_SESSION['user']['ID'] . "' AND pagos.pago_id = '" . $pagoid . "' ";

    $resultPays = mysqli_query($conn, $sqlPays);

    $rowPays = mysqli_fetch_array($resultPays);

    $fechaVencimiento = $rowPays['fecha_pago']; // Formato YYYY-MM-DD

    // Fecha actual
    $fechaActual = date("Y-m-d");

    // Diferencia de días entre la fecha de vencimiento y la fecha actual
    $diferenciaDias = strtotime($fechaActual) - strtotime($fechaVencimiento);
    $diasAtraso = floor($diferenciaDias / (60 * 60 * 24));

    // Porcentaje adicional por pago atrasado
    $porcentajeAdicional = 13;


    // Verificar si el pago está atrasado
    if ($diasAtraso > 2) {
        // Calcular el monto adicional a cobrar
        $montoOriginal = $rowPays['monto']; // Reemplaza esto con el monto original del préstamo
        $montoAdicional = $montoOriginal * ($porcentajeAdicional / 100);

        $sqlUpdate = "UPDATE pagos SET estado_pago = 'Pago atrasado', fecha_baja = now(), monto = monto + '$montoAdicional' WHERE pago_id= $pagoid";

        $resultUpdate = mysqli_query($conn, $sqlUpdate);

        if (!$resultUpdate) {
            die("Error de consulta: " . mysqli_error($conn));
        }

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

        $sqlUpdateLoan = "UPDATE prestamos SET total_pagado = total_pagado+'$monto', total_pagar = total_pagar + '$montoAdicional' WHERE usuario_id='$userid'";
        $resultUpdateLoan = mysqli_query($conn, $sqlUpdateLoan);

        if (!$resultUpdateLoan) {
            die("Error de consulta: " . mysqli_error($conn));
        }
        $sqlInsertTransact = "INSERT INTO transacciones(fecha_hora, cuenta_origen, tipo_transaccion, monto, descripcion, estado) VALUES(now(), '" . $userid . "', 'transferencia', '" . $monto . "', 'Pago atrasado de prestamo', 'exitosa')";
        $resultInsertTransact = mysqli_query($conn, $sqlInsertTransact);
        if (!$resultInsertTransact) {
            die("Error de consulta: " . mysqli_error($conn));
        }

        header("Location: ../loans.php");
    } else {
        // Si esta realizando un pago en tiempo
        $sqlUpdate = "UPDATE pagos SET estado_pago = 'Pagado', fecha_baja = now() WHERE pago_id= $pagoid";
        $resultUpdate = mysqli_query($conn, $sqlUpdate);
        if (!$resultUpdate) {
            die("Error de consulta: " . mysqli_error($conn));
        } else {


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
            $sqlInsertTransact = "INSERT INTO transacciones(fecha_hora, cuenta_origen, tipo_transaccion, monto, descripcion, estado) VALUES(now(), '" . $userid . "', 'transferencia', '" . $monto . "', 'Pago de prestamo', 'exitosa')";
            $resultInsertTransact = mysqli_query($conn, $sqlInsertTransact);
            if (!$resultInsertTransact) {
                die("Error de consulta: " . mysqli_error($conn));
            }

            header("Location: ../loans.php");
        }
    }
}