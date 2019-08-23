using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cronos.Controlador;
using System.Data;
using System.Data.SqlClient;

namespace Electron.Views
{
    public partial class Factura : System.Web.UI.Page
    {
        private Compras cp;
        private ComprasHelper cpH;
        private DataTable datos;
        protected void Page_Load(object sender, EventArgs e)
        {
            string valid = Usuarios.TipoUsu;

            if (valid == null || valid == "cliente")
            {
                Response.Redirect("LOGING.aspx");
            }
           
        }

        protected void Bbusqueda_Click(object sender, EventArgs e)
        {
            try
            {
                //SqlDatausuarios.Select();
                //this.datos = new DataTable();
                this.cp = new Compras();
                this.cp.buscarfactura = int.Parse(DropDownList1.SelectedValue);
                this.cp.Opc = 1;
                this.cpH = new ComprasHelper(cp);
                ////GridView1.DataSource = datos;
                //GridView1.DataSource=this.cpH.BuscarFactura();
                GridView1.DataBind();
                //this.GridView1.DataSource = this.cpH.BuscarFactura();

            }
            catch (Exception ex)
            {
                this.lblmensaje.Text = ex.Message;

            }
        }
    }
}