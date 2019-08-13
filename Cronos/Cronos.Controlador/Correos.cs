using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
namespace Cronos.Controlador
{
    public class Correos
    {
        public bool Enviar_Correo(string destino, string Asunto, string Cuerpo)
        {

            try
            {

                System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();

                msg.To.Add(destino);
                msg.Bcc.Add(destino); //Copia Oculto, en caso que se requiera
                msg.From = new MailAddress("lezki90.loco@gmail.com", "Registro En La Tienda Cronos", System.Text.Encoding.UTF8);//Verificar el formato
                msg.Subject = Asunto = "Registro En La Tienda Cronos";
                msg.SubjectEncoding = System.Text.Encoding.UTF8;
                msg.Body = Cuerpo;
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
