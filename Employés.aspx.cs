using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryEntitesMiniProjet;


namespace Mini_Projet
{
    public partial class Employés : System.Web.UI.Page
    { DbcontextGestionMissions db = new DbcontextGestionMissions();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList3.DataSource = (from Division in db.Divisions select Division).ToList();
            DropDownList3.DataTextField = "nom";
            DropDownList3.DataValueField= "IDDiv";

            DropDownList3.DataBind();
            DropDownList2.DataSource = (from Mission in db.Missions select Mission).ToList();
            
            DropDownList2.DataTextField = "nom";
            DropDownList2.DataValueField = "IDMiss";
            DropDownList2.DataBind();


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {  

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(int.Parse(DropDownList3.SelectedItem.Value));
            Employe E = new Employe
            {
                nom = Nom.Text,
                prenom = TextBox1.Text,
                adresse = TextBox2.Text,
                phone = TextBox3.Text,
                email = TextBox4.Text,
                Division = (from x in db.Divisions
                            where x.IDDiv == 2
                            select x).First(),
                Mission = (from x in db.Missions
                           where x.IDMiss == 1
                           select x).First()
            
            };
            db.Employes.Add(E);
            db.SaveChanges();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var IdEmp = int.Parse(TextBox5.Text);
            var emp = db.Employes.Where(E => E.ID.Equals(IdEmp)).SingleOrDefault();
            emp.nom = Nom.Text;
              emp.prenom = TextBox1.Text;
             emp.adresse = TextBox2.Text;
             emp.phone = TextBox3.Text;
             emp.email = TextBox4.Text;
          
            db.SaveChanges();


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var IdEmp = int.Parse(TextBox5.Text);
            var emp = db.Employes.Where(E => E.ID.Equals(IdEmp)).SingleOrDefault();
            db.Employes.Remove(emp);
            db.SaveChanges();

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label7.Text = DropDownList3.SelectedItem.Value;
            Label6.Text = DropDownList3.SelectedValue;
            System.Diagnostics.Debug.WriteLine("breeeeeeeeeeeeeeeeeeee");
            System.Diagnostics.Debug.WriteLine(int.Parse(DropDownList3.SelectedItem.Value));
        }
    }
}