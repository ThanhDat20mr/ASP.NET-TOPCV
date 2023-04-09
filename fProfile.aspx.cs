using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TopCV
{
    public partial class fProfile : System.Web.UI.Page
    {
        public static fProfile instance;
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }
        string usn = HomePage.lbUS.Text;
        protected void btnSave_Click(object sender, EventArgs e)
        {
            bool sexsual;
            using (TopCVEntities db = new TopCVEntities())
            {
                Profile prf = db.Profile.Find(usn);
                prf.Name = txtName.Text;
                prf.phone = txtPhone.Text;
                prf.address = txtAddress.Text;
                prf.CV = txtCV.Text;
                prf.avt = fileAvatar.FileName;
                if (cbxSex.Text.Equals("Nam"))
                {
                    sexsual = true;
                }
                else
                    sexsual = false;
                prf.sexsual = sexsual;
                db.SaveChanges();
            }
        }
    }
}