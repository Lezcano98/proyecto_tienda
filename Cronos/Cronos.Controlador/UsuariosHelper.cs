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

                SqlParameter[] parParameter = new SqlParameter[4];

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
                parParameter[2].Size = 50;
                parParameter[2].SqlValue = objusuarios.Clave;

                parParameter[3] = new SqlParameter();
                parParameter[3].ParameterName = "@tipo";
                parParameter[3].SqlDbType = SqlDbType.VarChar;
                parParameter[3].Size = 20;
                parParameter[3].SqlValue = objusuarios.Tipo;

                //para  mi proceso almacenado USUARIO
                tblDatos = cnGeneral.RetornaTabla(parParameter,"SPValida");

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
                tblDatos = cnGeneral.RetornaTabla(parParameter, "SPUsuario");
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return tblDatos;
        }

        public void AgregarUsuarios()
        {
            try
            {
                cnGeneral = new Datos();

                SqlParameter[] parParameter = new SqlParameter[9];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = objusuarios.Opc;

                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Nombre";
                parParameter[1].SqlDbType = SqlDbType.VarChar;
                parParameter[1].Size = 20;
                parParameter[1].SqlValue = objusuarios.Nombre;

                parParameter[2] = new SqlParameter();
                parParameter[2].ParameterName = "@Apellido";
                parParameter[2].SqlDbType = SqlDbType.VarChar;
                parParameter[2].Size = 20;
                parParameter[2].SqlValue = objusuarios.Apellido;

                parParameter[3] = new SqlParameter();
                parParameter[3].ParameterName = "@Apellido2";
                parParameter[3].SqlDbType = SqlDbType.VarChar;
                parParameter[3].Size = 20;
                parParameter[3].SqlValue = objusuarios.Apellido2;

                parParameter[4] = new SqlParameter();
                parParameter[4].ParameterName = "@Cedula";
                parParameter[4].SqlDbType = SqlDbType.VarChar;
                parParameter[4].Size = 9;
                parParameter[4].SqlValue = objusuarios.Cedula;

                parParameter[5] = new SqlParameter();
                parParameter[5].ParameterName = "@Correo";
                parParameter[5].SqlDbType = SqlDbType.VarChar;
                parParameter[5].Size = 50;
                parParameter[5].SqlValue = objusuarios.Correo;

                parParameter[6] = new SqlParameter();
                parParameter[6].ParameterName = "@Nombre_Usuario";
                parParameter[6].SqlDbType = SqlDbType.VarChar;
                parParameter[6].Size = 20;
                parParameter[6].SqlValue = objusuarios.Nombre_usuario;

                parParameter[7] = new SqlParameter();
                parParameter[7].ParameterName = "@Clave";
                parParameter[7].SqlDbType = SqlDbType.VarChar;
                parParameter[7].Size = 50;
                parParameter[7].SqlValue = objusuarios.Clave;

                parParameter[8] = new SqlParameter();
                parParameter[8].ParameterName = "@tipo";
                parParameter[8].SqlDbType = SqlDbType.VarChar;
                parParameter[8].Size = 20;
                parParameter[8].SqlValue = objusuarios.Tipo;


                cnGeneral.EjecutarSP(parParameter, "SPUsuario");
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }

        public void ActualizarUsuarios()
        {
            try
            {
                cnGeneral = new Datos();

                SqlParameter[] parParameter = new SqlParameter[7];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = objusuarios.Opc;

                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Nombre";
                parParameter[1].SqlDbType = SqlDbType.VarChar;
                parParameter[1].Size = 20;
                parParameter[1].SqlValue = objusuarios.Nombre;

                parParameter[2] = new SqlParameter();
                parParameter[2].ParameterName = "@Apellido";
                parParameter[2].SqlDbType = SqlDbType.VarChar;
                parParameter[2].Size = 20;
                parParameter[2].SqlValue = objusuarios.Apellido;

                parParameter[3] = new SqlParameter();
                parParameter[3].ParameterName = "@Apellido2";
                parParameter[3].SqlDbType = SqlDbType.VarChar;
                parParameter[3].Size = 20;
                parParameter[3].SqlValue = objusuarios.Apellido2;

                parParameter[4] = new SqlParameter();
                parParameter[4].ParameterName = "@Cedula";
                parParameter[4].SqlDbType = SqlDbType.VarChar;
                parParameter[4].Size = 9;
                parParameter[4].SqlValue = objusuarios.Cedula;

                //parParameter[5] = new SqlParameter();
                //parParameter[5].ParameterName = "@Correo";
                //parParameter[5].SqlDbType = SqlDbType.VarChar;
                //parParameter[5].Size = 20;
                //parParameter[5].SqlValue = objusuarios.Correo;

                parParameter[5] = new SqlParameter();
                parParameter[5].ParameterName = "@Nombre_Usuario";
                parParameter[5].SqlDbType = SqlDbType.VarChar;
                parParameter[5].Size = 20;
                parParameter[5].SqlValue = objusuarios.Nombre_usuario;

                parParameter[6] = new SqlParameter();
                parParameter[6].ParameterName = "@Clave";
                parParameter[6].SqlDbType = SqlDbType.VarChar;
                parParameter[6].Size = 50;
                parParameter[6].SqlValue = objusuarios.Clave;

                //parParameter[8] = new SqlParameter();
                //parParameter[8].ParameterName = "@tipo";
                //parParameter[8].SqlDbType = SqlDbType.VarChar;
                //parParameter[8].Size = 20;
                //parParameter[8].SqlValue = objusuarios.Tipo;


                cnGeneral.EjecutarSP(parParameter, "SPUsuario");
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }

    }
}
