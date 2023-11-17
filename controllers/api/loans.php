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

if(isset($_POST['password']) && sha1($_POST['password']) == $_SESSION['user']['clave']){
    if(isset($_POST['loan_amount']) && $_POST['loan_amount'] >= 1000 && $_POST['loan_amount'] <= 1000000){
        if(isset($_POST['installments']) && in_array($_POST['installments'], $opciones) && isset($_POST['reason'])){
            
            $monto = $_POST['loan_amount'];
            $cuotas = $_POST['installments'];
            $p_interes = $CUOTAS[$cuotas];
            $t_intereses = ($_POST['loan_amount'] * (($CUOTAS[$cuotas])/100)) - $_POST['loan_amount'];
            $total = $_POST['loan_amount'] * (($CUOTAS[$cuotas])/100);
            $valor_cuota = $total/$cuotas;

            $resultado = array(
                'message' => 'Se a simulado correctamente',
                'data' => array(
                    'monto' => $monto,
                    'cuotas' => $cuotas,
                    'porcentaje_interes' => $p_interes,
                    'total_intereses' => $t_intereses,
                    'total' => $total,
                    'valor_cuota' => $valor_cuota
                )
            );        

            return print_r(json_encode($resultado));

        }else{
            return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'Las cuotas seleccionadas no esta dentro del rango aceptado.'. print_r(in_array($_POST['installments'], $opciones))]));
        }
    }else{
        return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'El valor del prestamo no esta dentro del rango aceptado.']));
    }
}else{
    return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'Su contraseña no coincide con la contraseña ingresada.']));    
}