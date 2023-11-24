<?php
require_once "../../includes/config.php";
$opciones = [3, 6, 12, 18, 24];

if (!isset($_SESSION['user'])) {
    header("Location: login.php");
}

$CUOTAS = [
    3 => 53.67,
    6 => 107.33,
    12 => 161,
    18 => 322,
    24 => 429.33
];

$password = $_POST['password'];
$monto = $_POST['loan_amount'];
$cuotas = $_POST['installments'];

if (isset($password) && sha1($password) == $_SESSION['user']['clave']) {
    if (isset($monto) && $monto >= 1000 && $monto <= 1000000) {
        if (isset($cuotas) && in_array($cuotas, $opciones) && isset($_POST['reason'])) {
            if (!isset($_POST['flag']) || !($_POST['flag'])) {

                $p_interes = $CUOTAS[$cuotas];
                $t_intereses = $monto * ($p_interes / 100);
                $total = $monto + $t_intereses;
                $valor_cuota = $total / $cuotas;

                $resultado = array(
                    'message' => 'Se a simulado correctamente',
                    'data' => array(
                        'monto' => bcdiv($monto, '1', 2),
                        'cuotas' => $cuotas,
                        'porcentaje_interes' => $p_interes,
                        'total_intereses' => bcdiv($t_intereses, '1', 2),
                        'total' => bcdiv($total, '1', 2),
                        'valor_cuota' => bcdiv($valor_cuota, '1', 2)
                    )
                );

                return print_r(json_encode($resultado));
            } else {
                $nro_prestamo = rand(10000, 9999999);
                $usuario_id = $_SESSION["user"]['ID'];

                $p_interes = $CUOTAS[$cuotas];
                $t_intereses = $monto * ($p_interes / 100);
                $total = $monto + $t_intereses;
                $valor_cuota = $total / $cuotas;
                $i = 1;

                try {
                    $insert_prestamos_query = "INSERT INTO prestamos (nro_prestamo, usuario_id, monto, cuotas, tasa_interes, valor_intereses, total_pagar, total_pagado, descripcion_prestamo, fecha_alta) VALUES ('$nro_prestamo', '$usuario_id', '$monto', '$cuotas', '$p_interes', '$t_intereses', '$total' , 0 , '" . $_POST['reason'] . " ', now())";
                    mysqli_query($conn, $insert_prestamos_query);
                    $prestamo_id = mysqli_insert_id($conn);
                    $insert_payments_query = "";

                    while ($i <= $cuotas) {
                        // FECHA ACTUAL
                        $fechaActual = date('Y-m-d');
                        // MISMA FECHA DENTRO DEL MES SIGUIENTE
                        $fechaMensual = date('Y-m-d', strtotime('+'.$i.' month', strtotime($fechaActual)));

                        $insert_payments_query .= "INSERT INTO pagos(prestamo_id, monto, nro_cuota, fecha_pago, fecha_alta) VALUES('" . $prestamo_id . "', '" . $monto . "', '" . $i . "', '". $fechaMensual ."' , now());";
                        $i++;                                                
                    }                    
                    //LIMPIO DESPUES DE QUERY
                    while (mysqli_next_result($conn)) {
                        if (!mysqli_more_results($conn)) {
                            break;
                        }
                    }

                    mysqli_multi_query($conn, $insert_payments_query);
                    
                    //LIMPIO DESPUES DE MULTY QUERY
                    while (mysqli_next_result($conn)) {
                        if (!mysqli_more_results($conn)) {
                            break;
                        }
                    }

                    $update_query = "UPDATE caja_ahorro SET monto_disp = monto_disp + '$monto'";
                    mysqli_query($conn, $update_query);
                    
                    mysqli_commit($conn);

                    return print_r(json_encode(['message' => 'Exito al pedir prestamo']));

                } catch (mysqli_sql_exception $e) {
                    mysqli_rollback($conn);
                    echo "Error en la transacción: " . $e->getMessage();
                }
            }
        } else {
            return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'Las cuotas seleccionadas no esta dentro del rango aceptado.' . print_r(in_array($cuotas, $opciones))]));
        }
    } else {
        return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'El valor del prestamo no esta dentro del rango aceptado.']));
    }
} else {
    return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'Su contraseña no coincide con la contraseña ingresada.']));
}
