    <div class= "topnav_register">
    <div class = "hola">
        <a href= "../index.php">
            <img src="../img/banco_provincia.png" alt="banco_provincia.pnh">
        </a>
    </div>        
</div>

<div class = "form_container">
        <form action="" method="POST">
            <div class = "input_reg_form"> <input type="number" name="dni" placeholder="DNI" required oninput="this.value = this.value.replace(/[^0-9]/g, '');"> </div>                
            <div class = "input_reg_form"> <input type="number" name="cuil" placeholder="CUIL/CUIT" required> </div>
            <div class = "input_reg_form"> <input type="text" name="name" placeholder="Nombre" required> </div>
            <div class = "input_reg_form"> <input type="text" name="surname" placeholder="Apellido" required> </div>
            <div class = "input_reg_form"> <input type="email"name="email" placeholder="Email" required> </div>            
            <div class = "input_reg_form"> <input type="password" name="password" placeholder="Contraseña" required> </div>
            <div class = "input_reg_form"> <input type="password" name="conf_password" placeholder="Repetir contraseña" required> </div>
            <div class = "input_reg_form"> <input type="number" name="cell_nmb" placeholder="Telefono" required> </div>
            <div class = "input_reg_form"> <input type="text" name="addres" placeholder="Direccion" required> </div>
            <div class = "input_reg_form"> <input type="date" name="birth_date" placeholder="Fecha de nacimiento" required> </div>

            <div class = "input_reg_form"> 
                <select>
                    <option value="lol">En que año entraste a la secundaria ?</option>
                    <option value="lol">Cual es el segundo nombre de tu abuela ?</option>
                    <option value="lol">Cual es el apodo de tu hijo/a ?</option>
                    <option value="lol">Nombre de tu primera mascota ?</option>
                    <option value="lol">Nombre de la primera escuela a la que fuiste ?</option>                    
                </select> 
            </div>




            <div class = "btns_register" >
                <button class = "btn_reg_form">Registrarme</button>
                <div class = div_href_login>
                    <a class= "href_login" href="login.php">Iniciar sesion</a>
                </div>
            </div>            
        </form>        
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
