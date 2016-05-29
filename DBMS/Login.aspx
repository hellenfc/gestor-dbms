<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 136px;
        }
        .auto-style6 {
            height: 23px;
            width: 136px;
        }
        .auto-style7 {
            height: 110px;
            width: 136px;
        }
        .auto-style8 {
            text-align: center;
            width: 136px;
        }
        .auto-style12 {
            width: 127px;
        }
        .auto-style13 {
            width: 157px;
            text-align: right;
        }
        .auto-style16 {
            width: 6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#9999FF" BorderStyle="None" Height="193px" Width="400px">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style13">
                                    <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario:"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style13">
                                    <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="txtPass" runat="server" OnTextChanged="txtPass_TextChanged" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
