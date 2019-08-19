using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
namespace Cronos.Controlador
{
    public class Usuarios
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
        // esta variable globales son para capturara valores que se denben utilizar en los diferentes modulos, 
        //pero que a nivel de usuario no se deben insetar(solo capturar el valor)
        public static string nonbreyApellido;
        public static string tipoUsu;
        public static string cedulaActualizar;
        public static string correoCompra;
        public int Opc { get => opc; set => opc = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Apellido2 { get => apellido2; set => apellido2 = value; }
        public string Cedula { get => cedula; set => cedula = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Nombre_usuario { get => nombre_usuario; set => nombre_usuario = value; }
        public string Clave { get => clave; set => clave = value; }
        public string Tipo { get => tipo; set => tipo = value; }
        public static string NonbreyApellido { get => nonbreyApellido; set => nonbreyApellido = value; }
        public static string TipoUsu { get => tipoUsu; set => tipoUsu = value; }
        public static string CedulaActualizar { get => cedulaActualizar; set => cedulaActualizar = value; }
        public static string CorreoCompra { get => correoCompra; set => correoCompra = value; }

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
        // con estos metodos capturo los valores que ingresne a los get y set 
        public static void Setnombre(string nombreresgitrado)
        {
            nonbreyApellido = nombreresgitrado;
        }
        public static void setTipo(string tipo_restriccion)
        {
            tipoUsu = tipo_restriccion;
        }

        public static void setCedula (string cedulaActualiza) { 
            cedulaActualizar = cedulaActualiza;
          }
        public static void setCorreo(string correos) {
            CorreoCompra = correos;
        }


    }

    }
