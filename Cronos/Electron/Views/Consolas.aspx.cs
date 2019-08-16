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
    public partial class Consolas1 : System.Web.UI.Page
    {

        private Compras cp;
        private ComprasHelper cph;

        // variables estaticas que me acumlan los valores del gridviews
        public static string nombreA;
        public static string Descripcion;
        public static string precio;
        public static int codigo;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_comprasCosolas_Click(object sender, EventArgs e)
        {

            double iva = 13;
            try
            {
                this.cp = new Compras();
                this.cp.fecha_compra = DateTime.Today;
                this.cp.Departamento = "Consolas";
                this.cp.Articulo = nombreA;
                this.cp.Descripcion = Descripcion;
                this.cp.Precio = precio;
                this.cp.Cantidad = int.Parse(this.txtcantidad.Text);
                this.cp.Codigo_Articulo = codigo;
                this.cp.Descuento = double.Parse(precio) * 0.1;
                this.cp.Subtotal = double.Parse(precio) - this.cp.Descuento;
                this.cp.IVA = iva;
                this.cp.Usuario = Usuarios.NonbreyApellido;
                this.cp.Total_pagar = double.Parse(this.txtcantidad.Text) * this.cp.Subtotal;
                this.cp.Opc = 1;
                this.cph = new ComprasHelper(cp);
                this.cph.InsertarCompras();


                this.lbl_estado.Text = "compra exitosa";

            }
            catch (Exception ex)
            {

                this.lbl_estado.Text = ex.Message;
            }



        }

        protected void GridConsolas_SelectedIndexChanged(object sender, EventArgs e)
        {
            Descripcion = this.GridConsolas.Rows[GridConsolas.SelectedIndex].Cells[2].Text;
            precio = this.GridConsolas.Rows[GridConsolas.SelectedIndex].Cells[3].Text;
            nombreA = this.GridConsolas.Rows[GridConsolas.SelectedIndex].Cells[4].Text;
            codigo = int.Parse(this.GridConsolas.Rows[GridConsolas.SelectedIndex].Cells[5].Text);

        }
    }
}