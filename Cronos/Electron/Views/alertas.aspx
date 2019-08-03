
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alertas.aspx.cs" Inherits="Electron.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
    <title>SweetAlert Ejemplo - Evilnapsis</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="sweetalert/sweetalert2.min.css"/>
    <script type="text/javascript" src="sweetalert/sweetalert2.min.js" ></script>
</head>
<body>

        <div>
       <h1>Ejemplo de SweetAlert #1</h1>

    <button id="button1" class="btn btn-success">Opcion 1</button>
    <button id="button2" class="btn btn-warning">Opcion 2</button>
    <button id="button3" class="btn btn-danger">Opcion 3</button>
    <button id="button4" class="btn btn-danger">Opcion 4</button>
    <button id="button5" class="btn btn-danger">Opcion 5</button>
    <button id="button6" class="btn btn-danger">Opcion 6</button>


    <script type="text/javascript">
      
      $(document).ready(function(){

        //ALERTA DE CONFIRMACION
        $("#button1").click(function(){
          swal.fire({
            title: "¡Buen Trabajo!",
            text: "¡Se almaceno la información!",
            type: "success",
            allowOutsideClick: false,
          })
        });

        //ALERTA DE BORRADO
        $("#button2").click(function(){
          Swal.fire({
            title: '¿Estás seguro?',
            text: "¡No podrás revertir esto!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '¡Si, bórralo!',
            allowOutsideClick: false,
          }).then((result) => {
            if (result.value) {
              Swal.fire({
                title: 'Borrado',
                text:'Tu Archivo se ha borrado.',
                type:'success',
                allowOutsideClick: false,
              })
            }
          })

          
        });

        //ALERTA DE ERROR
        $("#button3").click(function(){
          swal.fire({
            title:'¡Error!',
            text:"¡Contacte al Administrador del Sistema!",
            type:'error',
            showConfirmButton: false,
            allowOutsideClick: false,
            timer: 2500,
            
          })
        });

        //ALERTA DE PREGUNTAS
        $("#button4").click(function(){
          Swal.mixin({
            input: 'text',
            confirmButtonText: 'Next &rarr;',
            showCancelButton: true,
            progressSteps: ['1', '2', '3'],
            allowOutsideClick: false,
          }).queue([
            {
              title: 'Pregunta 1',
              text: 'Chaining swal2 modals is easy'          
            },
            
            'Pregunta  2',        
            'Pregunta  3'

          ]).then((result) => {
            if (result.value) {
              Swal.fire({
                title: '¡Bien hecho!',
                html:
                  'Sus respuestas: <pre><code>' +
                    JSON.stringify(result.value) +
                  '</code></pre>',
                confirmButtonText: 'Lovely!',
                allowOutsideClick: false,
              })
            }
          })
        });

        //ALERTA DE CIRCULO DE PROGRESO
        $("#button5").click(function(){
          let timerInterval
          Swal.fire({
            title: '¡Espere por Favor!',
            timer: 5000,
            allowOutsideClick: false,
            onBeforeOpen: () => {

              Swal.showLoading()

              timerInterval = setInterval(() => {
                Swal.getContent().querySelector('strong')
                  .textContent = (Swal.getTimerLeft() / 1000)
                    .toFixed(0)
              }, 100)
            },
            onClose: () => {
              clearInterval(timerInterval)
            }
          })
        });

        //ALERTA PROGRESO ESTILO CIRCULO MAS CONFIRMACION
        $("#button6").click(function(){
          let timerInterval
          Swal.fire({
            title: '¡Espere por Favor!',
            timer: 20000,
            allowOutsideClick: false,
            onBeforeOpen: () => {

              Swal.showLoading()

              timerInterval = setInterval(() => {
                Swal.getContent().querySelector('strong')
                  .textContent = (Swal.getTimerLeft() / 1000)
                    .toFixed(0)
              }, 100)

            },
              onClose: () => {
              clearInterval(timerInterval),
              
              Swal.fire({
                title: "¡Buen Trabajo!",
                text: "¡Se almaceno la información!",
                type: "success",
                allowOutsideClick: false,
              })
            }           
          })
          
        });

      })
    </script>
        </div>

</body>
</html>
