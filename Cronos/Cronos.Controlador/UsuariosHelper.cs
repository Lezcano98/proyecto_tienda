using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// librerias Agregadas
using System.Data.SqlClient;
using MVC.Modelo;
using System.Data;

namespace Cronos.Controlador
{
    public class UsuariosHelper
    {
        Datos cnGeneral = null;
        DataTable tblDatos = null;
        // llama a mi clase usuario donde tengo mis constructores, set and get 
        Usuarios objusuarios = null;
        public UsuariosHelper(Usuarios parObjusuario)
        {
            objusuarios = parObjusuario;
        }
        //VALIDAR USUARIOS.
        public DataTable validarusuario()
        {
            tblDatos = new DataTable();
            try
            {
                cnGeneral = new Datos();

                SqlParameter[] parParameter = new SqlParameter[3];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = objusuarios.Opc;

                // validar usuarios.
                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Nombre_Usuario";
                parParameter[1].SqlDbType = SqlDbType.VarChar;
                parParameter[1].Size = 20;
                parParameter[1].SqlValue = objusuarios.Nombre_usuario;

                parParameter[2] = new SqlParameter();
                parParameter[2].ParameterName = "@Clave";
                parParameter[2].SqlDbType = SqlDbType.VarChar;
                parParameter[2].Size = 20;
                parParameter[2].SqlValue = objusuarios.Clave;

                //para  mi proceso almacenado USUARIO
                tblDatos = cnGeneral.RetornaTabla(parParameter, "SPValida");

            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }


            return tblDatos;
        }

        public DataTable listarUsuarios()
        {
            tblDatos = new DataTable();
            try
            {
                cnGeneral = new Datos();

                SqlParameter[] parParameter = new SqlParameter[1];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = objusuarios.Opc;
                //para  mi proceso almacenado Usuarios
                tblDatos = cnGeneral.RetornaTabla(parParameter,"SPUsuario");
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return tblDatos;
        }


    }
}
