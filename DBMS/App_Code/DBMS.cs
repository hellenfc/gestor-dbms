using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DBMS
/// </summary>
public static class DBMS
{
	//
	// TODO: Agregar aquí la lógica del constructor
	//
    public static DataSet baseDatos;
    public static string directorio = AppDomain.CurrentDomain.BaseDirectory + "DataBase"; //establece el directorio desde donde se ejecuta la aplicacion (donde se guardan las BDs)
    public static string fileName;
    public static ArrayList nombresBDs = obtenerNombreBDs();
    public static DataSet masterBD;
    public static Usuario usuario;


    //agrega un usuario al sistema
    public static void aregarUsuario(int id, string nombre, string contrasena, string tipo)
    {
        DataRow r = masterBD.Tables["Usuarios"].NewRow();
        r["idUsuario"] = id;
        r["nombreUsuario"] = nombre;
        r["contrasena"] = contrasena;
        r["tipoUsuario"] = tipo;
        masterBD.Tables["Usuarios"].Rows.Add(r);

        masterBD.WriteXml(directorio + "\\DatosSistema\\nombresBD.xml", XmlWriteMode.WriteSchema);
    }

    //recibe el nombre de ususario y contraseña para validar que sea un usuario correcto
    public static bool login(string nombreUsuario, string contrasena)
    {
        bool b = false;
        DataTable usuarios = masterBD.Tables["Usuarios"];
        DataRow[] r = usuarios.Select("nombreUsuario='" + nombreUsuario + "'");
        if (r.Length > 0)
            if (r[0]["contrasena"].Equals(contrasena))
                b = true;
        if (b)
        {
            int idUsuario =(int) r[0]["idUsuario"];
            string tipoUsuario = (string) r[0]["tipoUsuario"];
            usuario = new Usuario(idUsuario, nombreUsuario, contrasena, tipoUsuario);
        }
        return b;
    }

//obtiene todos los nombres de las bases de datos y los almacena en nombresBDs
    public static ArrayList obtenerNombreBDs()
    {
        //Recuperando la base de datos con los nombres de las BDs del usuario
        ArrayList lista = new ArrayList();
        masterBD = new DataSet();
        masterBD.DataSetName = "nombresBD";
        masterBD.ReadXml(directorio + "\\DatosSistema\\nombresBD.xml", XmlReadMode.Auto);

        //almacenando los nombres en la lista
        DataTable baseDatos = masterBD.Tables["basesDatos"];
        foreach (DataRow r in baseDatos.Rows)
        {
            lista.Add(r["nombreBD"]);
            //Console.WriteLine("1");
        }

        return lista;
    }

    /*public DBMS()
    {
        baseDatos = new DataSet();
        directorio = AppDomain.CurrentDomain.BaseDirectory + "DataBase";
    }*/

    public static void nuevaBaseDatos(string nombre)
    {
        //guardando la BD en un archivo xml
        baseDatos = new DataSet();
        baseDatos.DataSetName = nombre;
        fileName = nombre + ".xml";
        baseDatos.WriteXml(directorio + "\\" + fileName, XmlWriteMode.WriteSchema);

        //guardando la nueva BD en la BD del sistema
        obtenerNombreBDs();
        DataRow r = masterBD.Tables["basesDatos"].NewRow();
        r["nombreBD"] = nombre;
        masterBD.Tables["basesDatos"].Rows.Add(r);
        masterBD.WriteXml(directorio + "\\DatosSistema\\nombresBD.xml", XmlWriteMode.WriteSchema);
    }

    public static void eliminarBaseDatos(string nombre)
    {
        //borrando las BD seleccionada de la BD del Sistema
        DataRow r = masterBD.Tables["basesDatos"].Rows.Find(nombre);
        masterBD.Tables["basesDatos"].Rows.Remove(r);
        masterBD.WriteXml(directorio + "\\DatosSistema\\nombresBD.xml", XmlWriteMode.WriteSchema);

        //borrando el archivo del disco
        File.Delete(directorio + "\\" + nombre + ".xml");
    }

