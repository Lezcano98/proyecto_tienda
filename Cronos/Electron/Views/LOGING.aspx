<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGING.aspx.cs" Inherits="Electron.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

     <script type="text/javascript" src="jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="sweetalert/sweetalert2.min.css">
    <script type="text/javascript" src="sweetalert/sweetalert2.min.js" ></script>

  <title>INGRESO AL SISTEMA</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary1">
    <form id="form1" runat="server">
        <div>
        <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">BIENVENIDO!</h1>
                  </div>
                  <form class="user">
                    <div class="form-group">
                     <asp:TextBox id="txtnombreusuario" class="form-control form-control-user" type="text" runat="Server" name="usuario" placeholder="ingrese su usuario" required=""> </asp:TextBox>
                    </div>
                    <div class="form-group">
                      
                         <asp:TextBox id="txtclave" class="form-control form-control-user" type="password" runat="Server" name="clave" placeholder="CONTRASEÑA" required=""> </asp:TextBox>
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">RECORDAR MI CONTRASEÑA</label>
                      </div>
                    </div>
                    <asp:Button class="btn btn-primary btn-user btn-block" ID="btningresar" runat="server" Text="INGRESAR" OnClick="btningresar_Click">     
                    </asp:Button>
                    <hr>
                    <a href="index.html" class="btn btn-google btn-user btn-block">
                     REGISTRARSE CON GOOGLE  <br><i class="fab fa-google fa-fw"></i> 
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                     REGISTRARSE CON FACEBOOK   <br><i class="fab fa-facebook-f fa-fw"></i>  
                    </a>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">OLVIDASTES TU CONTRASEÑA?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">CREAR UNA CUENTA</a>
                  </div>
                </div>
         

      </div>

    </div>

  </div> <%-- alerta de error --%>
             <script type="text/javascript">

                 function mensajeError() {
                     swal.fire({
                         title: '¡Error!',
                         text: "¡EL Usuario o la Contraseña son Incorrectos por favor Verifique!",
                         type: 'error',
                         showConfirmButton: false,
                         allowOutsideClick: false,
                         timer: 4000,

                     })
                 }
                 </script>
            
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
        </div>
    </form>
</body>
</html>
