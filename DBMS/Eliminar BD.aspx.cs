using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Eliminar_BD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        foreach (String nombre in DBMS.obtenerNombreBDs())
        {
            this.dwnBDEliminar.Items.Add(nombre);
        }
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        DBMS.eliminarBaseDatos(this.dwnBDEliminar.SelectedItem.Text);
    }
}