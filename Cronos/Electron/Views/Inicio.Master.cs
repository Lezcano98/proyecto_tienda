using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//librerias agrgadas
using Cronos.Controlador;
using System.Data;

namespace Electron
{
   
    public partial class Inicio : System.Web.UI.MasterPage

    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            this.lblingresado.Text = Usuarios.NonbreyApellido;

            string valid = Usuarios.TipoUsu;

            if (valid == null || valid == "CLIENTE" || valid != "ADMINISTRADOR ")
            {
                Response.Redirect("LOGING.aspx");
            }
        }
    }
}