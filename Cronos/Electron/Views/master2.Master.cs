using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using Cronos.Controlador;
using System.Data;

namespace Electron.Views
{
    public partial class master2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            this.lblingresado.Text = Usuarios.Nombre;
        }
    }
}