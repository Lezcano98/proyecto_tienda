using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// librerias agregadas
using System.Data.SqlClient;
using MVC.Modelo;
using System.Data;
using System.IO;

namespace Cronos.Controlador
{
    public class ArticulosHelper
    {
        Datos cnGeneral = null;
        DataTable tblDatos = null;
        // llama a mi clase usuario donde tengo mis constructores, set and get 
        Articulos objconsolas = null;
        public ArticulosHelper(Articulos parObjconsolas)
        {
            objconsolas = parObjconsolas;
        }

        public void IngresarArticulo()
        {
            try
            {
                cnGeneral = new Datos();
                SqlParameter[] parParameter = new SqlParameter[7];
               
                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = objconsolas.Opc;

                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Descripcion_articulo";
                parParameter[1].SqlDbType = SqlDbType.VarChar;
                parParameter[1].Size = 50;
                parParameter[1].SqlValue = objconsolas.Descripcion;

                parParameter[2] = new SqlParameter();
                parParameter[2].ParameterName = "@Precio_articulo";
                parParameter[2].SqlDbType = SqlDbType.Money;
                parParameter[2].SqlValue = objconsolas.Precio;

                parParameter[3] = new SqlParameter();
                parParameter[3].ParameterName = "@imagen";
                parParameter[3].SqlDbType = SqlDbType.Image;
                parParameter[3].SqlValue = objconsolas.Imagen_consola;

                parParameter[4] = new SqlParameter();
                parParameter[4].ParameterName = "@nombre_deArticulo";
                parParameter[4].SqlDbType = SqlDbType.VarChar;
                parParameter[4].Size = 20;
                parParameter[4].SqlValue = objconsolas.Nombre_consola;

                parParameter[5] = new SqlParameter();
                parParameter[5].ParameterName = "@Tipo_Articulo";
                parParameter[5].SqlDbType = SqlDbType.Int;
                parParameter[5].SqlValue = objconsolas.Tipo_Articulo;

                parParameter[6] = new SqlParameter();
                parParameter[6].ParameterName = "@Departamentos";
                parParameter[6].SqlDbType = SqlDbType.Int;
                parParameter[6].SqlValue = objconsolas.Id_Departamento;

                cnGeneral.EjecutarSP(parParameter,"Articulos");

            }
            catch (Exception ex)
            {

               throw new Exception(ex.Message);
            }



        }


    }
}
