<div class="topnav_register">
    <div class="hola">
        <a href="../index.php">
            <img src="../img/banco_provincia.png" alt="banco_provincia.pnh">
        </a>
    </div>
</div>
<div class="form_container">
    <form action="../controllers/login.php" method="POST">

        <input class="" type="text" name="dni" placeholder="Ingrese su DNI"></input> <br>
       
        <input class="" type="email" name="email" placeholder="Ingrese su email"></input> <br>

        <input type="password" name="clave" placeholder="Ingrese su contraseña"></input> <br>

        <div>
            <?php echo (isset($error) ? $error : ''); ?>
        </div>
        <input type="submit" class="btn_reg_form" value="Iniciar Sesion"></input> <br>
    </form>
</div>
<div class="div_href_login2">

    <br> ¿No tenes cuenta?
</div>
<div class="div_href_login2">
    <button><a class="href_login" href="register.php">Registrate</a></button>
</div>