    public static DataTable ejecutarConsulta(string nombreBDConsultar, string script)
    {
        DataTable tablaConsulta = new DataTable();
        DataRow[] filasConsulta=null;

        baseDatos = new DataSet();
        baseDatos.DataSetName = nombreBDConsultar;
        baseDatos.ReadXml(directorio + "\\" + nombreBDConsultar + ".xml");

        //separando el script
        char[] delimiterChars = { ' ', '\n' };
        string[] scriptSeparado = script.Split(delimiterChars); //separa el script en cada espacio o salto de linea que encuentra
        switch (scriptSeparado[0].ToUpper())
        {
            case "SELECT" :
                filasConsulta = select(scriptSeparado);
                char[] delimiterCharsC = { ',' };
                string[] nombreCampos = scriptSeparado[1].Split(delimiterCharsC); //separa los nombres de los campos en cada coma que encuentra
                if (filasConsulta.Length == 0) //si no se encontraron resultados
                {
                    tablaConsulta = baseDatos.Tables[scriptSeparado[3]].Clone();
                }
                else
                {
                    tablaConsulta = filasConsulta[0].Table.Clone();
                    filasConsulta.CopyToDataTable(tablaConsulta, LoadOption.PreserveChanges);
                    tablaConsulta = proyectar(tablaConsulta, nombreCampos);
                }
                break;
            case "INSERT":
                //filasConsulta = insert(scriptSeparado);
                //tablaConsulta = filasConsulta.CopyToDataTable();
                insert(scriptSeparado);
                tablaConsulta = baseDatos.Tables[scriptSeparado[2]].Copy();
                break;
            case "UPDATE":
                string nombreTabla = scriptSeparado[1];
                update(scriptSeparado);
                tablaConsulta = baseDatos.Tables[nombreTabla].Copy();
                break;
            case "DELETE":
                delete(scriptSeparado);
                tablaConsulta = baseDatos.Tables[scriptSeparado[2]].Copy();
                break;
            case "CREATE":
                tablaConsulta = create(script);
                break;
            case "DROP":
                drop(scriptSeparado);
                break;
            default:

                break;
        }

         //separando los campos
       
        return tablaConsulta;
    }

    private static void drop(string[] script)
    {
        if (script[1].ToUpper().Equals("TABLE"))
        {
            string nombreTabla = script[2];
            baseDatos.Tables.Remove(nombreTabla);
            baseDatos.WriteXml(directorio + "\\" + baseDatos.DataSetName + ".xml", XmlWriteMode.WriteSchema);
        }
        else if (script[1].ToUpper().Equals("DATABASE"))
        {
            string nombreBD = script[2];
            eliminarBaseDatos(nombreBD);
            
        }
        
    }

