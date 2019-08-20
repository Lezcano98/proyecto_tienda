using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cronos.Controlador;

namespace Electron.Views
{
    public partial class Bitacora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string valid = Usuarios.TipoUsu;

            if (valid == null || valid == "cliente")
            {
                Response.Redirect("LOGING.aspx");
            }
        }
    }
}