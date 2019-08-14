using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// librerias agregadas
using Cronos.Controlador;
using System.Data;

namespace Electron.Views
{
    public partial class Agregar_Departamentos : System.Web.UI.Page
    {
        private Departamentos dp;
        private DepartamentosHelper dpH;
        private DataTable datos;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (radioActivo.Checked)
            {
               
                try
                {
                    this.dp = new Departamentos();
                    this.dp.Descripcion = this.txtdepartamento.Text;
                    this.dp.Estado = 1;
                    this.dp.Opc = 1;
                    this.dpH = new DepartamentosHelper(dp);
                    this.dpH.IngresarDepartamentos();

             ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeDeconfirmacion", "mensajeDeconfirmacion('" + "" + "');", true);
                }
                catch (Exception ex)
                {
            
               ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeError", "mensajeError('" + "" + "');", true);
                }
            }
            else if (radioInactivo.Checked)
            {
              
                try
                {
                    this.dp = new Departamentos();
                    this.dp.Descripcion = this.txtdepartamento.Text;
                    this.dp.Estado = 2;
                    this.dp.Opc = 1;
                    this.dpH = new DepartamentosHelper(dp);
                    this.dpH.IngresarDepartamentos();

                   ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeDeconfirmacion", "mensajeDeconfirmacion('" + "" + "');", true);

                }
                catch (Exception)
                {
                  
                  ScriptManager.RegisterStartupScript(this, typeof(Page), "mensajeError", "mensajeError('" +""+ "');", true);
                }
            }
        }
    }
}