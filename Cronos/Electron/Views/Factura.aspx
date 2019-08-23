<%@ Page Title="" Language="C#" MasterPageFile="~/Views/master2.Master" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="Electron.Views.Factura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 196px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataFactura">
                    <Columns>
                        <asp:BoundField DataField="Factura" HeaderText="Factura" InsertVisible="False" ReadOnly="True" SortExpression="Factura" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                        <asp:BoundField DataField="Usuario que compra" HeaderText="Usuario que compra" SortExpression="Usuario que compra" />
                        <asp:BoundField DataField="Articulo" HeaderText="Articulo" SortExpression="Articulo" />
                        <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        <asp:BoundField DataField="Descuento" HeaderText="Descuento" SortExpression="Descuento" />
                        <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
                        <asp:BoundField DataField="IVA" HeaderText="IVA" SortExpression="IVA" />
                        <asp:BoundField DataField="Total a Cancelar" HeaderText="Total a Cancelar" SortExpression="Total a Cancelar" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataFactura" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="select d.Factura, c.Fecha, e.Nombre_Usuario as [Usuario que compra], a.Nombre_deArticulo as Articulo, d.Departamento, d.Descripcion_Articulo as Descripcion, d.Precio_Articulo as Precio, d.Cantidad, d.Descuento, d.Subtotal, d.IVA, d.total_pagar as[Total a Cancelar] from Pago_Factura d, Informacion_Factura c, Articulo a, Usuario e
where c.Numero_Factura=d.Factura
and a.Codigo_Articulo=d.Codigo_Articulo
and e.Codigo_Usuario=c.Usuario"></asp:SqlDataSource>
                
                <br />
                <br />
                <asp:Button ID="btnbuscar_factura" runat="server" OnClick="btnbuscar_factura_Click" Text="BUSCAR" />
                <br />
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                <br />
                <br />
            </td>
            <td class="text-center">
                <asp:Image ID="Image1" runat="server" Height="275px" ImageUrl="~/Views/img/WhatsApp Image 2019-08-16 at 8.21.05 PM.jpeg" Width="334px" />
                <br />
&nbsp;</td>
        </tr>
    </table>
</asp:Content>
