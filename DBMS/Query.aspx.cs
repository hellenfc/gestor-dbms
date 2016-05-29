using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Query : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        foreach (String nombre in DBMS.obtenerNombreBDs())
        {
            this.dwnBDConsultar.Items.Add(nombre);
        }
    }
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        this.txtQuery.Text = " ";
        this.grdResultados.DataSource = "";
        this.grdResultados.DataBind();
    }
    protected void btnVolver_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //char[] x = { ' ' };
        string consulta = this.txtQuery.Text.Trim();
        DataTable tblConsulta = DBMS.ejecutarConsulta(this.dwnBDConsultar.Text, consulta); //obtengo las filas de la consulta

        this.grdResultados.DataSource = tblConsulta;
        this.grdResultados.DataBind();
    }
}