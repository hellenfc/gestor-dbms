using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Usuario
/// </summary>
public class Usuario
{
    private int IdUsuario { get; set; }
    private string nombreUsuario { get; set; }
    //private string SNombre { get; set; }
    //private string PApell { get; set; }
    //private string SApell { get; set; }
    //private string TipoUsuario { get; set; }
    private string Contrasenia { get; set; }

	public Usuario(int id, string nombreUsuario, string pass, string tipoUsuario)
	{
        this.IdUsuario = id;
        this.nombreUsuario = nombreUsuario;
        //this.SNombre = sname;
        //this.PApell = papell;
        //this.SApell = sapell;
        //this.TipoUsuario = tipo;
        this.Contrasenia = pass;
	}
}