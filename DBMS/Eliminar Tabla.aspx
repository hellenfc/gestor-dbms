<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eliminar Tabla.aspx.cs" Inherits="Eliminar_Tabla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 155px;
        }
        .auto-style5 {
            width: 206px;
            text-align: center;
        }
        .auto-style7 {
            width: 81px;
            text-align: center;
        }
        .auto-style8 {
            width: 69px;
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
            <td class="auto-style3">
                Base de datos de origen:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="dwnBDO" runat="server" Height="19px" Width="122px">
                </asp:DropDownList>
            </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
            <td class="auto-style3">
                <asp:Label ID="lblNombreTabla" runat="server" Text="Nombre de la tabla a eliminar:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:ListBox ID="lstTabla" runat="server" Width="137px"></asp:ListBox>
            </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnMenu" runat="server" PostBackUrl="~/Principal.aspx" style="text-align: left" Text="Menú" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
