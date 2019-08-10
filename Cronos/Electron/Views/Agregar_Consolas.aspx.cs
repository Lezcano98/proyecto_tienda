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
     Cronos.Controlador.Consolas con= new Cronos.Controlador.Consolas();
        private ConsolaHelper consolaHelper;
        private DataTable datos;
        protected void Page_Load(object sender, EventArgs e)
        {

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
                    
                string filename = Path.GetFileName(flcargarArchivo.FileName);
                int tamano = flcargarArchivo.PostedFile.ContentLength;
                byte[]pic = new byte[tamano]; /*Convert.FromBase64String(filename);*/
                 flcargarArchivo.PostedFile.InputStream.Read(pic, 0, tamano);
                    //fin de la instruccion
                    this.con.Imagen_consola=byte.Parse(flcargarArchivo.ToString());
                    
                    this.con.Precio = int.Parse(this.txtprecioconsola.Text);
                    this.con.Descripcion = this.txtdescripcion.Text;
                    this.con.Codigo_consola = int.Parse(this.txtcodigo.Text);
                    this.con.Opc = 1;
                    this.consolaHelper = new ConsolaHelper(con);
                    this.consolaHelper.ingresarConsola();

                this.lblmensaje.Text = "datos guardados";

                    //ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeDeconfirmacion", "mensajeDeconfirmacion('" + "" + "');", true);


                }
                catch (Exception ex)
                {
               this.lblmensaje.Text = ex.Message;
                    //ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeError", "mensajeError('" + ex + "');", true);
                }


            }


        }

    }
}