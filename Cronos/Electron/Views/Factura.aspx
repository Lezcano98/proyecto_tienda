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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDatafactura">
                    <Columns>
                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                        <asp:BoundField DataField="CodigoArticulo" HeaderText="CodigoArticulo" SortExpression="CodigoArticulo" />
                        <asp:BoundField DataField="PrecioArticulo" HeaderText="PrecioArticulo" SortExpression="PrecioArticulo" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        <asp:BoundField DataField="Descuento" HeaderText="Descuento" SortExpression="Descuento" />
                        <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
                        <asp:BoundField DataField="IVA" HeaderText="IVA" SortExpression="IVA" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDatafactura" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="select a.Usuario, a.Fecha, b.Codigo_Articulo as CodigoArticulo, b.Precio_Articulo as PrecioArticulo, 
b.Cantidad, b.Descuento, b.Subtotal, b.IVA, b.total_pagar as Total from Informacion_Factura a, Pago_Factura b"></asp:SqlDataSource>
            </td>
            <td class="text-center">
                <asp:Image ID="Image1" runat="server" Height="275px" ImageUrl="~/Views/img/WhatsApp Image 2019-08-16 at 8.21.05 PM.jpeg" Width="334px" />
                <br />
                <asp:Label ID="lblusuno" runat="server" Text="Gracias por su Compra:"></asp:Label>
&nbsp;<asp:Label ID="lblusuarios" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