    private static DataTable create(string script)
    {
        List<DataRelation> relaciones = new List<DataRelation>();
        List<string> nombreRelacion = new List<string>();
        List<string> nombreCampoHija = new List<string>();
        List<string> nombreTablaPadre = new List<string>();
        List<string> nombreCampoPadre = new List<string>();

                     
        DataTable tablaNueva = new DataTable();
        //separando donde encuentra parentesis
        char[] delimiterCharsC = { '(', ')' };
        string[] script1 = script.Split(delimiterCharsC);

        //separando la sintaxis CREATE TABLE nombreTabla o CREATE DATABASE nombreBD
        char[] delimiterE = { ' ' };
        string[] script2 = script1[0].Split(delimiterE);

        if (script2[1].ToUpper().Equals("TABLE"))
        {
            //separando los campos
            char[] delimiterCampos = { ',' };
            string[] scriptCampos = script1[1].Split(delimiterCampos);

            string nombreTabla = script2[2];
            tablaNueva.TableName = nombreTabla;

            DataColumn c = new DataColumn();

            foreach (string e in scriptCampos)
            {
                string[] camposConTipo = e.Split(delimiterE);
                string nombreCampo = camposConTipo[0];
                string tipoCampo = camposConTipo[1];

                //Estableciendo las llaves primarias
                if (nombreCampo.ToUpper().Equals("PRIMARY"))
                {
                    if (tipoCampo.ToUpper().Equals("KEY"))
                    {
                        string[] nombreCamposClave = camposConTipo[2].Split(delimiterCampos);
                        List<DataColumn> camposClave = new List<DataColumn>();
                        //Comparando cada nombre de los campos con cada uno de los campos de la tabla
                        foreach (DataColumn c1 in tablaNueva.Columns)
                        {
                            for (int i = 0; i < nombreCamposClave.Length; i++)
                            {
                                if (nombreCamposClave[i].Equals(c1.ColumnName))
                                {
                                    camposClave.Add(c1);
                                }

                            }
                        }
                        tablaNueva.PrimaryKey = camposClave.ToArray();
                    }
                }
                else if (nombreCampo.ToUpper().Equals("CONSTRAINT"))
                {
                    if (camposConTipo[3].ToUpper().Equals("KEY") && camposConTipo[5].ToUpper().Equals("REFERENCES")
                        && camposConTipo[2].ToUpper().Equals("FOREIGN"))
                    {
                        //obteniendo los nombres de la columna padre e hija asi como la tabla de referencia
                        nombreRelacion.Add(camposConTipo[1]);
                        nombreCampoHija.Add(camposConTipo[4]);
                        nombreTablaPadre.Add(camposConTipo[6]);
                        nombreCampoPadre.Add(camposConTipo[7]);
                    }
                }
                else
                {
                    //creando el DataColumn
                    DataColumn campo = new DataColumn(nombreCampo);

                    if (tipoCampo.ToUpper().Equals("INT"))
                        tipoCampo = "Int32";
                    if (tipoCampo.ToUpper().Equals("CHAR"))
                        tipoCampo = "String";
                    if (tipoCampo.ToUpper().Equals("BOOLEAN"))
                        tipoCampo = "Boolean";
                    if (tipoCampo.ToUpper().Equals("DATETIME"))
                        tipoCampo = "DateTime";

                    campo.DataType = System.Type.GetType("System." + tipoCampo);

                    tablaNueva.Columns.Add(campo);
                }
            }
            baseDatos.Tables.Add(tablaNueva);
            for (int i = 0; i < nombreCampoHija.Count(); i++)
            {
                //obtenemos las columnas padre e hija de la relacion
                DataColumn cHija = tablaNueva.Columns[nombreCampoHija[i]];
                DataColumn cPadre = baseDatos.Tables[nombreTablaPadre[i]].Columns[nombreCampoPadre[i]];

                //creando la relacion
                baseDatos.Relations.Add(new DataRelation(nombreRelacion[i], cPadre, cHija));
            }
            baseDatos.WriteXml(directorio + "\\" + baseDatos.DataSetName + ".xml", XmlWriteMode.WriteSchema);

        }
        else if (script2[1].ToUpper().Equals("DATABASE"))
        {
            string nombreNuevaBD = script2[2];
            nuevaBaseDatos(nombreNuevaBD);
        }

        return null;
    }

    private static void update(string[] script)
    {
        string nombreTabla = script[1];
        DataRow[] filas = baseDatos.Tables[nombreTabla].Select(); ;

        if (script[2].ToUpper().Equals("SET"))
        {
            //separando los campos con sus valores
            char[] delimiterChar = { ',' };
            string[] camposValores = script[3].Split(delimiterChar);
            //separando los campos de los valores e introduciendolos a la lista campos
            char[] delimiterCharV = { '=' };
            List<string[]> campos = new List<string[]>();
            foreach (string cV in camposValores)
            {
                campos.Add(cV.Split(delimiterCharV)); 
            }
            //si se escribio where filtramos las filas
            if (script[4].ToUpper().Equals("WHERE"))
            {
                filas = baseDatos.Tables[nombreTabla].Select(script[5]);
            }
            //int i=0;
            foreach (DataRow r in filas)
            {
                for (int i = 0; i < campos.Count; i++)
                {
                    r[campos[i][0]] = campos[i][1].TrimEnd('\u0027').TrimStart('\u0027');//quita las comillas simples a un string
                }
            }
            /*for (int i = 0; i < filas.Length; i++)
            {
                filas[i][campos[i][0]] = campos[i][0];
            }*/

                baseDatos.WriteXml(directorio + "\\" + baseDatos.DataSetName + ".xml", XmlWriteMode.WriteSchema);
        }
    }

    private static void delete(string[] script)
    {
        if (script[1].ToUpper().Equals("FROM"))
        {
            string nombreTabla = script[2];
            if (script[3].ToUpper().Equals("WHERE"))
            {
                DataRow[] r = baseDatos.Tables[nombreTabla].Select(script[4]);
                for (int i = 0; i < r.Length; i++)
                {
                    baseDatos.Tables[nombreTabla].Rows.Remove(r[i]);
                }
                baseDatos.WriteXml(directorio + "\\" + baseDatos.DataSetName + ".xml", XmlWriteMode.WriteSchema);
            }
        }
    }

