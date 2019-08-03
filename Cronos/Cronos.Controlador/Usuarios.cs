using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cronos.Controlador
{
   public  class Usuarios
    {
        // opc es la opcion que se genera en el proceso almacenado.
        public int opc;
        // atriutos para los usuarios 
        // el nombre se dacalara public static para poder hacer capturar el valor del dato ingresado y asi poder mostrarlo en los diferentes modulos 
        public static string nombre;
        public string apellido;
        public string apellido2;
        public string cedula;
        public string correo;
        public string nombre_usuario;
        public string clave;
        public int tipo;

        public int Opc { get => opc; set => opc = value; }
        public static string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Apellido2 { get => apellido2; set => apellido2 = value; }
        public string Cedula { get => cedula; set => cedula = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Nombre_usuario { get => nombre_usuario; set => nombre_usuario = value; }
        public string Clave { get => clave; set => clave = value; }
        public int Tipo { get => tipo; set => tipo = value; }

        public Usuarios(int opc, string nombre, string apellido, string apellido2, string cedula, string correo, string nombre_usuario, string clave, int tipo)
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
            this.tipo = 0;
        }

        public static void Setnombre(string nombreresgitrado)
        {
            Nombre = nombreresgitrado;

        }
    }
}
