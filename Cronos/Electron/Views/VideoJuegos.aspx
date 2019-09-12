<%@ Page Title="" Language="C#" MasterPageFile="~/Views/master2.Master" AutoEventWireup="true" CodeBehind="VideoJuegos.aspx.cs" Inherits="Electron.Views.Consolas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -webkit-box-align: stretch;
            -ms-flex-align: stretch;
            align-items: stretch;
            width: 100%;
            left: 0px;
            top: 0px;
            height: 218px;
        }
        .auto-style2 {
            width: 100%;
            height: 77px;
        }
        .auto-style3 {
            width: 498px;
            margin-left: 40px;
        }
        .auto-style4 {
            width: 143px;
        }
    </style>
  
    <%-- para el carrusel --%>


  
    <%-- fin de los links --%>



     <script type="text/javascript" src="jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="sweetalert/sweetalert2.min.css"/>
    <script type="text/javascript" src="sweetalert/sweetalert2.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="auto-style1">
                             <div class="input-group-append">
                                 <table class="auto-style2">
                                     <tr>
                                         <td class="text-center">
                 
  
                                             <br />
                                             <table class="w-100">
                                                 <tr>
                                                     <td class="auto-style4">&nbsp;</td>
                                                     <td class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="260px" Width="685px" DataSourceID="SqlDataVideoJuegos">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Imagen">
                             <ItemTemplate>
                 <a href="#">
                    <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String ((byte [])Eval("Imagen")) %>' />
                 </a>
            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />

                          <asp:TemplateField>
                         <ItemTemplate>
                           
                      <asp:Button ID="btnvermodal" runat="server" OnClick="btnvermodal_Click" Text="Ver Articulo" />
       
                            
                       </ItemTemplate>
                       </asp:TemplateField>
             
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                 
                  
                                                     </td>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                             </table>
                                             <table class="w-100">
                                                 <tr>
                                                     <td>&nbsp;</td>
                                                     <td>
                 
                  
                                   <asp:Label ID="lbl_estado" runat="server"></asp:Label>
                
                                                     </td>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                             </table>
                                                     
                                             <div id="owl-example" class="owl-carousel">
                                             <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDatacarousel">
                                                 <Itemtemplate>

                                                     <div class="contenido">
                                                         <img src='<%#"data:Image/png;base64,"+Convert.ToBase64String ((byte [])Eval("Imagen")) %>' />

                                                     </div>

                                                 </Itemtemplate>

                                             </asp:Repeater>
                                                 
                                             <asp:SqlDataSource ID="SqlDatacarousel" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="select imagen from Articulo where Tipo_Articulo=2"></asp:SqlDataSource>
                                                     </div>                                                                                                                                                                                                                                                                                                                                  
                                            <br />
                                         </td>
                                     </tr>
                                 </table>
              </div>
            </div>
            <td class="auto-style1">
                 
                  
                <asp:SqlDataSource ID="SqlDataVideoJuegos" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="select Descripcion_articulo as Descripcion,Precio_articulo as Precio,imagen as Imagen,nombre_deArticulo as Nombre,Codigo_Articulo as codigo from Articulo where Tipo_Articulo=2"></asp:SqlDataSource>
            <%--</td>
        </tr>
    </table>--%>

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
        Ingrese la cantidad: <asp:TextBox ID="txtcantidad" runat="server"></asp:TextBox><br>

          Descripcion:<asp:TextBox ID="txtdescripcion" runat="server" ReadOnly="True"></asp:TextBox><br>
          Precio:<asp:TextBox ID="txtprecio" runat="server" ReadOnly="True"></asp:TextBox><br>
          Codigo:<asp:TextBox ID="txtcodigo" runat="server" ReadOnly="True"></asp:TextBox><br>

      <div class="modal-footer">
          <asp:Button ID="btningresar" runat="server" OnClick="btningresar_Click" Text="Comprar Articulo" class="btn btn-primary" />
       <%-- <button type="button" class="btn btn-primary" data-dismiss="modal">Comprar</button>--%>
          <%--data-dismiss="modal"--%>
        <button type="button" class="btn btn-secondary"  data-dismiss="modal">Cancelar</button>
      </div>
    </div>
  </div>
</div>
   </div>

<%-- fin de la ventana modal  --%>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:Content>
