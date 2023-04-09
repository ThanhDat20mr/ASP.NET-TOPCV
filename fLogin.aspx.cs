using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TopCV
{
    public partial class fLogin : System.Web.UI.Page
    {
        TopCVEntities con = new TopCVEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (con.Account.Where(p => p.Username == txtUsn.Text && p.Password == txtPsw.Text).Count() > 0)
            {
                Response.Redirect("HomePage.aspx?username=" + txtUsn.Text);
                
            }
            else
            {
                lblError.Text = "Login failed!";
            }
        }
    }
}