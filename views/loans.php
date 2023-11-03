<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="../js/api/loans.js"></script>

<div class="container">
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

<div class="container--loans">
    
    <div class = "input_reg_form"> 
        <form class ="loans_form">     

            <div class="loan_amount_div">
                <label>Min $1.000 - Max $1.000.000</label>
                <input type="number" name="amount" id="loan_amount" placeholder="Monto" required  min="1000" max="1000000">
            </div>
            
            <div class="loans_select_div">                
                <select class = "loans_select" id ="select-installments" required>
                    <option hidden selected>Cuotas</option>
                    <option value= 3> 3 </option>
                    <option value= 6> 6 </option>
                    <option value= 12> 12 </option>
                    <option value= 18> 18 </option>
                    <option value= 24> 24 </option>        
                </select>         
            </div>            

            <div class="loan_password_div">
                <input type="text" id="reason" placeholder="Razon del pedido" required>
                <input type="text" id="password-loan" placeholder="Contraseña" required>
            </div>            
            
            <div class="loan_simulation_btn_div">
                <button id="loan_simulation_btn">Simular</button>
            </div>
            
        </form>
    </div>
    <div class="loan-simulation_data">
        <div class="loan_simulation_btn_div">
            <button id="loan_simulation_btn">Pedir prestamo</button>
        </div>
    </div>
</div>

    <div class="loan_sheet_div">
        <!-- Contenido enviado por js -->
    </div>
</div>                

