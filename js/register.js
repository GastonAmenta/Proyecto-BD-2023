var button = document.getElementById('btn_form_register')
var DNI = document.getElementById('DNI')
var CUIL = document.getElementById('CUIL')
var Name = document.getElementById('name')
var surname = document.getElementById('surname')
var email = document.getElementById('email')
var pass = document.getElementById('pass')
var confirmPass = document.getElementById('confirmpass')
var tel = document.getElementById('tel')
var adress = document.getElementById('adress')
var form = document.getElementById('form_register')
button.addEventListener('click', (e) =>{
  
  e.preventDefault();
 let submit = 0
 let regularExpression = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
 let regrexPass = /^[a-zA-Z0-9\-\/]+$/


 if (DNI.value.length > 9 ){
    setError(DNI, 'DNI muy largo')
 } else if (!DNI.value){
   setError(DNI, 'ingrese un DNI')
 } else if(DNI.value.length < 8){
   setError(DNI, 'ingrese un DNI valido')
 } else {
   setSuccess(DNI)
    submit += 1
 }


 if (!email.value){
    setError(email, 'Ingrese un email')
 } else if(!regularExpression.test(email.value)){
    setError(email, 'Ingrese un email valido')
 } else {
   setSuccess(email)
    submit += 1
 }


 if (!CUIL.value){
    setError(CUIL, 'Ingrese el CUIL')
 } else{
    setSuccess(CUIL)
    submit += 1
 }


 if (!Name.value){
    setError(Name,'Ingrese el nombre')
 } else {
    setSuccess(Name)
    submit += 1 
 }


 if(!surname.value){
    setError(surname, 'ingrese el apellido')
 } else {
    setSuccess (surname)
    submit += 1
 }


 if(!pass.value){
   setError(pass, 'ingrese la contraseña')
 } else if (!regrexPass.test(pass.value)){
   setError(pass, `La contraseña solo puede contener: Letras, numeros, guiones y barras`)
 } else if (pass.value.length > 16){
   setError(pass,`Contraseña muy larga`)
 } else if (pass.value.length < 4){
   setError(pass,`Contraseña muy corta`)
 }else{
   setSuccess(pass)
   submit += 1
 }


 if(confirmPass.value != pass.value){
   setError(confirmPass,`La contraseña no coincide`)
 } else if(!confirmPass.value){
   setError(confirmPass,`Ingrese una contraseña para comparar`)
 } else {
   setSuccess(confirmPass)
   submit += 1
 }


 if(tel.value.length != 10){
   setError(tel,`Ingrese un telefono valido`)
 } else if(!tel.value){
   setError(tel,`Ingrese un telefono`)
 }
   else
   {
      setSuccess(tel)
      submit += 1
   }

 if(!adress.value){
   setError(adress,`Ingrese una direccion`)
    }
    else
    {
      setSuccess(adress)
      submit += 1
    }

    if(submit == 9){
      form.submit()
    }
})

function setError(input, message){
   const form_container = input.parentElement;
   const small = form_container.querySelector('small');
   form_container.className = 'input_reg_form error';
   small.innerText = message;
}

function setSuccess(input){
   const form_container = input.parentElement;
   const small = form_container.querySelector('small');
   form_container.className = 'input_reg_form success'
}

