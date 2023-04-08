using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TopCV
{
    public partial class HomePage : System.Web.UI.Page
    {
        
        TopCVEntities con = new TopCVEntities();
        ArrayList arr = new ArrayList();


        void load_cbxCarrer()
        {

            using (TopCVEntities db = new TopCVEntities())
            {
                var result = from c in db.Carrer
                             group c by c.CarrerName into g
                             select g.Key;

                cbxCarrer.DataSource = result.ToList();
                cbxCarrer.DataBind();
            }

            /*using (TopCVEntities db = new TopCVEntities())
            {
                var result = from c in db.Carrer
                             group c by c.CarrerName into g
                             select g.Key;

                foreach (var rs in result)
                {
                    arr.Add(rs);
                }
                for(int i = 0; i < arr.Count; i++)
                {
                    cbxCarrer.Items.Add(arr[i].ToString());
                }
            }*/
            /*var context = new TopCVEntities();
            var departments = context.Carrer.ToList();

            cbxCarrer.DataSource = departments;
            cbxCarrer.DataTextField = "CarrerName";
            cbxCarrer.DataValueField = "CarrerID";
            cbxCarrer.DataBind();*/
        }
        public string getSex(Jobs jd, bool? ch)
        {
            string s = "";
            if (jd.sexual == true)
                s = "Nam";
            if (jd.sexual == false)
                s = "Nữ";
            if (jd.sexual == null)
                s = "Không yêu cầu";
            return s;
        }
        void load_details()
        {
            using (TopCVEntities db = new TopCVEntities())
            {
                var result = from c in db.Jobs.Where(p => p.coID.Equals("VHTECH"))
                             /*group c by c.jobID*/
                             select c.jobID;
                             
                string s = result.FirstOrDefault().ToString();
                Jobs jd = db.Jobs.Find(int.Parse(s));
                lbCarrer.Text = jd.method;
                lbSalary.Text = jd.salary + " triệu";
                lbSexsual.Text = getSex(jd,jd.sexual);
                lbAmount.Text = jd.amount+" người";
                lbLevel.Text = jd.level;
                if(jd.exp==null)
                    lbExp.Text = "Không yêu cầu";
                else
                lbExp.Text = jd.level;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            load_cbxCarrer();
            load_details();
            using (TopCVEntities db =new TopCVEntities())
            {
                lbDate.Text = "  Hạn nộp hồ sơ:";
                var rs = from c in db.Jobs.Where(p=>p.jobID==1) select c.jobID;
                string s = rs.FirstOrDefault().ToString();
                Jobs jd = db.Jobs.Find(1);
                DateTime d = jd.date.Value;
                lbJobName.Text = jd.jobName;
                lbCOName.Text = jd.Company.coName;
                lbDate.Text +=  d.ToString("dd/MM/yyyy");
            }
        }

        protected void cbxCarrer_Load(object sender, EventArgs e)
        {
           
        }
    }
}