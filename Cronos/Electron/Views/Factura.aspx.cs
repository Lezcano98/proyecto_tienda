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
    public partial class Factura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblusuarios.Text = Usuarios.NonbreyApellido;
        }
    }
}