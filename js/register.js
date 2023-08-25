const btnActivar = document.getElementById('btn_form_register');
const formulario = document.getElementById('form_register');

// Agregar un evento clic al botón
btnActivar.addEventListener('click', function() {
    formulario.style.display = 'block'; // Mostrar el formulario
});