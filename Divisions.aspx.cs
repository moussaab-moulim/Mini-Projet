using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryEntitesMiniProjet;

namespace Mini_Projet
{
    public partial class Divisions : System.Web.UI.Page
    {
        DbcontextGestionMissions db = new DbcontextGestionMissions();
        protected void Page_Load(object sender, EventArgs e)
        { 

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
           

                Division D = new Division { nom = TextBox2.Text, phone = TextBox3.Text, lieu = TextBox4.Text };
                db.Divisions.Add(D);
                db.SaveChanges();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var Iddivision = int.Parse(TextBox1.Text);
            var div = db.Divisions.Where(D => D.IDDiv.Equals(Iddivision)).SingleOrDefault();
            div.nom = TextBox2.Text;
            div.phone = TextBox3.Text;
            div.lieu = TextBox4.Text;


            db.SaveChanges();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            var Iddivision = int.Parse(TextBox1.Text);
            var div = db.Divisions.Where(D => D.IDDiv.Equals(Iddivision)).SingleOrDefault();
            db.Divisions.Remove(div);
            db.SaveChanges();

        }
    }
}