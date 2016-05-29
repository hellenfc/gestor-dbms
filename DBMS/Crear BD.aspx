<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Crear BD.aspx.cs" Inherits="CrearBD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
            width: 188px;
        }
        .auto-style6 {
            height: 23px;
            width: 206px;
            text-align: center;
        }
        .auto-style7 {
            width: 49px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
            <td class="auto-style4">
                <asp:Label ID="lblBD" runat="server" Text="Nombre de la Base de Datos:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtNombreBD" runat="server"></asp:TextBox>
            </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" />
                </td>
                <td>
                    <asp:Button ID="btnMenu" runat="server" PostBackUrl="~/Principal.aspx" Text="Menú" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
