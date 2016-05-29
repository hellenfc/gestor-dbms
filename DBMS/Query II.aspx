<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Query II.aspx.cs" Inherits="Query_II" %>

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
            width: 122px;
            text-align: center;
        }
        .auto-style3 {
            width: 139px;
            text-align: center;
        }
        .auto-style9 {
            width: 96px;
            text-align: center;
        }
        .auto-style11 {
            width: 142px;
            text-align: center;
        }
        .auto-style13 {
            width: 352px;
        }
        .auto-style14 {
            width: 88px;
        }
        .auto-style16 {
            width: 166px;
        }
        .auto-style18 {
            width: 114px;
        }
        .auto-style20 {
            width: 69px;
            text-align: center;
        }
        .auto-style21 {
            width: 122px;
            text-align: center;
            height: 23px;
        }
        .auto-style22 {
            width: 139px;
            text-align: center;
            height: 23px;
        }
        .auto-style23 {
            width: 69px;
            text-align: center;
            height: 23px;
        }
        .auto-style24 {
            width: 96px;
            text-align: center;
            height: 23px;
        }
        .auto-style25 {
            width: 142px;
            text-align: center;
            height: 23px;
        }
        .auto-style26 {
            width: 88px;
            height: 23px;
        }
        .auto-style27 {
            width: 166px;
            height: 23px;
        }
        .auto-style28 {
            width: 114px;
            height: 23px;
        }
        .auto-style29 {
            width: 352px;
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                <asp:Label ID="lblBD" runat="server" Text="Base de Datos:                         "></asp:Label>
                </td>
                <td class="auto-style3">
                <asp:DropDownList ID="dwnBDEliminar" runat="server" Height="23px" style="text-align: center" Width="125px">
                </asp:DropDownList>
                </td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    
                    <asp:DropDownList ID="dwnAccion" runat="server">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>Insert</asp:ListItem>
                        <asp:ListItem>Update</asp:ListItem>
                        <asp:ListItem>Delete</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    
                    <asp:ListBox ID="lsbCamposSelec" runat="server" Height="70px"></asp:ListBox>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server" Text="from"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="dwnTabla1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="where"></asp:Label>
                    <asp:CheckBox ID="ckWhere" runat="server" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCondicion" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:DropDownList ID="dwnOperador" runat="server">
                        <asp:ListItem Selected="True">=</asp:ListItem>
                        <asp:ListItem>&gt;</asp:ListItem>
                        <asp:ListItem>&gt;=</asp:ListItem>
                        <asp:ListItem>&lt;</asp:ListItem>
                        <asp:ListItem>&lt;=</asp:ListItem>
                        <asp:ListItem>&lt;&gt;</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtValorCondicion" runat="server" Width="92px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
                <td class="auto-style25"></td>
                <td class="auto-style26"></td>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="btnEjecutar" runat="server" Text="Ejecutar" OnClick="btnEjecutar_Click" />
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
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
                            </td>
                            <td>
                            </td>
                        </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Limpiar" />
                </td>
                <td class="auto-style20">
                                <asp:Button ID="btnMenu" runat="server" PostBackUrl="~/Principal.aspx" Text="Menú" />
                            </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
