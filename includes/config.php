<?php
 $conn = mysqli_connect("localhost", "root", "", "banco_provincia");
 if (!$conn){
     die('error de ('. mysqli_connect_errno() . ')' .mysqli_connect_error() );
 }

 session_start();