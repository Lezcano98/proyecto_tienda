﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//librerias agrgadas
using Cronos.Controlador;
using System.Data;

namespace Electron.Views
{
    public partial class Consolas : System.Web.UI.Page
    {
        private Compras cp;
        private ComprasHelper cph;
        //private Articulos at;
        //private ArticulosHelper ath;
        private DataTable datos;
        private Correos cr;

        // variables estaticas que me acumlan los valores del gridviews
        //public static string nombreA;
        public static string Descripcion;
        public static string precio;
        public static int codigo;
        protected void Page_Load(object sender, EventArgs e)
        {
            string valid = Usuarios.TipoUsu;
            if (valid == null)
            {
                Response.Redirect("LOGING.aspx");
            }
        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            //double descuento = int.Parse(precio) * 0.5;
            //double subtotal =int.Parse(precio)-descuento;
            
            double iva = 13;
            try
            {
                this.cp = new Compras();
                this.cp.fecha_compra = DateTime.Now;
                this.cp.Departamento = "Video Juegos";
                //this.cp.Articulo =nombreA;
                this.cp.Descripcion = Descripcion;
                this.cp.Precio =precio;
                this.cp.Cantidad = int.Parse(this.txtcantidad.Text);
                this.cp.Codigo_Articulo =codigo;
                this.cp.Descuento = double.Parse(precio)* 0.5;
                this.cp.Subtotal = double.Parse(precio) - this.cp.Descuento;
                this.cp.IVA = iva;
                //this.cp.Usuario = Usuarios.NonbreyApellido;
                this.cp.Total_pagar = double.Parse(this.txtcantidad.Text)*this.cp.Subtotal;
                this.cp.Opc = 1;
                this.cph = new ComprasHelper(cp);
                this.cph.InsertarCompras();

                this.lbl_estado.Text = "compra exitosa";
                //Response.Redirect("Factura.aspx");

            }
            catch (Exception ex)
            {

                this.lbl_estado.Text = ex.Message;
            }
        }

        public void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Descripcion = this.GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
            precio = this.GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
            //nombreA = this.GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
            codigo = int.Parse(this.GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text);
        }

        protected void txtbuscar_TextChanged(object sender, EventArgs e)
        {
            //try
            //{

               
            //    this.at = new Articulos();
            //    this.at.Nombre_consola = this.txtbuscar.Text;
            //    this.at.opc = 1;
            //    this.ath = new ArticulosHelper(at);
            //    this.datos = new DataTable();
            //    datos = (DataTable)GridView1.DataSource;
            //    this.GridView1.DataSource = this.ath.BusquedaArticulo();
            //    GridView1.DataBind();

            //}
            //catch (Exception ex)
            //{
            //    this.txtbuscar.Text = ex.Message;
            //}
        }

        public void EnviarCorreo()
        {
            this.cr = new Correos();
            this.cr.Enviar_Correo(Usuarios.CorreoCompra,"Factura de Tienda Cronos","");

        }
    }
}