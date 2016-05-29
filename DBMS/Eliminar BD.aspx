<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eliminar BD.aspx.cs" Inherits="Eliminar_BD" %>

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
            width: 81px;
            text-align: center;
            height: 28px;
        }
        .auto-style8 {
            width: 69px;
            text-align: left;
            height: 28px;
        }
        .auto-style9 {
            width: 188px;
        }
        .auto-style10 {
            width: 188px;
            height: 28px;
        }
        .auto-style12 {
            height: 28px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
            <td class="auto-style4">
                <asp:Label ID="lblBD" runat="server" Text="Base de Datos a eliminar :                         "></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="dwnBDEliminar" runat="server" Height="23px" style="text-align: center" Width="125px">
                </asp:DropDownList>
            </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style12"></td>
                <td class="auto-style7">
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnMenu" runat="server" PostBackUrl="~/Principal.aspx" style="text-align: left" Text="Menú" />
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
