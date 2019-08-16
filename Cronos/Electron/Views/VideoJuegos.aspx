<%@ Page Title="" Language="C#" MasterPageFile="~/Views/master2.Master" AutoEventWireup="true" CodeBehind="VideoJuegos.aspx.cs" Inherits="Electron.Views.Consolas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 257px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataVideoJuegos">
                    <Columns>
                        <asp:TemplateField HeaderText="Imagen">
             <ItemTemplate>
                 <a href="#" <%--data-toggle="modal" data-target="#exampleModal"--%>>
                    <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String ((byte [])Eval("Imagen")) %>' />
                 </a>
            </ItemTemplate>
                        </asp:TemplateField>


                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataVideoJuegos" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="select Descripcion_articulo as Descripcion,Precio_articulo as Precio,imagen as Imagen,nombre_deArticulo as Nombre from Articulo where Tipo_Articulo=2"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

                                <%-- creacion de la ventana modal --%>
    <!-- Button trigger modal -->
<%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Comprar
</button>--%>
<!-- Modal -->
<%--<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Desea Comprar este Articulo?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Ingrese la cantidad: <asp:TextBox ID="txtcantidad" runat="server"></asp:TextBox>
      </div>
      <div class="modal-footer">
          <asp:Button ID="btncomprar" runat="server" OnClick="btncomprar_Click" Text="Comprar" class="btn btn-primary" data-dismiss="modal" />
        <%--<button type="button" class="btn btn-primary" data-dismiss="modal">Comprar</button>--%>
        <button type="button" class="btn btn-secondary" >Cancelar</button>
      </div>
    </div>
  </div>
</div>--%>
<%-- fin de la ventana modal  --%>


</asp:Content>
