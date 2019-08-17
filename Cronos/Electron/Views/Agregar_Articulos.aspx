<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Inicio.Master" AutoEventWireup="true" CodeBehind="Agregar_Articulos.aspx.cs" Inherits="Electron.Views.Agregar_Consolas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" src="jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="sweetalert/sweetalert2.min.css">
    <script type="text/javascript" src="sweetalert/sweetalert2.min.js" ></script>
    <style type="text/css">
        .auto-style1 {
            width: 330px;
        }
        .auto-style2 {
            width: 330px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%--<table class="w-100">
        <tr>--%>
            <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="w-100">
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="Black" Text="Ingrese el nombre de el Articulo"></asp:Label>
                            :</td>
                        <td>
                <asp:TextBox ID="txtnombre_consola" runat="server" required=""></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Ingrese una imagen"></asp:Label>
                            :</td>
                        <td>
                <asp:FileUpload ID="flcargarArchivo" runat="server" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Ingrese el precio"></asp:Label>
                            :</td>
                        <td>
                <asp:TextBox ID="txtprecioconsola" runat="server" TextMode="Number" required=""></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Indique una descripcion de el Articulo"></asp:Label>
                            :</td>
                        <td>
                <asp:TextBox ID="txtdescripcion" runat="server" Height="29px" TextMode="MultiLine" Width="680px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" ForeColor="Black" Text=" Tipo de Articulo"></asp:Label>
                            :</td>
                        <td><asp:DropDownList ID="dp_tipo_articulo" runat="server" Height="26px" Width="141px">
                    <asp:ListItem Value="1">Consola</asp:ListItem>
                    <asp:ListItem Value="2">Video Juego</asp:ListItem>
                </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text="ingrese el codigo del articulo"></asp:Label>
                            :</td>
                        <td>
                <asp:TextBox ID="txtcodigoarticulo" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Numero del Departamento al cual se Ingresara"></asp:Label>
                            :</td>
                        <td>
                <asp:TextBox ID="txtNumero_Departamento" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="text-center">
                <asp:Button ID="btnIngresarC" runat="server" OnClick="btnIngresarC_Click" Text="Aceptar" Width="305px" />
                        </td>
                    </tr>
    </table>
&nbsp;</td><td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Articulo,Departamentos" DataSourceID="SqlDataarticulos" Height="16px" Width="349px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="Codigo_Articulo" HeaderText="Codigo Articulo" ReadOnly="True" SortExpression="Codigo_Articulo" />
                        <asp:BoundField DataField="Descripcion_articulo" HeaderText="Descripcion Articulo" SortExpression="Descripcion_articulo" />
                        <asp:BoundField DataField="Precio_articulo" HeaderText="Precio Articulo" SortExpression="Precio_articulo" />
                        <asp:BoundField DataField="nombre_deArticulo" HeaderText="Nombre Articulo" SortExpression="nombre_deArticulo" />
                        <asp:BoundField DataField="Tipo_Articulo" HeaderText="Tipo Articulo" SortExpression="Tipo_Articulo" />
                        <asp:BoundField DataField="Departamentos" HeaderText="Departamento" ReadOnly="True" SortExpression="Departamentos" />
                        <asp:TemplateField HeaderText="Imagen">
                                       <ItemTemplate>
                 <a href="#">
                    <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String ((byte [])Eval("Imagen")) %>' />
                 </a>
            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataarticulos" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="SELECT * FROM [Articulo]" DeleteCommand="delete Articulo where Codigo_Articulo = @Codigo_Articulo"></asp:SqlDataSource>
          <%--  </td>
        </tr>
    </table>--%>

    <script type="text/javascript">

        // mensaje de error
                 function mensajeError() {
                     swal.fire({
                         title: '¡Error!',
                         text: "¡" + "Por Favor Verifique que los codigos no esten DUPLICADOS y Que el NUMERO de Departamento EXISTA" + "!",
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
                text: "¡"+"Los Datos se Guardaron Con Exito"+"!",
                type: 'success',
                allowOutsideClick: false,
            })

        }
                 </script>



</asp:Content>
