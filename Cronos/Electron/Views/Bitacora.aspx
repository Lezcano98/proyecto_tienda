<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Inicio.Master" AutoEventWireup="true" CodeBehind="Bitacora.aspx.cs" Inherits="Electron.Views.Bitacora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataBitacora" Width="778px">
                    <Columns>
                        <asp:BoundField DataField="consecutivo_Entrada" HeaderText="Registro" SortExpression="consecutivo_Entrada" />
                        <asp:BoundField DataField="Descripcion_Articulo" HeaderText="Descripcion" SortExpression="Descripcion_Articulo" />
                        <asp:BoundField DataField="Precio_Articulo" HeaderText="Precio del Articulo" SortExpression="Precio_Articulo" />
                        <asp:BoundField DataField="nombre_deArticulo" HeaderText="Articulo" SortExpression="nombre_deArticulo" />
                        <asp:BoundField DataField="Id_Departamento" HeaderText="Departamento" SortExpression="Id_Departamento" />
                        <asp:BoundField DataField="Fecha_Transaccion" HeaderText="Fecha de Transaccion" SortExpression="Fecha_Transaccion" />
                        <asp:BoundField DataField="Tipo_Transaccion" HeaderText="Tipo de Transaccion" SortExpression="Tipo_Transaccion" />
                        <asp:BoundField DataField="tabla" HeaderText="Tabla de Incesion" SortExpression="tabla" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataBitacora" runat="server" ConnectionString="<%$ ConnectionStrings:ELECTRONConnectionString %>" SelectCommand="SELECT * FROM [Bitacora]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
