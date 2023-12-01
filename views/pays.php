<div class="container">
    <div class="container_button">
        <div class="container_img">
            <a href="../controllers/home.php">
                <img src="../img/logo_2021_S.svg" alt="">
            </a>
        </div>
        <div class="container_info">
            <?php if (isset($_SESSION['user'])) {
                echo '<a class="button" href="../controllers/profile.php">Perfil</a>';
            } ?>
            <button>Empresas</button>
            <button>Emprendedores</button>
            <button>Provincias compras</button>
            <button>Turnos web</button>
            <a class="especial">BIP Personas</a>
            <a class="especial">BIP Empresas</a>
        </div>
    </div>


    <table border=1>
        <tr>
            <th>Numero de cuota |</th>
            <th>Monto | </th>
            <th>Fecha de pago</th>
            <th>| Estado del pago</th>
            <th>Pagar</th>
        </tr>
        <?php foreach ($rowPays as $pagos) { ?>
            <tr>
                <td> <?php echo $pagos['nro_cuota'] ?></td>
                <td> <?php echo $pagos['monto'] ?></td>
                <td> <?php echo (substr($pagos['fecha_pago'], 0, 10)); ?></td>
                <td> <?php echo $pagos['estado_pago'] ?></td>
                <?php if (date('Y-m-d') >= $pagos['fecha_pago'] && $pagos['fecha_baja'] == NULL) { ?>
                    <td> <a href="../controllers/api/updatepay.php?id=<?php echo $pagos['pago_id'] ?>"><button class="btn-admin">Pagar</button></a><?php ?></td>
                <?php } else if ($pagos['fecha_baja'] != NULL) { ?>
                    <td>Ya pagado</td>
                <?php } else { ?>
                    <td> No disponible</td>
            <?php }
            } ?>
    </table>