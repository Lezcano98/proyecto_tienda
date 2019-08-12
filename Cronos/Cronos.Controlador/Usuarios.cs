using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
namespace Cronos.Controlador
{
   public  class Usuarios
    {
        // opc es la opcion que se genera en el proceso almacenado.
        public int opc;
        // atriutos para los usuarios 
        // el nombre se dacalara public static para poder capturar el valor del dato ingresado y asi poder mostrarlo en los diferentes modulos 
        public string nombre;
        public string apellido;
        public string apellido2;
        public string cedula;
        public string correo;
        public string nombre_usuario;
        public string clave;
        public string tipo;
        // esta variable es para almacenar el nombre y el apellido y poderlo mostrar en el perfil ingresado
        public static string nonbreyApellido;
        public int Opc { get => opc; set => opc = value; }
        public  string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Apellido2 { get => apellido2; set => apellido2 = value; }
        public string Cedula { get => cedula; set => cedula = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Nombre_usuario { get => nombre_usuario; set => nombre_usuario = value; }
        public string Clave { get => clave; set => clave = value; }
        public string Tipo { get => tipo; set => tipo = value; }
        public static string NonbreyApellido { get => nonbreyApellido; set => nonbreyApellido = value; }

        public Usuarios(int opc, string nombre, string apellido, string apellido2, string cedula, string correo, string nombre_usuario, string clave, string tipo)
        {
            this.opc = opc;
            Nombre = nombre;
            Apellido = apellido;
            Apellido2 = apellido2;
            Cedula = cedula;
            this.correo = correo;
            this.nombre_usuario = nombre_usuario;
            this.clave = clave;
            this.tipo = tipo;
        }
        public Usuarios()
        {
            this.opc = 0;
            Nombre = "";
            Apellido = "";
            Apellido2 = "";
            Cedula = "";
            this.correo = "";
            this.nombre_usuario = "";
            this.clave = "";
            this.tipo = "";
        }

        public static void Setnombre(string nombreresgitrado)
        {
            nonbreyApellido = nombreresgitrado;
        }

        // metodo para enviar correos apartir de ingresar un usuario al sistema.
        public bool EnviarCorreo(string destino, string Asunto, string Cuerpo)
        {

            try
            {
                System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();

                msg.To.Add(destino);
                msg.Bcc.Add(Correo); //Copia Oculto, en caso que se requiera
                msg.From = new MailAddress(Correo, "Registro En La Tienda Cronos",System.Text.Encoding.UTF8);//Verificar el formato
                msg.Subject = Asunto;
                msg.SubjectEncoding = System.Text.Encoding.UTF8;
                msg.Body = Cuerpo;
                msg.BodyEncoding = System.Text.Encoding.Unicode;
                msg.IsBodyHtml = true;

                SmtpClient client = new SmtpClient();
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential(Correo,Clave);

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
