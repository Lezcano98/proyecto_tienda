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
        private Compras cp;
        private ComprasHelper cpH;
        private DataTable datos;
        protected void Page_Load(object sender, EventArgs e)
        {
            string valid = Usuarios.TipoUsu;

            if (valid == null || valid == "CLIENTE" || valid != "ADMINISTRADOR ")
            {
                Response.Redirect("LOGING.aspx");
            }
        }




        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                this.cp = new Compras();
                this.cp.Dpselecion = int.Parse(this.DropDownList1.SelectedValue);
                this.cp.Opc = 1;
                this.cpH = new ComprasHelper(cp);
                this.datos = new DataTable();
                datos = (DataTable)GridView1.DataSource;
                this.GridView1.DataSource = this.cpH.BuscarFactura();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}