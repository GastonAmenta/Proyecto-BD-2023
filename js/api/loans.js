$(document).ready(function () {

    var btn_simulation = $("#loan_simulation_btn");
    var btn_get_loan = $("#get_loan");

    btn_simulation.prop('disabled', true);
    btn_simulation.css("background-color", "#CCD1D1");
    btn_simulation.css("cursor", "default");

    function checkConditions() {        
        var loan_amount = $('#loan_amount').val();
        var select_installments =$("#select-installments option:selected").val();
        var password_loan = $('#password-loan').val();
        var reason = $('reason').val();
        
        if( (loan_amount >= 1000 && loan_amount <= 100000) && (select_installments !== "Cuotas") && (password_loan !== "") && (reason !== "")){
            btn_simulation.prop('disabled', false);
            btn_simulation.css("background-color", "#04AA6D");
            btn_simulation.css("cursor", "pointer");
        }
    }

    $(document).on("click keypress", function() {
        checkConditions();
    });
    
    btn_simulation.click(function(e){    
        e.preventDefault();

        var loan_amount = parseInt($('#loan_amount').val(), 10);
        var select_installments = parseInt($("#select-installments option:selected").val(), 10);
        var password_loan = $('#password-loan').val();              
        var reason = $('#reason').val();        
        
        $.ajax({
            type: 'POST',
            url: 'api/loans.php',
            data: {loan_amount: loan_amount, installments: select_installments, password: password_loan, reason: reason},
            dataType: 'JSON',
                success:function(r){
                    if(r.message == "Se a simulado correctamente"){   
                        document.write(html = `        
                            <table>
                                <tr>
                                    <th>Company</th>
                                    <th>Contact</th>
                                    <th>Country</th>
                                </tr>        
                            </table>`);
                            

                    }else{
                        alert(r.message);
                        location.reload();
                    }
                }
        });        
    })    

    btn_get_loan.click(function(e){    
        e.preventDefault();

        var loan_amount = parseInt($('#loan_amount').val(), 10);
        var select_installments = parseInt($("#select-installments option:selected").val(), 10);
        var password_loan = $('#password-loan').val();              
        var reason = $('#reason').val();     
        var flag = true;   
        
        $.ajax({
            type: 'POST',
            url: 'api/loans.php',
            data: {loan_amount: loan_amount, installments: select_installments, password: password_loan, reason: reason, flag: flag},
            dataType: 'JSON',
                success:function(r){
                    if(r.message == "prestamo acreditado"){                                        
                        location.reload();   
                    }else{
                        alert(r.message);
                        location.reload();
                    }
                }
        });        
    })


});