<?php

require_once "../includes/config.php";

if (!isset($_POST)){
    if($_POST['password'] == $_POST['conf_password']){

    

        $query = "INSERT INTO usuarios(DNI, nombre, apellido, email, fecha_nacimiento, clave, telefono, direccion, nro_seguro_social, preguntas_seguridad, fecha_alta) 
        Values('". $_POST[dni]."' , '". $_POST[name]."' , '". $_POST[surname]."' , '". $_POST[email]."' , '". $_POST[birth_date]."' , 'sha". $_POST[password]."' , '". $_POST[cell_nmb]."' , '". $_POST[addres]."');
        
        
        
        
        
        ";    
    }

}







$view = "register";
require_once "../views/layout.php";