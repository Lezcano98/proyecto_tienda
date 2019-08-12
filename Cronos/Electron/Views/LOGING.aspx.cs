using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//librerias agrgadas
using Cronos.Controlador;
using System.Data;

namespace Electron
{
    public partial class WebForm1 : System.Web.UI.Page
    {    // decalarcion de objetos para poder utilizar las referencias de las clases 
        private Usuarios usuarios;
        private UsuariosHelper UsuariosHelper;
        private DataTable datos;
            
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            try
            {
                this.usuarios = new Usuarios();

                this.usuarios.Nombre_usuario = this.txtnombreusuario.Text;
                this.usuarios.Clave =this.txtclave.Text;
                // uso de la opcion del proceso almacenado
                this.usuarios.Opc = 1;
                this.UsuariosHelper = new UsuariosHelper(usuarios);
                this.datos = new DataTable();
                this.datos = this.UsuariosHelper.validarusuario();

                if (datos.Rows.Count>=0)
                {
                    DataRow fila = datos.Rows[0];
                  
                    if (fila["tipo"].ToString() == "Administrador")
                    {
                        Usuarios.Setnombre(fila["Nombre"].ToString() + " " + fila["Apellido"].ToString());
                        Response.Redirect("principal.aspx");
                    }
                    else if (fila["tipo"].ToString() == "Cliente")
                    {

                        Usuarios.Setnombre(fila["Nombre"].ToString() + " " + fila["Apellido"].ToString());
                        Response.Redirect("Principal2.aspx");

                    }


                }

            }
            catch (Exception ex)
            {
                this.txtnombreusuario.Text = ex.Message;

                //ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeError", "mensajeError('" +""+ "');", true);
            }
        }
    }
}