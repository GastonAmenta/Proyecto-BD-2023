<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link rel="stylesheet" href="../css/style2.css">
</meta>

<div class="container">
<div class="container_header">
                <div class="container_button">
                    <div class="container_img">
                        <img src="../img/logo_2021_S.svg" alt="">
                    </div>
                    <div class="container_info">                
                        <?php if(isset($_SESSION['user'])){ echo '<a class="button" href="../controllers/profile.php">Perfil</a>';} ?>
                        <a>Empresas</a>
                        <a>Emprendedores</a>
                        <a>Provincias compras</a>
                        <a>Turnos web</a>
                        <a class="especial">BIP Personas</a>
                        <a class="especial">BIP Empresas</a>
                    </div>
                </div>
            </div>
        <div class="card">
            <div class="card-inner">
                <div class="front">
                    <img src="https://i.ibb.co/PYss3yv/map.png" class="map-img">
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
                        <p>this is a virtual card design using HTML and CSS. You can aslo design something like this.</p>
                    </div>
                    <div class="row signature">
                        <p>CUSTOMER SIGNATURE</p>
                        <img src="https://i.ibb.co/WHZ3nRJ/visa.png" width="80px">
                    </div>
                </div>
            </div>
        </div>
    </div>