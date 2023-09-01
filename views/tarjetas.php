<div class="container">
    <div class="container_button">
        <div class="container_img">
            <a href="home.php">
                <img src="../img/logo_2021_S.svg" alt="">
            </a>
        </div>
        <div class="container_info">
            <button>Personas</button>
            <button>Empresas</button>
            <button>Emprendedores</button>
            <button>Provincias compras</button>
            <button>Turnos web</button>
            <a class="especial">BIP Personas</a>
            <a class="especial">BIP Empresas</a>
        </div>
    </div>
    <div class="back_button">
        <a href="home.php">
            <i class="fa fa-arrow-left" style="font-size:25px;color:black;font-style:inherit;"> Atras</i>
        </a>
        <div class="my_cards">
            <span>Mis tarjetas</span>
        </div>
    </div>


    <div class="opciones">
        <i class="bi bi-arrow-left-right">Transferir</i> <br>
        <i class="bi bi-clipboard-data-fill">Pagar servicios</i>

    </div>
    <div class="debit_card">

        <a href="#">
            <img class="debit_card" src="../img/Hsbc-card.jpg" alt="">
        </a>

        <div class="monto">
            <span>Monto disponible: $<?php echo $rowTarjeta['monto_disp']; ?> <?php echo $rowTarjeta['moneda']; ?> </span> <br>
            <span>Tarjeta <?php echo $rowTarjeta['estado_tarjeta'] ?></span><br>
            <span>Fecha de vencimiento: <?php echo $rowTarjeta['fecha_vencimiento'] ?></span>
        </div>
    </div>
</div>