<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Query.aspx.cs" Inherits="Query" %>

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
            width: 196px;
            text-align: right;
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
            <td class="auto-style4">
                <asp:Label ID="lblBD" runat="server" Text="Base de Datos:                         "></asp:Label>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
            </tr>
            <tr>
                <td>
                <asp:DropDownList ID="dwnBDConsultar" runat="server" Height="23px" style="text-align: center" Width="125px">
                </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Inserte nueva consulta"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtQuery" runat="server" Height="194px" TextMode="MultiLine" Width="648px"></asp:TextBox>
                    <asp:Button ID="btnEjecutar" runat="server" OnClick="Button1_Click" Text="Ejecutar" style="height: 26px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Resultados:"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:GridView ID="grdResultados" runat="server">
                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" style="text-align: center" Text="Limpiar" />
                            </td>
                            <td>
                                <asp:Button ID="btnMenu" runat="server" OnClick="btnVolver_Click" PostBackUrl="~/Principal.aspx" Text="Menu" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
