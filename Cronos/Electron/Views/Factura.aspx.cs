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
                datos = (DataTable)Gridfactura.DataSource;
                this.cp = new Compras();
                this.cp.buscarfactura = this.txtbuscar.Text;
                this.cp.Opc = 1;
                this.cpH = new ComprasHelper(cp);
                this.datos = new DataTable();
                Gridfactura.DataSource = this.cpH.BuscarFactura();
                Gridfactura.DataBind();
       

            }
            catch (Exception ex)
            {
                this.lblmensaje.Text = ex.Message;

            }
        }

        private void listar()
        {
            try
            {
                this.cp = new Compras();
                this.cp.opc = 1;

                this.cpH = new ComprasHelper(cp);
                this.datos = new DataTable();

                this.datos = this.cpH.Cargar_Factura();

                if (datos.Rows.Count >= 0)
                {
                    this.Gridfactura.DataSource = datos;
                }



            }
            catch (Exception ex)
            {

                this.lblmensaje.Text = ex.Message;
            }
        }

        protected void txtbuscar_TextChanged(object sender, EventArgs e)
        {
            listar();
        }
    }
}