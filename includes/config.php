<?php
session_start();

$conn = mysqli_connect('localhost', 'root', '', 'banco_provincia');
if (!$conn) {
  die('Error de Conexión (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
}
 


