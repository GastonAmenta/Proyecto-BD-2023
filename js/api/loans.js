$(document).ready(function () {
    btn = document.getElementById("loan_simulation_btn");
    btn.disabled = true;


})








/*

$('#loan_simulation_btn').click(function(e){             
    e.preventDefault();
    
    $.ajax({
        type: 'POST',
        url: '../api/loans.php',
        data: {name: nameValue, username: usernameValue, email: emailValue, password: passwordValue, gender: genderValue, birth_date: dateValue},
        dataType: 'JSON',
            success:function(r){
                if(r.message == "Se ha registrado correctamente"){                                
                    console.log(r);
                    window.location.href = '../views/layout.php'; 
                }else{
                    alert("Error al registrarce");
                    console.log(r);
                }
            }
    });
})

html = `        
<table>
    <tr>
        <th>Canal</th>            
        <th>Sucursal o Web</th>
    </tr>
    <tr>
        <td>Alfreds Futterkiste</td>
        <td>Maria Anders</td>            
    </tr>
    <tr>
        <td>Centro comercial Moctezuma</td>
        <td>Francisco Chang</td>
    </tr>
    <tr>
        <td>Ernst Handel</td>
        <td>Roland Mendel</td>
    </tr>
    <tr>
        <td>Island Trading</td>
        <td>Helen Bennett</td>
    </tr>
    <tr>
        <td>Laughing Bacchus Winecellars</td>
        <td>Yoshi Tannamuri</td>
    </tr>
    <tr>
        <td>Magazzini Alimentari Riuniti</td>
        <td>Giovanni Rovelli</td>
    </tr>
</table>`;

*/