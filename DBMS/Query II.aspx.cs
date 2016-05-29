using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Query_II : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        this.txtValorCondicion.Text = " ";
        
    }

    protected void btnEjecutar_Click(object sender, EventArgs e)
    {
        string consulta="";

        consulta = consulta + this.dwnAccion.Text + " ";
    }
}