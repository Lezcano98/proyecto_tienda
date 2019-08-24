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
                <asp:GridView ID="Gridfactura" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
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
                <asp:TextBox ID="txtbuscar" runat="server" Width="281px" AutoPostBack="True" OnTextChanged="txtbuscar_TextChanged"></asp:TextBox>
                <br />
                
                <br />
                <asp:Button ID="Bbusqueda" runat="server" OnClick="Bbusqueda_Click" Text="Buscar Factura" Width="195px" />
                <br />
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                
            </td>
            <td class="text-center">
                <br />
&nbsp;</td>
        </tr>
    </table>
</asp:Content>
