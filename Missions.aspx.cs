using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryEntitesMiniProjet;

namespace Mini_Projet
{
    public partial class Missions : System.Web.UI.Page
    {
        DbcontextGestionMissions db = new DbcontextGestionMissions();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Mission M = new Mission { nom = TextBox2.Text, Description= TextBox3.Text, dDebut = Convert.ToDateTime(TextBox4.Text), dDFin = Convert.ToDateTime(TextBox5.Text) };
            db.Missions.Add(M);
            db.SaveChanges();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var IdMission = int.Parse(TextBox1.Text);
            var Miss = db.Missions.Where(M => M.IDMiss.Equals(IdMission)).SingleOrDefault();
            Miss.nom = TextBox2.Text;
            Miss.Description = TextBox3.Text;
            Miss.dDebut = Convert.ToDateTime(TextBox4.Text);
            Miss.dDFin = Convert.ToDateTime(TextBox5.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var IdMission = int.Parse(TextBox1.Text);
             var Miss= db.Missions.Where(M => M.IDMiss.Equals(IdMission)).SingleOrDefault();
            db.Missions.Remove(Miss);
            db.SaveChanges();

        }
    }
}