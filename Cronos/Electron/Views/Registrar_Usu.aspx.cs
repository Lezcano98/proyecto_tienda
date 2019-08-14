using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//librerias agrgadas
using Cronos.Controlador;
using System.Data;
// libreria agregada para utilizar la clase StringBuilder(esta clase se ustilizo para crear claves aleatorias);
using System.Text;
// libreria para poder enviar correos
using System.Net.Mail;

namespace Electron.Views
{
    public partial class Registrar_Usu : System.Web.UI.Page
    {
        private Correos c;
        private Usuarios usu;
        private DataTable datos;
        private UsuariosHelper usuHelper;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // metodo para crear las claves de forma aleatoria;
        public string CrearPassword(int longitud)
        {
            string caracteres = "auqbhai87634db0974uFYBF34579021RDSRHJKLCTH";
            StringBuilder res = new StringBuilder();
            Random rnd = new Random();
            while (0 < longitud--)
            {
                res.Append(caracteres[rnd.Next(caracteres.Length)]);
            }
            return res.ToString();
        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {

            try
            {
                this.usu = new Usuarios();
                this.usu.Nombre = this.txtnombre.Text;
                this.usu.Apellido = this.txtapellido.Text;
                this.usu.Apellido2 = this.txtapellido2.Text;
                this.usu.Cedula = this.txtcedula.Text;
                this.usu.Correo = this.txtcorreo.Text;
                this.usu.Nombre_usuario = this.txtnombreUsu.Text;
                this.usu.Tipo = this.DropDownList1.SelectedValue;
                this.usu.Clave = CrearPassword(10);
                EnviarCorreos();
                this.usu.Opc = 1;
                this.usuHelper = new UsuariosHelper(usu);
                this.usuHelper.AgregarUsuarios();
            
                this.txtnombre.Text = "los datos se guardaron con exito";

            }

            catch (Exception ex)
            {

                this.txtnombre.Text = ex.Message;
            }


        }
        public void EnviarCorreos()
        {
            this.c = new Correos();
            this.c.Enviar_Correo(this.txtcorreo.Text, "Registro en la tienda Cronos", "Usted se Registro en la tienda Cronos este es su nombre de usuario:'"+" "+"''" + this.txtnombreUsu.Text + "' y esta es su clave '" + this.usu.Clave+ "' le sugerimos por favor cambiar la clave cuando ingrese al sistema Gracias");

        }


    }

}

