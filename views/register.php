<div class= "topnav_register">
    <div>
        <a href= "../index.php">
            <img src="../img/banco_provincia.png" alt="banco_provincia.pnh">
        </a>
    </div>        
</div>

<div class = "form_container">
        <form action="../controllers/register.php" method="POST" id = "form_register">
            <div class = "input_reg_form"> <input type="number" name="dni" placeholder="DNI" id="DNI"> </div>
            <p id="DNI"></p>                
            <div class = "input_reg_form"> <input type="number" name="cuil" placeholder="CUIL/CUIT"  id="CUIL"> </div>
            <p id="CUIL"></p>
            <div class = "input_reg_form"> <input type="text" name="name" placeholder="Nombre" id ="name"> </div>
            <p id="name"></p>
            <div class = "input_reg_form"> <input type="text" name="surname" placeholder="Apellido" id="surname"> </div>
            <p id="surname"></p>
            <div class = "input_reg_form"> <input type="email"name="email" placeholder="Email" id="email"> </div>      
            <p id="email"></p>      
            <div class = "input_reg_form"> <input type="password" name="password" placeholder="Contraseña" id="pass" > </div>
            <p id="pass"></p>
            <div class = "input_reg_form"> <input type="password" name="conf_password" placeholder="Repetir contraseña" id="confirmpass"> </div>
            <p id="confirmpass"></p>
            <div class = "input_reg_form"> <input type="number" name="cell_nmb" placeholder="Telefono" id="tel"> </div>
            <p id="tel"></p>
            <div class = "input_reg_form"> <input type="text" name="addres" placeholder="Direccion" id="adress"> </div>
            <p id="adress"></p>
            <div class = "input_reg_form"> <input type="date" name="birth_date" placeholder="Fecha de nacimiento"> </div>

            <div class = "input_reg_form">
                <select class = "register_select" id ="select-register" name ="select-register" required>
                <option hidden selected>Selecciona pregunta de seguridad</option>
                <option value= 1 >En que año entraste a la secundaria ?</option>
                <option value= 2 >Cual es el segundo nombre de tu abuela ?</option>
                <option value= 3 >Cual es el apodo de tu hijo/a ?</option>
                <option value= 4 >Nombre de tu primera mascota ?</option>
                <option value= 5 >Nombre de la primera escuela a la que fuiste ?</option>                    
                </select> 
            </div> 
            
            <div class = "form_container_1">
                <div class = "input_reg_form" style = "margin-bottom : 15px"> <input type="text" name="answer" placeholder="Respuesta" > </div>                
                <div class = "btns_register" >
                    <button class = "btn_reg_form" id="btn_form_register">Registrarme</button>
                    <div class = div_href_login>
                        <a class= "href_login" href="login.php">Iniciar sesion</a>
                    </div>
                </div>                                   
            </div>
        </form>
</div>
<script src="../js/register.js"></script>



