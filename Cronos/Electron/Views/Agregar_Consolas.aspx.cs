using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cronos.Controlador;
using System.Data;

namespace Electron.Views
{
    public partial class Agregar_Consolas : System.Web.UI.Page
    {
        private Consolas consola;
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

            else {
                try
                {
                    this.consola = new Consolas();

                  



                }
                catch (Exception)
                {

                    throw;
                }


            }


        }

    }
}