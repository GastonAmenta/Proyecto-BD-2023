<?php

require_once "../includes/config.php";

if (empty($_POST)){
    
    if($_POST['password'] == $_POST['conf_password']){

        $query_verify_dni = "SELECT COUNT(dni) FROM usuarios WHERE dni = " . $_POST['dni'];
        $rusult_verify_dni = mysqli_query($conn, $query_verify_dni);

        if(!$rusult_verify_dni){
            die('Error de Consulta ' . mysqli_error($conn));
        }        

        if(mysqli_num_rows ( $rusult_verify_dni) > 0){
            $messege = "Ya hay un usuario";            
        
        }else{
            $query_user = "INSERT INTO usuarios(DNI, nombre, apellido, email, fecha_nacimiento, clave, telefono, direccion, nro_seguro_social, preguntas_seguridad, respuestas, fecha_alta) 
            VALUES(". $_POST['dni']." , '". $_POST['name']."' , '". $_POST['surname']."' , '". $_POST['email']."' , ". $_POST['birth_date']." , ". sha1($_POST['password']) ."' , '". $_POST['cell_nmb']."' , '". $_POST['addres']."' , ". $_POST['cuil']." , '". $_POST['preguntas_seguridad']."' , '". sha1($_POST['respuestas'])."' , 'now()' );";    
        
            $result_user = mysqli_query($conn, $query_user);

            if(!$result_user){
                die('Error de Consulta ' . mysqli_error($conn));
            }else{

            

                $query_usuario_id = "SELECT id FROM usuarios WHERE dni = " . $_POST['dni'];
                $result_usuario_id = mysqli_query($conn, $query_usuario_id);
                
                if(!$result_usuario_id){
                    die('Error de Consulta ' . mysqli_error($conn));
                }  

                $row = mysqli_fetch_assoc($result_usuario_id);
                $id = $row['id'];                

                // Obtener la fecha actual en formato YYYY-MM-DD
                $fechaActual = date('Y-m-d'); 

                // Calcular la fecha que es tres años en el futuro
                $fechaTresAniosDespues = date('Y-m-d', strtotime('+3 years', strtotime($fechaActual)));
                
                // Obtener el último día del mismo mes dentro de tres años
                $ultimoDiaMismoMesTresAnios = date('Y-m-t', strtotime($fechaTresAniosDespues));


                $query_caja_ahorro = "INSERT INTO caja_ahorro(usuario_id, cvv, monto_disp, tipo_tarjeta, limite, fecha_emision, fecha_vencimiento, estado_tarjeta, moneda, fecha_alta) 
                VALUES(".$id." , ".rand(100,999) ." , ". 1000 ." , 'VISA', ". 1000000 ." , '" . date('Y-m-d H', strtotime('+3 days', strtotime($fechaActual))) ."' , '" . $ultimoDiaMismoMesTresAnios . "' , 'ACTIVA' , 'now()')";
            
                $result_caja_ahorro = mysqli_query($conn,$query_caja_ahorro);

                if(!$result_caja_ahorro){
                    die('Error de Consulta ' . mysqli_error($conn));
                }
                header("Location:home.php");
        
            }
        }
    } 
}
$view = "register";
require_once "../views/layout.php";