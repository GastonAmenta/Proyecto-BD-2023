<?php
require_once "../includes/config.php";
if (!$_SESSION['user']) {
    header("Location: login.php");
}

$id = $_SESSION["user"]['ID'];
if (!empty($_POST)) {
    $alias = $_POST['alias'];
    $monto = $_POST['monto'];
    $descripcion = $_POST['descripcion'];
    $clave = $_POST['clave'];

    //checks
    $sqlCheckMount = "SELECT monto_disp FROM caja_ahorro WHERE usuarios_id ='" . $id . "'";
    $resultCheckMount = mysqli_query($conn, $sqlCheckMount);
    if (!$resultCheckMount) {
        die("Error de consulta: " . mysqli_error($conn));
    }
    $rowMonto = mysqli_fetch_assoc($resultCheckMount);

    $sqlUserTransfer = "SELECT usuarios_id FROM caja_ahorro WHERE alias = '" . $alias . "'";
    $resultUserTransfer = mysqli_query($conn, $sqlUserTransfer);
    if (!$resultUserTransfer) {
        die("Error de consulta: " . mysqli_error($conn));
    }
    $transferId = mysqli_fetch_assoc($resultUserTransfer);
    //print_r($transferId['usuarios_id']);

    if (($rowMonto >= $monto) && ($_SESSION['user']['clave'] === sha1($clave)) ) {

        $sqlTransferir1 = "UPDATE caja_ahorro SET monto_disp = monto_disp -'" . $monto . "' WHERE usuarios_id ='" . $id . "'";
        $resultTransferir1 = mysqli_query($conn, $sqlTransferir1);
        if (!$resultTransferir1) {
            die("Error de consulta: " . mysqli_error($conn));
        }

        $sqlTransferir2 = "UPDATE caja_ahorro SET monto_disp = monto_disp +'" . $monto . "' WHERE alias ='" . $alias . "'";
        $resultTransferir2 = mysqli_query($conn, $sqlTransferir2);
        if (!$resultTransferir2) {
            die("Error de consulta: " . mysqli_error($conn));
        }

        if ($resultTransferir1 && $resultTransferir2) {
            $sqlTransferir3 = "INSERT INTO transacciones (fecha_hora, cuenta_origen, cuenta_destino, tipo_transaccion, monto, descripcion, estado) VALUES (now(), '" . $id . "' , '" . $transferId['usuarios_id'] . "', 'transferencia' , '" . $monto . "', '" . $descripcion . "' , 'exitosa')";
            $resultTransferir3 = mysqli_query($conn, $sqlTransferir3);

            if (!$resultTransferir3) {
                die("Error de consulta: " . mysqli_error($conn));
            }

        }
    }else{
        if (mysqli_num_rows($resultUserTransfer) < 1) $message['alias'] =  "El alias ingresado es incorrecto";
        // Ya existe una cuenta con ese nombre de usuario 
        if ($rowMonto['monto_disp'] < $monto) $message['monto'] = "El dinero que tienes no es suficiente";

        // Contraseña con menos de 8 caracteres
        if ($_SESSION['user']['clave'] != $clave) $message['clave'] = "La clave ingresada es incorrecta";

        // Maximo de caracteres
        
        if (strlen($descripcion) > 50) $message['descripcion'] = "La descripcion es demasiado larga";

        // Campos vacios
        if (!$alias) $message['alias'] = "Ingrese un alias destino";
        if (!$monto) $message['monto'] = "Ingrese el monto";
        if (!$clave) $message['clave'] = "Ingrese su clave";
    }
}
$view = "transfer";
require_once "../views/layout.php";
