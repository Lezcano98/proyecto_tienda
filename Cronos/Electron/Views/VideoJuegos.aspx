<%@ Page Title="" Language="C#" MasterPageFile="~/Views/master2.Master" AutoEventWireup="true" CodeBehind="VideoJuegos.aspx.cs" Inherits="Electron.Views.Consolas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 257px;
        }
        .auto-style2 {
            width: 100%;
            height: 1636px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style2">
        <tr>
            <div class="input-group">
              <asp:TextBox ID="txtbuscar" runat="server"  OnTextChanged="txtbuscar_TextChanged" type="text" class="form-control border border-warning" placeholder="Buscar video juego" aria-label="Search" aria-describedby="basic-addon2"></asp:TextBox>
               
              <div class="input-group-append">
                <%--<button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>--%>
              </div>
            </div>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataVideoJuegos" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Imagen">
                             <ItemTemplate>
                 <a href="#" data-toggle="modal" data-target="#exampleModal">
                    <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String ((byte [])Eval("Imagen")) %>' />
                 </a>
            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                 
                  
                <asp:Label ID="lbl_estado" runat="server"></asp:Label>
                
                <asp:SqlDataSource ID="SqlDataVideoJuegos" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="select Descripcion_articulo as Descripcion,Precio_articulo as Precio,imagen as Imagen,nombre_deArticulo as Nombre,Codigo_Articulo as codigo from Articulo where Tipo_Articulo=2"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

<%--                                <%-- creacion de la ventana modal --%>
    <!-- Button trigger modal -->
<%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Comprar
</button>--%>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">¿Desea Comprar este Articulo?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Ingrese la cantidad: <asp:TextBox ID="txtcantidad" runat="server"></asp:TextBox>
      </div>
      <div class="modal-footer">
          <asp:Button ID="btningresar" runat="server" OnClick="btningresar_Click" Text="Comprar Articulo" class="btn btn-primary"/>
       <%-- <button type="button" class="btn btn-primary" data-dismiss="modal">Comprar</button>--%>
          <%--data-dismiss="modal"--%>
        <button type="button" class="btn btn-secondary" >Cancelar</button>
      </div>
    </div>
  </div>
</div>
<%-- fin de la ventana modal  --%>


</asp:Content>
