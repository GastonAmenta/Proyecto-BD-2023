<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link rel="stylesheet" href="../css/style2.css">
</meta>
<div class="container_header">
        <div class="container_button">
            <div class="container_img">
                <a href="../controllers/home.php">
                    <img src="../img/logo_2021_S.svg" alt="">
                </a>
            </div>
            <div class="container_info">                
                <?php if(isset($_SESSION['user'])){ echo '<a class="button" href="../controllers/profile.php">Perfil</a>';} ?>
                <button>Empresas</button>
                <button>Emprendedores</button>
                <button>Provincias compras</button>
                <button>Turnos web</button>
                <a class="especial">BIP Personas</a>
                <a class="especial">BIP Empresas</a>
            </div>
        </div>
</div>

<div class="container">
    <p>MIS TARJETAS</p>
<div class="opciones">
        
            <i class="bi bi-arrow-left-right transButton"><a href="transfer.php">Transferir </a></i>
        
        <i class="bi bi-clipboard-data-fill">Pagar servicios</i>

    </div> 
        <div class="card">
            <div class="card-inner">
                <div class="front">
                    <img src="../img/calabaza-te-mate-planta-yerba-mate-bombilla_650496-379.avif" class="map-img">
                    <div class="row">
                        <img class="top_imgs" src="https://i.ibb.co/G9pDnYJ/chip.png" width= "60px">
                        <img class="top_imgs" src="https://i.ibb.co/WHZ3nRJ/visa.png" width= "60px">
                    </div>
                    <div class="row card-no">
                        <!-- Mostrar nrs tarjeta strtoupper -->
                        <p> <?php echo substr($rowTarjeta['numr_tarjeta'] , 0 , 4); ?> </p>
                        <p> <?php echo substr($rowTarjeta['numr_tarjeta'] , 4 , 4); ?>  </p>
                        <p> <?php echo substr($rowTarjeta['numr_tarjeta'] , 8 , 4); ?>  </p>
                        <p> <?php echo substr($rowTarjeta['numr_tarjeta'] , 12 , 4); ?>  </p>
                    </div>
                    <div class="row card-holder">
                        <p>CARD HPLDER</p>
                        <p>VALID TILL</p>
                    </div>
                    <div class="row name">
                        <p> <?php echo strtoupper($_SESSION['user']['apellido']); ?> <?php echo strtoupper(substr($_SESSION['user']['nombre'] , 0 , 1)) . strtolower(substr($_SESSION['user']['nombre'] , 1 )); ?> </p>
                        <p>10 / 25</p>
                    </div>
                </div>
                <div class="back">
                    <img src="https://i.ibb.co/PYss3yv/map.png" class="map-img">
                    <div class="bar"></div>
                    <div class="row card-cvv">
                        <div>
                            <img src="https://i.ibb.co/S6JG8px/pattern.png">
                        </div>
                        <p> <?php echo $rowTarjeta['cvv']; ?>  </p>
                    </div>
                    <div class="row card-text">
                        
                    </div>
                    <div class="row signature">
                        <p>CUSTOMER SIGNATURE</p>
                        <img src="https://i.ibb.co/WHZ3nRJ/visa.png" width="80px">
                    </div>
                </div>
            </div>
        </div>
        <div class="monto">
            <span>Monto disponible: $<?php echo $rowTarjeta['monto_disp']; ?> <?php echo $rowTarjeta['moneda']; ?> </span> <br>
            <span>Tarjeta <?php echo $rowTarjeta['estado_tarjeta'] ?></span><br>
            <span>Fecha de vencimiento: <?php echo $rowTarjeta['fecha_vencimiento'] ?></span>
        </div>
    </div>