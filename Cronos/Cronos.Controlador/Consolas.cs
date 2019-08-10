﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cronos.Controlador
{
   public class Consolas
    {
        // declaracion de la opcion
        public int opc;
        // atroibutos para el ingreso de datos en el sistema.
        public string nombre_consola;
        public byte imagen_consola;
        public int precio;
        public string descripcion;
        public int codigo_consola;

        public Consolas(int opc, string nombre_consola, byte imagen_consola, int precio, string descripcion, int codigo_consola)
        {
            this.opc = opc;
            this.nombre_consola = nombre_consola;
            this.imagen_consola = imagen_consola;
            this.precio = precio;
            this.descripcion = descripcion;
            this.codigo_consola = codigo_consola;
        }
        public Consolas()
        {
            this.opc = 0;
            this.nombre_consola = "";
            this.imagen_consola = 0;
            this.precio = 0;
            this.descripcion = "";
            this.codigo_consola = 0;
        }

        public int Opc { get => opc; set => opc = value; }
        public string Nombre_consola { get => nombre_consola; set => nombre_consola = value; }
        public byte Imagen_consola { get => imagen_consola; set => imagen_consola = value; }
        public int Precio { get => precio; set => precio = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public int Codigo_consola { get => codigo_consola; set => codigo_consola = value; }
    }
}