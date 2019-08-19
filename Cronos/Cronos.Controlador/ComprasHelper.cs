using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//librerias agregadas
using System.Data.SqlClient;
using MVC.Modelo;
using System.Data;
using System.IO;

namespace Cronos.Controlador
{
    public class ComprasHelper
    {
        Datos cnGeneral = null;
        DataTable tblDatos = null;
        // llama a mi clase usuario donde tengo mis constructores, set and get 
        Compras objcompras = null;
        public ComprasHelper(Compras parObjcompras)
        {
            objcompras = parObjcompras;
        }

        public void InsertarCompras()
        {
            try
            {
                cnGeneral = new Datos();
                SqlParameter[] parParameter = new SqlParameter[11];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = objcompras.Opc;

                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Fecha";
                parParameter[1].SqlDbType = SqlDbType.DateTime;
                parParameter[1].SqlValue = objcompras.Fecha_compra;

                parParameter[2] = new SqlParameter();
                parParameter[2].ParameterName = "@Departamento";
                parParameter[2].SqlDbType = SqlDbType.VarChar;
                parParameter[2].Size = 50;
                parParameter[2].SqlValue = objcompras.Departamento;

                //parParameter[3] = new SqlParameter();
                //parParameter[3].ParameterName = "@Articulo_Comprado";
                //parParameter[3].SqlDbType = SqlDbType.VarChar;
                //parParameter[3].Size = 50;
                //parParameter[3].SqlValue = objcompras.Articulo;

                parParameter[3] = new SqlParameter();
                parParameter[3].ParameterName = "@Descripcion_Articulo";
                parParameter[3].SqlDbType = SqlDbType.VarChar;
                parParameter[3].Size = 50;
                parParameter[3].SqlValue = objcompras.Descripcion;

                parParameter[4] = new SqlParameter();
                parParameter[4].ParameterName = "@Precio_Articulo";
                parParameter[4].SqlDbType = SqlDbType.VarChar;
                parParameter[4].Size = 50;
                parParameter[4].SqlValue = objcompras.Precio;

                parParameter[5] = new SqlParameter();
                parParameter[5].ParameterName = "@Cantidad";
                parParameter[5].SqlDbType = SqlDbType.Int;
                parParameter[5].SqlValue = objcompras.Cantidad;

                parParameter[6] = new SqlParameter();
                parParameter[6].ParameterName = "@Codigo_Articulo";
                parParameter[6].SqlDbType = SqlDbType.Int;
                parParameter[6].SqlValue = objcompras.Codigo_Articulo;

                parParameter[7] = new SqlParameter();
                parParameter[7].ParameterName = "@Descuento";
                parParameter[7].SqlDbType = SqlDbType.Decimal;
                parParameter[7].SqlValue = objcompras.Descuento;

                parParameter[8] = new SqlParameter();
                parParameter[8].ParameterName = "@subtotal";
                parParameter[8].SqlDbType = SqlDbType.Decimal;
                parParameter[8].SqlValue = objcompras.Subtotal;

                parParameter[9] = new SqlParameter();
                parParameter[9].ParameterName = "@IVA";
                parParameter[9].SqlDbType = SqlDbType.Decimal;
                parParameter[9].SqlValue = objcompras.IVA;

                //parParameter[11] = new SqlParameter();
                //parParameter[11].ParameterName = "@Usuario";
                //parParameter[11].SqlDbType = SqlDbType.VarChar;
                //parParameter[11].Size = 50;
                //parParameter[11].SqlValue = objcompras.Usuario;

                parParameter[10] = new SqlParameter();
                parParameter[10].ParameterName = "@total_pagar";
                parParameter[10].SqlDbType = SqlDbType.Decimal;
                parParameter[10].SqlValue = objcompras.Total_pagar;


                cnGeneral.EjecutarSP(parParameter, "SPInsertar_Compras");
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }


        }

        public DataTable BuscarFactura()
        {

            tblDatos = new DataTable();

            try
            {
                cnGeneral = new Datos();

                SqlParameter[] parParameter = new SqlParameter[2];


                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = objcompras.Opc;

                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Codigo_usuario";
                parParameter[1].SqlDbType = SqlDbType.Int;
                parParameter[1].SqlValue = objcompras.Dpselecion;

                //para  mi proceso almacenado cliente
                tblDatos = cnGeneral.RetornaTabla(parParameter,"SPBusquedaFactura");
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return tblDatos;
        }

    }
}
