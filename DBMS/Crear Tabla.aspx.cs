using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrearTabla : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        foreach (String nombre in DBMS.obtenerNombreBDs())
        {
            this.dwnBD.Items.Add(nombre);
        }
     
    }

    protected void btnOtroCampo_Click(object sender, EventArgs e)
    {
        this.txtCampo.Text = " ";
        this.txtCampo0.Text = " ";
        this.txtCampo1.Text = " ";
        this.txtCampo2.Text = " ";
        this.txtCampo3.Text = " ";
        this.txtCampo4.Text = " ";
        this.TextBox1.Text = " ";
        this.TextBox2.Text = " ";
        this.TextBox3.Text = " ";
        this.TextBox4.Text = " ";
        this.ckFK.Checked = false;
        this.ckFK0.Checked = false;
        this.ckFK1.Checked = false;
        this.ckFK2.Checked = false;
        this.ckFK3.Checked = false;
        this.ckFK4.Checked = false;
        this.ckPK.Checked = false;
        this.ckPK0.Checked = false;
        this.ckPK1.Checked = false;
        this.ckPK2.Checked = false;
        this.ckPK3.Checked = false;
        this.ckPK4.Checked = false;
        this.ckNull.Checked = false;
        this.ckNull0.Checked = false;
        this.ckNull1.Checked = false;
        this.ckNull2.Checked = false;
        this.ckNull3.Checked = false;
        this.ckNull4.Checked = false;

    }

    protected void gv1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

   /* public class Atributo
    {
        public string Campo { set; get; }
        public string Tipo { set; get; }
        public int Tamaño { set; get; }
        public bool Null { set; get; }

        public Atributo()
        {
            Campo = "";
            Tipo = "";
        }
    }*/
}