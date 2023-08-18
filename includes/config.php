<?php

/*todo esto es requerido para conectarse a Microsoft sql server

$serverName = "PC-F-006\SQLEXPRESS"; // <- esto cambia dependiendo de cada pc

// Puesto que no se han especificado UID ni PWD en el array  $connectionInfo,
// La conexión se intentará utilizando la autenticación Windows.
$connectionInfo = array( "Database"=>"biblioteca");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

if( !$conn ) {
     echo "Conexión no se pudo establecer.<br />";
     die( print_r( sqlsrv_errors(), true));
}
*/

$conn = mysqli_connect('localhost', 'root', '', 'banco_provincia');
if (!$conn) {
  die('Error de Conexión (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
}
 session_start();
