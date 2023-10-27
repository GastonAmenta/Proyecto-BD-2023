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

button.addEventListener('click', (e) =>{
 e.preventDefault();
 let warnings = ""
 let submit = 0
 let regularExpression = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
 let regrexPass = /^[a-zA-Z0-9\-\/]+$/


 if (DNI.value.length > 9 ){
    warnings += `DNI muy largo <br>`
 } else if (!DNI.value){
    warnings += `Ingrese un DNI <br>`
 } else if(DNI.value.length < 8){
    warnings += `Ingrese un DNI valido <br>`
 } else {
    submit =+ 1
 }


 if (!email.value){
    warnings += `Ingrese un email <br>`
 } else if(!regularExpression.test(email.value)){
    warnings += `email no valido`
 } else {
    submit += 1
 }


 if (!CUIL.value){
    warnings += `Ingrese un CUIL <br>`
 } else{
    submit += 1
 }


 if (!Name.value){
    warnings += `Ingrese su nombre <br>`
 } else {
    submit += 1 
 }


 if(!surname.value){
    warnings += `Ingrese su apellido <br>`
 } else {
    submit += 1
 }


 if(!pass.value){
    warnings += `Ingrese una contraseña`
 } else if (!regrexPass.test(pass.value)){
    warnings += `La contraseña solo puede contener: Letras, numeros, guiones y barras <br>`
 } else if (pass.value.length > 16){
    warnings += `Contraseña muy larga <br>`
 } else if (pass.value.length < 4){
    warnings += `Contraseña muy corta <br>`
 }else{
    submit += 1
 }


 if(confirmPass != pass){
    warnings += `La contraseña no coincide <br>`
 } else if(!confirmPass){
    warnings += `Ingrese una contraseña para comparar`
 } else {
    submit += 1
 }


 if(tel.value.length != 10){
    warnings += `Ingrese un telefono valido`
 } else if(!tel.value){
    warnings += `Ingrese un telefono <br>`
 }


 if(!adress){
    warnings += `Ingrese una direccion`
 }
console.log(warnings)
})