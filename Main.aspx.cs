using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryEntitesMiniProjet;
namespace Mini_Projet
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DbcontextGestionMissions _context = new DbcontextGestionMissions();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = (from Employe in _context.Employes
                                    select Employe).ToList();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}