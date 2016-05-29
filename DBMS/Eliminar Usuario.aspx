<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eliminar Usuario.aspx.cs" Inherits="Eliminar_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 223px;
        }
        .auto-style7 {
            width: 81px;
            text-align: right;
        }
        .auto-style8 {
            width: 69px;
            text-align: left;
        }
        .auto-style9 {
            width: 223px;
            height: 26px;
        }
        .auto-style10 {
            width: 81px;
            text-align: center;
            height: 26px;
        }
        .auto-style11 {
            width: 69px;
            text-align: center;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre de usuario a eliminar"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtEliminar" runat="server" Width="97px"></asp:TextBox>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnMenu" runat="server" PostBackUrl="~/Principal.aspx" style="text-align: left" Text="Menú" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
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
