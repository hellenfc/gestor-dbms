using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Agregar_Usuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //this.txtApellido1.Text = " ";
        //this.txtApellido2.Text = " ";
     
        this.txtNombre1.Text = "";
        //this.txtNombre2.Text = " ";
        this.txtContraseña.Text = "";

        //this.dwnTipo.Items.Add("Administrador");
    }


    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        Int32 id = DBMS.ultimoUsuario();
        string nombre=txtNombre1.Text.Trim();
        string contrasena = txtContraseña.Text;
        string tipo = dwnTipo.Text;
        DBMS.aregarUsuario(id, nombre, contrasena, tipo);
    }
}