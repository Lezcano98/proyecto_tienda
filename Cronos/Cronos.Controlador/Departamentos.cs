using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cronos.Controlador
{
     public class Departamentos
    {
        public int opc;
        public string descripcion;
        public int estado;

        public int Opc { get => opc; set => opc = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public int Estado { get => estado; set => estado = value; }

        public Departamentos(int opc, string descripcion, int estado)
        {
            this.Opc = opc;
            this.Descripcion = descripcion;
            this.Estado = estado;
        }
        public Departamentos()
        {
            this.Opc = 0;
            this.Descripcion = "";
            this.Estado = 0;
        }

 
    }
}
