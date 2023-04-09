using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TopCV
{
    public partial class fRegistry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistry_Click(object sender, EventArgs e)
        {
            using (TopCVEntities db = new TopCVEntities())
            {

                if (string.IsNullOrEmpty(txtUsn.Text) || db.Account.Where(p => p.Username == txtUsn.Text).Count() > 0 || txtPsw.Text != txtRepsw.Text)
                {
                    if(db.Account.Where(p => p.Username == txtUsn.Text).Count() > 0)
                    {
                        lblError.Text = "Username exits!";
                    }
                        
                    if (txtPsw.Text != txtRepsw.Text)
                    {
                        lblError.Text = "Wrong password!";
                    }
                }

                
                else
                {
                    db.Account.Add(new Account() { Username = txtUsn.Text, Password = txtPsw.Text, Status = "User" });
                    db.Profile.Add(new Profile() { Username = txtUsn.Text});
                    db.SaveChanges();
                    Response.Redirect("fLogin.aspx");
                }
               

            }
        }
    }
}