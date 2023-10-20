<?php
require_once "../../includes/config.php";
$opciones = array(3, 6, 12, 18, 24);

if (!isset($_SESSION['user'])) {
    header("Location: login.php");
}

if(isset($_POST['password']) && sha1($_POST['password']) == $_SESSION['user']['clave']){
    if(isset($_POST['loan_amount']) && $_POST['loan_amount'] >= 1000 && $_POST['loan_amount'] <= 1000000){
        if(isset($_POST['installments']) && in_array($_POST['installments'], $opciones) && isset($_POST['reason'])){
            //return print_r(json_encode(['message' => 'Se ha escogido una opcion.']));

        }else{
            return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'Las cuotas seleccionadas no esta dentro del rango aceptado.']));
        }
    }else{
        return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'El valor del prestamo no esta dentro del rango aceptado.']));
    }
}else{
    return print_r(json_encode(['message' => 'Error al intentar simular.', 'message_err' => 'Su contraseña no coincide con la contraseña ingresada.']));    
}

$view = "loans";
require_once "../views/layout.php";