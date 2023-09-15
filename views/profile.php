
<div class="container-profile">
    <div class="container-info-profile">
        <div class="container_img-profile">
            <img src="../img/pngwing.com.png" alt="" style="width:150px;">
        </div>
            <div class="container_user-profile">
                <div class="container_nombreapellido"> <p style="margin-right:5px; margin-left:45px;"><?php echo ($_SESSION['user']['nombre']) ?></p> <p><?php echo ($_SESSION['user']['apellido'])?></p> </div>                        
                <div class="container_alias"> <a> <?php echo "Alias : ".($rowAlias['alias']) ?> </a> </div>        
            </div>        
        <div class="container-interact-profile">            
            <a href="../controllers/logout.php">Cerrar Sesión</a>
            <a href="#" id="edit-profile">Editar perfil</a>
        </div>
    </div>
</div>
<div class="container_edit-profile">

</div>
<div class="container-info_transaction">
        <div>
            <?php 
                echo "<div><a href=''>TRANSACCIONES:</a></div>";
                    foreach($rowecard as $fila ){
                        $transType = $fila['tipo_transaccion'];
                        $transStatus = $fila['estado'];
                        $date = $fila['fecha_hora'];
                        $monto = $fila['monto'];
                            echo "  <div class='container-trans'>Tipo de transaccion: $transType <br> Estado de la transacción: $transStatus <br> fecha: $date <br> Monto: $$monto</div>";                                              
                        }
                        
                    
                    if(!$rowecard){
                        echo " <div class='noTransactions'>Sin transacciones</div>";
                    } ?>    
        </div>
</div>

<script src="../js/profile.js"></script>