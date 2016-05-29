using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtPass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        if (DBMS.login(txtNombreUsuario.Text.Trim(), txtPass.Text))
        {
            Response.Redirect("Principal.aspx");
        }
        else
        {
            this.Page.Response.Write("<script language='JavaScript'>window.alert('Usuario o contraseña incorrecta');</script>");

        }
    }
}