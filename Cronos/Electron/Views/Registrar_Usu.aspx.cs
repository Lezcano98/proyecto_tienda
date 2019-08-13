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
                this.usu.Clave =CrearPassword(10);
                this.usu.Opc = 1;
                this.usuHelper = new UsuariosHelper(usu);
                this.usuHelper.AgregarUsuarios();

                this.txtnombre.Text = "los datos se guardaron con exito";

            }
          
            catch (Exception ex)
            {

                this.txtnombre.Text = ex.Message;
            }
             bool EnviarCorreo(string destino, string Asunto, string Cuerpo)
            {

                try
                {

                    System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();

                    msg.To.Add(destino=this.txtcorreo.Text);
                    msg.Bcc.Add(this.txtcorreo.Text); //Copia Oculto, en caso que se requiera
                    msg.From = new MailAddress(this.txtcorreo.Text, "Registro En La Tienda Cronos", System.Text.Encoding.UTF8);//Verificar el formato
                    msg.Subject = Asunto;
                    msg.SubjectEncoding = System.Text.Encoding.UTF8;
                    msg.Body = Cuerpo = "Usted se Registro en la tienda Cronos este es su nombre de usuario'" + this.txtnombreUsu + "' y esta es su clave '" + CrearPassword(8) + "' le sugerimos por favor cambiar la clave cuando ingrese al sistema Gracias";
                    msg.BodyEncoding = System.Text.Encoding.Unicode;
                    msg.IsBodyHtml = true;

                    SmtpClient client = new SmtpClient();
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential("lezki90.loco@gmail.com", "lezki9009");

                    client.Port = 587;
                    client.Host = "smtp.gmail.com";
                    client.EnableSsl = true;

                    client.Send(msg);
                    client.Dispose();

                    return true;
                }
                catch (System.Net.Mail.SmtpException ex)
                {
                    return false;
                }
            }


        }
       


    }
}