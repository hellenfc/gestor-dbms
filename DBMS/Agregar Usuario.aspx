<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Agregar Usuario.aspx.cs" Inherits="Agregar_Usuario" %>

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
            width: 139px;
        }
        .auto-style3 {
            width: 129px;
        }
        .auto-style4 {
            width: 61px;
            text-align: center;
        }
        .auto-style5 {
            width: 65px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Nombre de usuario:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNombre1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Tipo de usuario:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="dwnTipo" runat="server">
                        <asp:ListItem Selected="True">Lectura</asp:ListItem>
                        <asp:ListItem>Inserción</asp:ListItem>
                        <asp:ListItem>Actualización</asp:ListItem>
                        <asp:ListItem>Borrado</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btnMenu" runat="server" PostBackUrl="~/Principal.aspx" Text="Menú" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
