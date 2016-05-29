<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Crear Tabla.aspx.cs" Inherits="CrearTabla" %>

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
            height: 23px;
        }
        .auto-style3 {
            width: 155px;
        }
        .auto-style4 {
            height: 23px;
            width: 155px;
        }
        .auto-style5 {
            width: 145px;
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
            width: 145px;
            text-align: center;
        }
        .auto-style7 {
            width: 76px;
            text-align: center;
        }
        .auto-style8 {
            height: 23px;
            width: 76px;
        }
        .auto-style10 {
            width: 69px;
        }
        .auto-style11 {
            height: 23px;
            width: 69px;
        }
        .auto-style12 {
            width: 69px;
            text-align: center;
        }
        .auto-style13 {
            width: 92px;
            text-align: center;
        }
        .auto-style14 {
            height: 23px;
            width: 92px;
            text-align: center;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
            width: 84px;
        }
        .auto-style19 {
            width: 84px;
        }
        .auto-style20 {
            height: 23px;
            width: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1" id="tblFrm">
        <tr>
            <td class="auto-style3">
                Base de Datos:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="dwnBD" runat="server" Height="23px" style="text-align: center" Width="125px">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                Nombre de la Tabla:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtNombreTabla" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style11"></td>
            <td class="auto-style14"></td>
            <td class="auto-style20"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblCampo" runat="server" Text="Campo"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="PK"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label2" runat="server" Text="FK"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" Text="Tamaño"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:Label ID="Label4" runat="server" Text="Not null"></asp:Label>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtCampo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="dwnTipo" runat="server" Height="23px" style="margin-left: 0px" Width="114px">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:CheckBox runat="server" ID="ckPK" />
            </td>
            <td class="auto-style10" style="text-align: center">
                <asp:CheckBox ID="ckFK" runat="server" />
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" Width="29px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CheckBox ID="ckNull" runat="server" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtCampo0" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="dwnTipo0" runat="server" Height="23px" style="margin-left: 0px" Width="114px">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:CheckBox runat="server" ID="ckPK0" />
            </td>
            <td class="auto-style10" style="text-align: center">
                <asp:CheckBox ID="ckFK0" runat="server" />
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox2" runat="server" Width="29px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CheckBox ID="ckNull0" runat="server" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtCampo1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="dwnTipo1" runat="server" Height="23px" style="margin-left: 0px" Width="114px">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:CheckBox runat="server" ID="ckPK1" />
            </td>
            <td class="auto-style10" style="text-align: center">
                <asp:CheckBox ID="ckFK1" runat="server" />
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox3" runat="server" Width="29px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CheckBox ID="ckNull1" runat="server" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtCampo2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="dwnTipo2" runat="server" Height="23px" style="margin-left: 0px" Width="114px">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:CheckBox runat="server" ID="ckPK2" />
            </td>
            <td class="auto-style10" style="text-align: center">
                <asp:CheckBox ID="ckFK2" runat="server" />
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox4" runat="server" Width="29px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CheckBox ID="ckNull2" runat="server" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtCampo3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="dwnTipo3" runat="server" Height="23px" style="margin-left: 0px" Width="114px">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:CheckBox runat="server" ID="ckPK3" />
            </td>
            <td class="auto-style10" style="text-align: center">
                <asp:CheckBox ID="ckFK3" runat="server" />
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox5" runat="server" Width="29px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CheckBox ID="ckNull3" runat="server" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtCampo4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="dwnTipo4" runat="server" Height="23px" style="margin-left: 0px" Width="114px">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:CheckBox runat="server" ID="ckPK4" />
            </td>
            <td class="auto-style10" style="text-align: center">
                <asp:CheckBox ID="ckFK4" runat="server" />
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox6" runat="server" Width="29px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CheckBox ID="ckNull4" runat="server" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btnCrear" runat="server" Text="Crear" />
            </td>
            <td class="auto-style10">
                <asp:Button ID="btnMenu" runat="server" PostBackUrl="~/Principal.aspx" Text="Menu" />
            </td>
            <td class="auto-style13">
                <asp:Button ID="btnOtroCampo" runat="server" OnClick="btnOtroCampo_Click" Text="Otro Campo" />
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
