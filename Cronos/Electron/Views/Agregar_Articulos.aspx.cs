using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Data.SqlClient;
//librerias agrgadas
using Cronos.Controlador;
using System.Data;
using System.IO;

namespace Electron.Views
{
    public partial class Agregar_Consolas : System.Web.UI.Page
    {
     Cronos.Controlador.Articulos con= new Cronos.Controlador.Articulos();
        private ArticulosHelper consolaHelper;
        private DataTable datos;
        protected void Page_Load(object sender, EventArgs e)
        {
            string valid = Usuarios.TipoUsu;

            if (valid == null || valid == "cliente")
            {
                Response.Redirect("LOGING.aspx");
            }
        }

        protected void btnIngresarC_Click(object sender, EventArgs e)
        {


            if (!flcargarArchivo.HasFile)

            {
                lblmensaje.Text = "Porfavor ingrese una imagen";
            }

            else
            {
                try
                {
                  

                    this.con.Nombre_consola = this.txtnombre_consola.Text;
                // para poder ingresar imagenes a la base de datos 
                //string filename = Path.GetFileName(flcargarArchivo.FileName);
                //int tamano = flcargarArchivo.PostedFile.ContentLength;
                //byte[]pic = new byte[tamano]; /*Convert.FromBase64String(filename);*/
                // flcargarArchivo.PostedFile.InputStream.Read(pic, 0, tamano);
                //fin de la instruccion
                    this.con.Imagen_consola = flcargarArchivo.FileBytes;
                    this.con.Precio = int.Parse(this.txtprecioconsola.Text);
                    this.con.Descripcion = this.txtdescripcion.Text;
                    this.con.Tipo_Articulo = int.Parse(dp_tipo_articulo.SelectedValue.ToString());
                    this.con.Id_Departamento = int.Parse(this.txtNumero_Departamento.Text);
                    this.con.Codigo_Articulo = int.Parse(this.txtcodigoarticulo.Text);
                    this.con.Opc = 1;
                    this.consolaHelper = new ArticulosHelper(con);
                    this.consolaHelper.IngresarArticulo();

                 ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeDeconfirmacion", "mensajeDeconfirmacion('" + "" + "');", true);


                }
                catch (Exception)
                {
             
                ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeError", "mensajeError('" +""+ "');", true);
                }


            }


        }

    }
}