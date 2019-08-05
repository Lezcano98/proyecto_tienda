using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// librerias agregadas
using System.Data.SqlClient;
using MVC.Modelo;
using System.Data;

namespace Cronos.Controlador
{
    public class ConsolaHelper
    {
        Datos cnGeneral = null;
        DataTable tblDatos = null;
        // llama a mi clase usuario donde tengo mis constructores, set and get 
        Consolas objconsolas = null;
        public ConsolaHelper(Consolas parObjconsolas)
        {
            objconsolas = parObjconsolas;
        }

        public void ingresarConsola()
        {
            try
            {
                cnGeneral = new Datos();
                SqlParameter[] parParameter = new SqlParameter[6];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = objconsolas.Opc;

                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Codigo_Articilo";
                parParameter[1].SqlDbType = SqlDbType.Int;
                parParameter[1].SqlValue = objconsolas.Codigo_consola;


                parParameter[2] = new SqlParameter();
                parParameter[2].ParameterName = "@Descripcion_articulo";
                parParameter[2].SqlDbType = SqlDbType.VarChar;
                parParameter[2].Size = 50;
                parParameter[2].SqlValue = objconsolas.Precio;

                parParameter[3] = new SqlParameter();
                parParameter[3].ParameterName = "@Precio_articulo";
                parParameter[3].SqlDbType = SqlDbType.Int;
                parParameter[3].SqlValue = objconsolas.Precio;

                parParameter[4] = new SqlParameter();
                parParameter[4].ParameterName = "@imagen";
                parParameter[4].SqlDbType = SqlDbType.Image;
                parParameter[4].SqlValue = objconsolas.Imagen_consola;

                parParameter[5] = new SqlParameter();
                parParameter[5].ParameterName = "@nombre_deArticulo";
                parParameter[5].SqlDbType = SqlDbType.VarChar;
                parParameter[5].Size = 20;
                parParameter[5].SqlValue = objconsolas.Nombre_consola;

                cnGeneral.EjecutarSP(parParameter, "Consolas");

            }
            catch (Exception ex)
            {

               throw new Exception(ex.Message);
            }



        }


    }
}
