$(document).ready(function () {

    var btn = $("#loan_simulation_btn");

    btn.prop('disabled', true);
    btn.css("background-color", "#CCD1D1");
    btn.css("cursor", "default");

    function checkConditions() {        
        var loan_amount = $('#loan_amount').val();
        var select_installments = $('#select-installments').val();
        var password_loan = $('#password-loan').val();
        var reason = $('reason').val();
        
        if( (loan_amount >= 1000 && loan_amount <= 100000) && (select_installments !== "Cuotas") && (password_loan !== "") && (reason !== "")){
            btn.prop('disabled', false);
            btn.css("background-color", "#04AA6D");
            btn.css("cursor", "pointer");
        }
    }

    $(document).on("click keypress", function() {
        checkConditions();
    });
    
    btn.click(function(e){             
        e.preventDefault();
        var loan_amount = $('#loan_amount').val();
        var select_installments = $('#select-installments').val();
        var password_loan = $('#password-loan').val();              
        var reason = $('reason').val();

        $.ajax({
            type: 'POST',
            url: 'api/loans.php',
            data: {loan_amount: loan_amount, installments: select_installments, password: password_loan, reason: reason},
            dataType: 'JSON',
                success:function(r){
                    if(r.message == "Se a simulado correctamente"){                                
                        console.log(r);                            
                    }else{
                        alert(r.message_err);
                    }
                }
        });        
    })    
});








/*

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