<%@ Page Title="" Language="C#" MasterPageFile="~/Views/master2.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Electron.Views.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- links pra las alertas --%>
       <script type="text/javascript" src="jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="sweetalert/sweetalert2.min.css">
    <script type="text/javascript" src="sweetalert/sweetalert2.min.js" ></script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">MI PERFIL</h1>
              </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                   <asp:TextBox id="txtnombre"  type="text" class="form-control form-control-user" runat="server" placeholder="nombre"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnombre" ErrorMessage="Este campo es requerido">*</asp:RequiredFieldValidator>
                  </div>
                  <div class="col-sm-6">
                    <asp:TextBox  id="txtapellido" type="text" class="form-control form-control-user" runat="server" placeholder="primer apellido"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtapellido" ErrorMessage="Este campo es requerido">*</asp:RequiredFieldValidator>
                  </div>        
                    <div class="col-sm-6">
                    <asp:TextBox Id="txtapellido2" type="text" class="form-control form-control-user" runat="server" placeholder=" segundo apellido"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtapellido2" ErrorMessage="Debe llenar este campo">*</asp:RequiredFieldValidator>
                  </div>
                    <div class="col-sm-6">
                    <asp:TextBox Id="txtusuario" class="form-control form-control-user" runat="server" placeholder="Nombre de Usuario"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusuario" ErrorMessage="Este campo es requerido">*</asp:RequiredFieldValidator>
                  </div>
                </div>
                <div class="form-group">
                  <asp:TextBox id="txtclave" type="" class="form-control form-control-user" runat="server" placeholder="contraseña" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtclave" ErrorMessage="Este campo es requerido">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                  <asp:TextBox  id="txtnuevaclave" type="" class="form-control form-control-user" runat="server" placeholder="confirmar contraseña" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtclave" ControlToValidate="txtnuevaclave" ErrorMessage="las contraseñas no coinciden">*</asp:CompareValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtnuevaclave" ErrorMessage="Este campo es requerido">*</asp:RequiredFieldValidator>
                </div>
                  <%-- dropdow para rol de suuario --%>
                       <%-- <div class="bg-white py-2 collapse-inner rounded"> Selecione Tipo de Usuario&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>ADMINISTRADOR </asp:ListItem>
                                <asp:ListItem>CLIENTE</asp:ListItem>
                            </asp:DropDownList>
                                </div>--%>
                 
                  <%-- fin de la instrucion --%>
                <%--<div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="contrseña"/>
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="vuelva a ingresar la contrseña"/>
                  </div>
                </div>--%>
                <asp:Button class="btn btn-primary btn-user btn-block" ID="btnAceptar" runat="server" Text="ACTUALIZAR MIS DATOS" OnClick="btnAceptar_Click">     
                    </asp:Button>             
                    </div>

              <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
              <script type="text/javascript">

        // mensaje de error
                 function mensajeError() {
                     swal.fire({
                         title: '¡Error!',
                         text: "¡" + " El Este nombre de Usuario ya se se encuantra Registrado" + "!",
                         type: 'error',
                         showConfirmButton: false,
                         allowOutsideClick: false,
                         timer: 4000,

                     })
        }

        //mensaje de conrfimacion
        function mensajeDeconfirmacion() {
            swal.fire({
                title: "¡EXITO!",
                text: "¡"+"Sus Datos se Actuarlizaron con exito con EXITO"+"!",
                type: 'success',
                allowOutsideClick: false,
            })

        }
                 </script>

</asp:Content>