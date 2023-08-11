<?php
require_once "../includes/config.php";

if (!empty($_POST)) {
    $dni = $_POST['dni'];
    $clave = $_POST['clave'];
}



/*if (!empty($_POST)) {
    $dni = $_POST['dni'];
    $clave = $_POST['clave'];

    $sqlquery = "SELECT * FROM Persona WHERE DNI = 123 AND Clave= 123";
    $params = array(1, "some data");
    $sqlresult = sqlsrv_query($conn, $sqlquery, $params);
    if ($sqlquery === false) {
        die('Error de consulta: ' . sqlsrv_errors($conn));
    }
    $while($row = sqlsrv_fetch_object($sqlresult, SQLSRV_FETCH_ASSOC)){
        print_r($row)};
}

*/
$view = "login";
require_once "../views/layout.php";