    private static DataRow[] insert(string[] script)
    {
        DataRow[] filas=null;

        if (script[1].ToUpper().Equals("INTO"))
        {
            //obteniendo nombre de la tabla en la que se insetara
            string nombreTabla = script[2];

            //separa los nombres de los campos en cada coma que encuentra y quita los parentesis
            char[] delimiterCharsC = { '(', ')', ',' };

            if (script[4].ToUpper().Equals("VALUES"))
            {
                string[] nombreCampos = script[3].Split(delimiterCharsC);
                //separa los valores de los campos
                string[] valores = script[5].Split(delimiterCharsC);

                //creando un registro con la estructura de la tabla
                DataRow r = baseDatos.Tables[nombreTabla].NewRow();

                for (int i = 0; i < nombreCampos.Length-1; i++)
                {
                    if(!nombreCampos[i].Equals(""))
                        r[nombreCampos[i]] = valores[i].TrimEnd('\u0027').TrimStart('\u0027');
                }

                baseDatos.Tables[nombreTabla].Rows.Add(r);
                baseDatos.WriteXml(directorio + "\\" + baseDatos.DataSetName + ".xml", XmlWriteMode.WriteSchema);
                filas = baseDatos.Tables[nombreTabla].Select();
            }
            else
            {

            }
            
        }
        else
        {
            //mostrar un mensaje
        }

        return filas;
    }

    private static DataRow[] select(string[] script)
    {
        DataTable tblConsulta = new DataTable();
        DataRow[] filasConsulta = null;

        //si el tercer elemento del script es "from" continua el proceso, sino, significa que se escribio mal el script
        if (script[2].ToUpper().Equals("FROM")) 
        {
            string nombreTabla = script[3];
            tblConsulta = baseDatos.Tables[nombreTabla];

            //si el cuarto elemento del script es "where" continua el proceso, sino, significa que se escribio mal el script o no escribio where
            if (script.Length >=5 && script[4].ToUpper().Equals("WHERE"))
            {
                string condicion="";
                if (script.Length <= 7)
                {
                    condicion = script[5];
                }
                else
                {
                    condicion = script[5] + script[6] + script[7];
                }
                filasConsulta = tblConsulta.Select(condicion);

                //tblConsulta = filtrar(tblConsulta, op1Condicion, operador, op2Condicion);
            }
            else
            {
                //lanzar un mensaje o una excepcion
                if (script.Length <= 5)
                {
                    filasConsulta = tblConsulta.Select();
                }
            }   
        }
        else
        {
            //lanzar un mensaje o una excepcion
        }

        return filasConsulta;
    }

    //selecciona los atributos que se enciaron  de una tabla
    private static DataTable proyectar(DataTable tbl, string[] campos)
    {
        DataTable tablaProyectada = tbl.Copy(); //se hace una copia entera de la tabla
        if (!campos[0].Equals("*"))
        {
            tablaProyectada.PrimaryKey = null;
            //tablaProyectada.TableName = tbl.TableName;
            List<DataColumn> camposEliminar = new List<DataColumn>();

            foreach (DataColumn c in tablaProyectada.Columns)
            {
                if (!campos.Contains(c.ColumnName))
                    camposEliminar.Add(c);
                //tablaProyectada.Columns.Remove(c);
            }

            foreach (DataColumn c in camposEliminar)
            {
                tablaProyectada.Columns.Remove(c);
            }
        }
        return tablaProyectada;
    }

    //filtra los datos de la tabla enviada como parametro
    private static DataTable filtrar(DataTable tbl, string op1, string operador, string op2)
    {
        DataTable tablaFiltrada = tbl.Copy(); //se copia la misma estructura de la tabla
       // tablaFiltrada.TableName = tbl.TableName;
        DataRow[] r = tablaFiltrada.Select(op1 + operador + op2);
        tablaFiltrada.Rows.Clear();
        tablaFiltrada.Rows.Add(r[0]);
        return tablaFiltrada;
    }


    /*public static void guardarBaseDatos()
    {
        baseDatos.WriteXml(directorio + "\\" + fileName, XmlWriteMode.WriteSchema);
    }*/

    /*public void abrirBaseDatos()
    {
        /* nuevaBaseDatos();
        this.directorio = directorio;
        this.fileName = nombreArchivo;
    }*/

    /*  public void abrirBaseDatos(string directorio, string nombreArchivo)
        {
            nuevaBaseDatos(nombreArchivo);
            this.directorio = directorio;
            this.fileName = nombreArchivo;
        }*/


    public static int ultimoUsuario()
    {
        DataRow[] r = masterBD.Tables["Usuarios"].Select();
        DataRow r1 = r.Last();

        int n = (int)r1["idUsuario"];

        return n;
    }
}