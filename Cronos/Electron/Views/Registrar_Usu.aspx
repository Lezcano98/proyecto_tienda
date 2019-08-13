<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Inicio.Master" AutoEventWireup="true" CodeBehind="Registrar_Usu.aspx.cs" Inherits="Electron.Views.Registrar_Usu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                  <%-- REGISTAR USUARIOS--%>
      
            <div class="input-group">
              <input type="text" class="form-control border border-warning" placeholder="Buscar usuarios" aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <%--<button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>--%>
              </div>
            </div>
       

      <div class="container">
    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">AGREGAR UN USUARIO</h1>
              </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                   <asp:TextBox id="txtnombre"  type="text" class="form-control form-control-user" runat="server" placeholder="nombre"></asp:TextBox>
                  </div>
                  <div class="col-sm-6">
                    <asp:TextBox  id="txtapellido" type="text" class="form-control form-control-user" runat="server" placeholder="primer apellido"></asp:TextBox>
                  </div>        
                    <div class="col-sm-6">
                        <br>
                    <asp:TextBox Id="txtapellido2" type="text" class="form-control form-control-user" runat="server" placeholder=" segundo apellido"></asp:TextBox>
                  </div>
                    <div class="col-sm-6">
                        <br>
                    <asp:TextBox Id="txtcedula" class="form-control form-control-user" runat="server" placeholder="ingresar numero de cedula" TextMode="Number"></asp:TextBox>
                  </div>
                </div>
                <div class="form-group">
                  <asp:TextBox id="txtnombreUsu" type="text" class="form-control form-control-user" runat="server" placeholder="nombre de usuario"></asp:TextBox>
                </div>
                <div class="form-group">
                  <asp:TextBox  id="txtcorreo" type="email" class="form-control form-control-user" runat="server" placeholder="ingrese su correo"></asp:TextBox>
                </div>
                  <%-- dropdow para rol de suuario --%>
                        <div class="bg-white py-2 collapse-inner rounded"> Selecione Tipo de Usuario&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>ADMINISTRADOR </asp:ListItem>
                                <asp:ListItem>CLIENTE</asp:ListItem>
                            </asp:DropDownList>
                                </div>
                 
                  <%-- fin de la instrucion --%>
                <%--<div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="contrseña"/>
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="vuelva a ingresar la contrseña"/>
                  </div>
                </div>--%>
                <asp:Button class="btn btn-primary btn-user btn-block" ID="btnAceptar" runat="server" Text="INGRESAR" OnClick="btnAceptar_Click">     
                    </asp:Button>             
          </div>

 
</asp:Content>
