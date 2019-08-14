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
    public class DepartamentosHelper
    {
        Datos cnGeneral = null;
        DataTable tblDatos = null;
        // llama a mi clase usuario donde tengo mis constructores, set and get 
        Departamentos objdepartamentos = null;
        public DepartamentosHelper(Departamentos parObjdepartamentos)
        {
            objdepartamentos = parObjdepartamentos;
        }

        public void IngresarDepartamentos()
        {
            try
            {
                cnGeneral = new Datos();
                SqlParameter[] parParameter = new SqlParameter[3];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue =objdepartamentos.Opc;

                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Descripcion";
                parParameter[1].SqlDbType = SqlDbType.VarChar;
                parParameter[1].Size = 50;
                parParameter[1].SqlValue = objdepartamentos.Descripcion;


                parParameter[2] = new SqlParameter();
                parParameter[2].ParameterName = "@Estado_Departamento";
                parParameter[2].SqlDbType = SqlDbType.Int;
                parParameter[2].SqlValue = objdepartamentos.Estado;

                cnGeneral.EjecutarSP(parParameter,"SPDepartamentos");

            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }


        }


    }
}
