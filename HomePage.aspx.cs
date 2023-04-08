using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TopCV
{
    public partial class HomePage : System.Web.UI.Page
    {
        TopCVEntities con = new TopCVEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            using (TopCVEntities db =new TopCVEntities())
            {
                var rs = from c in db.Jobs.Where(p=>p.jobID==1) select c.jobID;
                string s = rs.FirstOrDefault().ToString();
                Jobs jd = db.Jobs.Find(1);
                lbJobName.Text = jd.jobName;
                lbCOName.Text = jd.Company.coName;
                lbDate.Text = jd.date.ToString();
            }
            
        }
        
        
    }
}