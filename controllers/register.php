<?php

require_once "../includes/config.php";

if (!empty($_POST)){
    
    if($_POST['password'] == $_POST['conf_password']){

        $query_verify_dni = "SELECT * FROM usuarios WHERE dni = " . $_POST['dni'];
        $result_verify_dni = mysqli_query($conn, $query_verify_dni);
                
        if(!$result_verify_dni){
            die('Error de Consulta ' . mysqli_error($conn));
        }            
        if(mysqli_num_rows ( $result_verify_dni) != 0){
            $messege = "Ya hay un usuario";                        
        }else{
            $query_user = "INSERT INTO usuarios(DNI, nombre, apellido, email, fecha_nacimiento, clave, telefono, direccion, cuil, preguntas_seguridad, respuesta, fecha_alta) 
            VALUES('". $_POST['dni']."' , '". $_POST['name']."' , '". $_POST['surname']."' , '". $_POST['email']."' , '". $_POST['birth_date']."' , '". sha1($_POST['password']) ."' , '". $_POST['cell_nmb']."' , '". $_POST['addres']."' , '". $_POST['cuil']."' , '". $_POST['select-register']."' , '". sha1($_POST['answer'])."' , now() );";    

            $result_user = mysqli_query($conn, $query_user);

            if(!$result_user){                
                die('Error de Consulta ' . mysqli_error($conn));
            }else{

            //$query_usuario_id = mysqli_insert_id($conn)
            // mysqli_insert_id($conn);

                $query_usuario_id = "SELECT ID FROM usuarios WHERE dni = " . $_POST['dni'];
                $result_usuario_id = mysqli_query($conn, $query_usuario_id);
                
                if(!$result_usuario_id){
                    die('Error de Consulta ' . mysqli_error($conn));
                }  

                $row = mysqli_fetch_array($result_usuario_id, MYSQLI_ASSOC);
                //print_r($row);
                $id = $row['ID'];

                // Obtener la fecha actual en formato YYYY-MM-DD
                $fechaActual = date('Y-m-d'); 

                // Calcular la fecha que es tres años en el futuro
                $fechaTresAniosDespues = date('Y-m-d', strtotime('+3 years', strtotime($fechaActual)));
                
                // Obtener el último día del mismo mes dentro de tres años
                $ultimoDiaMismoMesTresAnios = date('Y-m-t', strtotime($fechaTresAniosDespues));

                //randomizar 4 numeros/letras 
                $caracteres_permitidos = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

                // Inicializar una variable para almacenar la cadena aleatoria
                $alias = "";

                // Generar 4 caracteres aleatorios
                for ($i = 0; $i < 4; $i++) {
                    // Obtener un índice aleatorio dentro de la longitud de la lista de caracteres permitidos
                    $indice = rand(0, strlen($caracteres_permitidos) - 1);
                    
                    // Agregar el carácter aleatorio a la cadena aleatoria
                    $alias .= $caracteres_permitidos[$indice];
                }                            

                $query_caja_ahorro = "INSERT INTO caja_ahorro(numr_tarjeta, usuarios_id, alias, cvv, monto_disp, tipo_tarjeta, limite, fecha_emision, fecha_vencimiento, estado_tarjeta, moneda, fecha_alta) 
                VALUES('".rand(1000000000000000,9999999999999999)."' , '". intval($id) ."' , '". ($_POST['name'].$alias.".bp") ."' , '".rand(100,999) ."' , '". 1000 ."' , 'VISA', '". 1000000 ."' , '" . date('Y-m-d H', strtotime('+3 days', strtotime($fechaActual))) ."' , '" . $ultimoDiaMismoMesTresAnios . "' , 'ACTIVA' , 'Peso Argentino' , now())";
            
                $result_caja_ahorro = mysqli_query($conn,$query_caja_ahorro);

                if(!$result_caja_ahorro){
                    die('Error de Consulta ' . mysqli_error($conn));
                }else{
                    header("Location:home.php");
                }                        
            }
        }
    } 
}
$view = "register";
require_once "../views/layout.php";