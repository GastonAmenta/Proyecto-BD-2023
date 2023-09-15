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
        <a href="cards.php">
            <i class="fa fa-arrow-left" style="font-size:25px;color:black;font-style:inherit;"> Atras</i>
        </a>
        <div class="my_cards">
            <span>Transferir</span>
        </div>
    </div>
    <div class="form_container">
        <form action="../controllers/transfer.php" method="POST" id="form_register">
            <div class="texto">
                <span>Ingrese el alias de la cuenta destino</span>
            </div>
            <div class="input_reg_form"> <input type="text" name="alias" placeholder="Alias" required> </div>
            <div class="msj_error">
                <?php echo (isset($message['alias']) ? $message['alias'] : ''); ?>
            </div>

            <div class="texto">
                <span>Ingrese el monto</span>
            </div>
            <div class="input_reg_form"> <input type="number" name="monto" placeholder="Monto" required> </div>
            <div class="msj_error">
                <?php echo (isset($message['monto']) ? $message['monto'] : ''); ?>
            </div>

            <div class="texto">
                <span>Ingrese la descripcion</span>
            </div>
            <div class="input_reg_form"> <input type="text" name="descripcion" placeholder="Descripcion"> </div>
            <div class="msj_error">
                <?php echo (isset($message['descripcion']) ? $message['descripcion'] : ''); ?>
            </div>

            <div class="texto">
                <span>Ingrese su contraseña</span>
            </div>
            <div class="input_reg_form"> <input type="password" name="clave" placeholder="Contraseña" required> </div>
            <div class="msj_error">
                <?php echo (isset($message['clave']) ? $message['clave'] : ''); ?>
            </div>


            <div class="input_reg_form"> <input class="btn_reg_form" type="submit"> </div>
        </form>
    </div>
</div>