using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cronos.Controlador
{
   public  class Compras
    {
        public int opc;

        public DateTime fecha_compra;
        public string departamento;
        public string articulo;
        public string descripcion;
        public string precio;
        public int cantidad;
        //esta variable es exclusiva para la busqueda con el dropdown list
        public int dpselecion;
        /// atributos pra el ingreso de la factura 
        public int codigo_Articulo;
        public double descuento;
        public double subtotal;
        public double iVA;
        public string usuario;
        public double total_pagar;

        public Compras(int opc, DateTime fecha_compra, string departamento, string articulo, string descripcion, string precio, int cantidad, int codigo_Articulo, double descuento, double subtotal, double iVA, string usuario, double total_pagar, int dpselecion)
        {
            this.opc = opc;
            this.fecha_compra = fecha_compra;
            this.departamento = departamento;
            this.articulo = articulo;
            this.descripcion = descripcion;
            this.precio = precio;
            this.cantidad = cantidad;
            this.codigo_Articulo = codigo_Articulo;
            this.descuento = descuento;
            this.subtotal = subtotal;
            this.iVA = iVA;
            this.usuario = usuario;
            this.total_pagar = total_pagar;
            this.dpselecion = dpselecion;
        }
        public Compras()
        {
            this.opc = 0;
            this.fecha_compra = DateTime.Today;
            this.departamento = "";
            this.articulo = "";
            this.descripcion = "";
            this.precio = "";
            this.cantidad = 0;
            this.codigo_Articulo = 0;
            this.descuento = 0.0;
            this.subtotal = 0.0;
            this.iVA = 0.0;
            this.usuario = "";
            this.total_pagar = 0.0;
            this.dpselecion = 0;
        }

        public int Opc { get => opc; set => opc = value; }
        public DateTime Fecha_compra { get => fecha_compra; set => fecha_compra = value; }
        public string Departamento { get => departamento; set => departamento = value; }
        public string Articulo { get => articulo; set => articulo = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public string Precio { get => precio; set => precio = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public int Codigo_Articulo { get => codigo_Articulo; set => codigo_Articulo = value; }
        public double Descuento { get => descuento; set => descuento = value; }
        public double Subtotal { get => subtotal; set => subtotal = value; }
        public double IVA { get => iVA; set => iVA = value; }
        public string Usuario { get => usuario; set => usuario = value; }
        public double Total_pagar { get => total_pagar; set => total_pagar = value; }
        public int Dpselecion { get => dpselecion; set => dpselecion = value; }
    }
}
