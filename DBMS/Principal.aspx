<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Principal.aspx.cs" Inherits="Principal" %>

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
            width: 49px;
            text-align: center;
        }
        .auto-style5 {
            width: 49px;
            margin-left: 40px;
        }
        .auto-style7 {
            width: 49px;
            text-align: center;
            height: 30px;
        }
        .auto-style14 {
            width: 171px;
        }
        .auto-style15 {
            text-align: center;
            width: 171px;
        }
        .auto-style16 {
            height: 23px;
            width: 171px;
        }
        .auto-style17 {
            height: 30px;
            width: 171px;
        }
        .auto-style27 {
            height: 30px;
            text-align: left;
            width: 84px;
        }
        .auto-style31 {
            width: 49px;
            margin-left: 40px;
            height: 23px;
        }
        .auto-style33 {
            text-align: left;
            width: 84px;
        }
        .auto-style35 {
            width: 49px;
        }
        .auto-style38 {
            width: 130px;
        }
        .auto-style39 {
            text-align: center;
            width: 130px;
        }
        .auto-style40 {
            height: 23px;
            width: 130px;
        }
        .auto-style41 {
            height: 30px;
            width: 130px;
        }
        .auto-style42 {
            width: 84px;
        }
        .auto-style43 {
            width: 49px;
            margin-left: 40px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">
                    &nbsp;</td>
                <td class="auto-style38">Menú Principal</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Login.aspx" Text="Cerrar Sesión" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">
                    </td>
                <td class="auto-style41">
                    <asp:Button ID="btnCrearBD" runat="server" PostBackUrl="~/Crear BD.aspx" Text="Crear Base de Datos" Width="184px" OnClick="btnCrearBD_Click" />
                </td>
                <td class="auto-style27">
                    <asp:Button ID="btnQuery" runat="server" PostBackUrl="~/Query II.aspx" Text="Nueva Consulta Asistente" OnClick="btnQuery_Click" />
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style40"></td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style38">
                    <asp:Button ID="btnCrearTabla" runat="server" PostBackUrl="~/Crear Tabla.aspx" Text="Crear nueva tabla" OnClick="btnCrearTabla_Click" />
                </td>
                <td class="auto-style33">
                    <asp:Button ID="btnQuery0" runat="server" PostBackUrl="~/Query.aspx" Text="Nueva Consulta Script" />
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style38">
                    <asp:Button ID="btnEliminarBD" runat="server" Text="Eliminar Base de Datos" PostBackUrl="~/Eliminar BD.aspx" />
                </td>
                <td class="auto-style33">
                    <asp:Button ID="btnAgregarUser" runat="server" Text="Agregar Usuario" PostBackUrl="~/Agregar Usuario.aspx" />
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style38">
                    <asp:Button ID="btnEliminarTabla" runat="server" Text="Eliminar tabla" PostBackUrl="~/Eliminar Tabla.aspx" />
                </td>
                <td class="auto-style33">
                    <asp:Button ID="btnEliminarUser" runat="server" Text="Eliminar Usuario" PostBackUrl="~/Eliminar Usuario.aspx" />
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style27"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
