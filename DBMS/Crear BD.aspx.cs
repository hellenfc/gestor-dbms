using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrearBD : System.Web.UI.Page
{
   // string directorio = AppDomain.CurrentDomain.BaseDirectory + "DataBase";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCrear_Click(object sender, EventArgs e)
    {
        DBMS.nuevaBaseDatos(this.txtNombreBD.Text);
        //DBMS.guardarBaseDatos();
    }
}