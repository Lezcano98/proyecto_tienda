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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataFactura" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
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
                <br />
                
                <asp:SqlDataSource ID="SqlDataFactura" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="select d.Factura, c.Fecha, e.Nombre_Usuario as [Usuario que compra], a.Nombre_deArticulo as Articulo, d.Departamento, d.Descripcion_Articulo as Descripcion, d.Precio_Articulo as Precio, d.Cantidad, d.Descuento, d.Subtotal, d.IVA, d.total_pagar as[Total a Cancelar] from Pago_Factura d, Informacion_Factura c, Articulo a, Usuario e
where c.Numero_Factura=d.Factura
and a.Codigo_Articulo=d.Codigo_Articulo
and e.Codigo_Usuario=c.Usuario"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDatacliente" DataTextField="Usuario que compra" DataValueField="Factura">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDatacliente" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="select d.Factura, c.Fecha, e.Nombre_Usuario as [Usuario que compra], a.Nombre_deArticulo as Articulo, d.Departamento, d.Descripcion_Articulo as Descripcion, d.Precio_Articulo as Precio, d.Cantidad, d.Descuento, d.Subtotal, d.IVA, d.total_pagar as[Total a Cancelar] from Pago_Factura d, Informacion_Factura c, Articulo a, Usuario e
where c.Numero_Factura=d.Factura
and a.Codigo_Articulo=d.Codigo_Articulo
and e.Codigo_Usuario=c.Usuario"></asp:SqlDataSource>
                <br />
                <asp:Button ID="Bbusqueda" runat="server" OnClick="Bbusqueda_Click" Text="Buscar Factura" />
                <br />
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                
            </td>
            <td class="text-center">
                <br />
&nbsp;</td>
        </tr>
    </table>
</asp:Content>
