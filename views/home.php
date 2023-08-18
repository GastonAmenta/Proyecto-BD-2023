<body style="background-color: #EBEBEB">
    <div class="container">
        <div class="container_button">
            <div class="container_img">
                <img src="../img/logo_2021_S.svg" alt="">
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


        <div id="carouselExampleSlidesOnly" class="carousel slide " data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                <img src="../img/banner_empleadas_domesticas_L.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                <img src="../img/cdni_arba_automotor_mejora_L.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                <img src="../img/banner_home_justina_L.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                <img src="../img/referidos_L.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                <img src="../img/cabezal_home_provincia_compras_ddn_L.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>
        <div class="container_login-padre" <?php (isset($_SESSION['usuarios'])) ? "style: visibility: hidden;" : " ";?> >
            <div class="container_login">
                <div class="container_logo">
                    <img src="../img/pngwing.com.png" alt="">
                </div>
                <div class="container_info2">
                    <a href="../controllers/login.php">Iniciar Sesión</a>
                </div>
            </div>
        </div>
        <div class="container_login loged">
            <div class="container_logo">
                <div class="container_cards">
                    <a href="#">
                        <img src="../img/card.png" alt="">
                        <p>Mis tarjetas</p>
                    </a>
                </div>
                <div class="container_prestamos">
                    <a href="#">
                        <img src="../img/prestamo.png" alt="">
                        <p>prestamos</p>
                    </a>
                </div>
                <div class="container_credito">
                    <a href="#">
                        <img src="../img/dinero.png" alt="">
                        <p>Creditos</p>
                    </a>
                </div>
                <div class="container_profile">
                    <a href="#">
                        <img src="../img/pngwing.com.png" alt="">
                        <p>Mi perfil</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>