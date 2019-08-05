using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
                    byte[] pic = new byte[tamano];
                    flcargarArchivo.PostedFile.InputStream.Read(pic, 0, tamano);
                    //fin de la instruccion
                    this.con.Imagen_consola =pic.ToString();
                    this.con.Precio = int.Parse(this.txtprecioconsola.Text);
                    this.con.Descripcion = this.txtdescripcion.Text;
                    this.con.Codigo_consola = int.Parse(this.txtcodigo.Text);


                    this.consolaHelper = new ConsolaHelper(con);
                    this.consolaHelper.ingresarConsola();
                    
                  





                }
                catch (Exception)
                {

                    throw;
                }


            }


        }

    }
}