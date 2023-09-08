<?php
require_once "../includes/config.php";
/*session_start();
if(isset($_SESSION['user'])){
    header("Location: home.php");
}
*/
if (!empty($_POST)) {
    $dni = $_POST['dni'];
    $email = $_POST['email'];
    $clave = $_POST['clave'];

    $sqlLogin = "SELECT * FROM usuarios WHERE DNI='" . trim($dni) . "' AND email='". trim($email)."' AND clave='".sha1($clave)."' AND fecha_baja IS NULL";
    $resLogin = mysqli_query($conn, $sqlLogin);
    if(!$resLogin){
        die("Error de consulta: " . mysqli_error($conn));
    }
    if (mysqli_num_rows($resLogin) === 1){
    $rowLogin = mysqli_fetch_array($resLogin, MYSQLI_ASSOC);

    session_start();


    $_SESSION["user"] = $rowLogin;
   // print_r($_SESSION["user"]);
    header('Location: home.php');
    }else{
        $error = "Los datos ingresados son incorrectos";
    }


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
