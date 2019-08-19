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
    public partial class Perfil : System.Web.UI.Page
    {
        private Usuarios usu;
        private UsuariosHelper usuH;
        private DataTable datos;
        protected void Page_Load(object sender, EventArgs e)
        {
            string valid = Usuarios.TipoUsu;
            if (valid == null)
            {
                Response.Redirect("LOGING.aspx");
            }

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                try
                {
                    this.usu = new Usuarios();
                    this.usu.Nombre = this.txtnombre.Text;
                    this.usu.Apellido = this.txtapellido.Text;
                    this.usu.Apellido2 = this.txtapellido2.Text;
                    this.usu.Nombre_usuario = this.txtusuario.Text;
                    this.usu.Clave = this.txtnuevaclave.Text;
                    // la cedula no se actualiza pero si es necesaria indicar ese valor puesto que el usuario se actualiza con respecto a su numero de cedula
                    this.usu.Cedula = Usuarios.CedulaActualizar;
                    this.usu.Opc = 4;
                    this.usuH = new UsuariosHelper(usu);
                    this.usuH.ActualizarUsuarios();
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeDeconfirmacion", "mensajeDeconfirmacion('" + "" + "');", true);
                }
                catch (Exception)
                {

                    ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeError", "mensajeError('" + "" + "');", true);
                }
            }
        }
    }
}