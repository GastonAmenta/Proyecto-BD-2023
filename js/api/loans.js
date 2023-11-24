$(document).ready(function () {

    var btn_simulation = $("#loan_simulation_btn");
    var btn_request = $("#loan_request_btn");

    btn_simulation.prop('disabled', true);
    btn_simulation.css("background-color", "#CCD1D1");
    btn_simulation.css("cursor", "default");
    btn_request.css('display','none');
    

    function checkConditions() {        
        var loan_amount = $('#loan_amount').val();
        var select_installments =$("#select-installments option:selected").val();
        var password_loan = $('#password-loan').val();
        var reason = $('reason').val();
        
        if( (loan_amount >= 1000 && loan_amount <= 1000000) && (select_installments !== "Cuotas") && (password_loan !== "") && (reason !== "" || reason != null)){
            btn_simulation.prop('disabled', false);
            btn_simulation.css("background-color", "#04AA6D");
            btn_simulation.css("cursor", "pointer");
        }else{
            btn_simulation.prop('disabled', true);
            btn_simulation.css("background-color", "#CCD1D1");
            btn_simulation.css("cursor", "default");
        }
    }
    
    $(document).on("click", function() {
        checkConditions();
    });
    $(document).on("keyup", function() {
        checkConditions();
    });
    
    btn_simulation.click(function(e){    
        e.preventDefault();
        var loan_sheet_div = $("#loan_sheet_div");

        var loan_amount = parseInt($('#loan_amount').val(), 10);
        var select_installments = parseInt($("#select-installments option:selected").val(), 10);
        var password_loan = $('#password-loan').val();              
        var reason = $('#reason').val();        

        var reques_btn = $('#loan_request_btn_div');
        
        $.ajax({
            type: 'POST',
            url: 'api/loans.php',
            data: {loan_amount: loan_amount, installments: select_installments, password: password_loan, reason: reason},
            dataType: 'JSON',
                success:function(r){
                    if(r.message == "Se a simulado correctamente"){  
                        //DECLARO VARIABLES A MOSTRAR
                        var monto = r.data.monto;                                                         
                        var cuotas = r.data.cuotas;
                        var porcentaje_interes = r.data.porcentaje_interes;
                        var total_interes = r.data.total_intereses;
                        var total = r.data.total;
                        var valor_cuota = r.data.valor_cuota;
                        //PRESENTO
                            sheet = `        
                            <table>
                                <tr>
                                    <th>MONTO</th>
                                    <th>CUOTAS</th>
                                    <th>PORCENTAJE DE INTERES</th>
                                    <th>VALOR DEL INTERES</th>   
                                    <th>TOTAL A PAGAR</th>                                 
                                    <th>VALOR CUOTA</th>
                                </tr>
                                <tr>
                                    <td>$`+monto+`</td>
                                    <td>`+cuotas+`</td>
                                    <td>`+porcentaje_interes+`%</td>                                    
                                    <td>$`+total_interes+`</td>
                                    <td>$`+total+`</td>
                                    <td>$`+valor_cuota+`</td>                                    
                                </tr>        
                            </table>`;  
                        if(typeof(sheet) == "undefined"){
                            loan_sheet_div.append(sheet);
                        }else{
                            loan_sheet_div.empty() 
                            loan_sheet_div.append(sheet);
                        }

                        //MUESTRO BTN REQUEST
                        btn_request.css('display','');
                    }else{
                        alert(r.message);
                        location.reload();
                    }
                }
        });        
    })    

    $("#loan_request_btn_div").on("click", "#loan_request_btn", function(e) {  
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
                    if(r.message == "Exito al pedir prestamo"){                                        
                        alert(r.message);
                        $(location).attr('href', '../controllers/home.php');
                    }else{
                        alert(r.message);
                        location.reload();
                    }
                }
        });        
    })


});