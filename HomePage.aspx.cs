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
using System.Windows.Forms;
using Label = System.Web.UI.WebControls.Label;

namespace TopCV
{
    public partial class HomePage : System.Web.UI.Page
    {
        public static HomePage instance;
        public static Label lbUS = new Label();
        static string usn;
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
        void load_Acc()
        {
            using (TopCVEntities db = new TopCVEntities())
            {
                Profile prf = db.Profile.Find(usn);
            }
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
        string getContent(Jobs jd)
        {

            string str = "";
            string s = jd.description;

            
            str = s.Replace("-", "<br>- "); ;
            
                return str;
            
            
        }
        int checkDate(Jobs jd,int day)
        {
            DateTime today = DateTime.Today;
            TimeSpan timeSpan = (TimeSpan)(jd.date - today);
            return day = Math.Abs(timeSpan.Days);
        }
        System.Web.UI.WebControls.Panel currentChildForm;
        static System.Web.UI.WebControls.Panel pnlTest = new System.Web.UI.WebControls.Panel();
        System.Web.UI.WebControls.Panel pnlTest1 = new System.Web.UI.WebControls.Panel();
        System.Web.UI.WebControls.Label salary = new System.Web.UI.WebControls.Label();
        LinkButton job = new LinkButton();
        System.Web.UI.WebControls.Label date = new System.Web.UI.WebControls.Label();

        void createPanelChild(string s, string jd, string d)//
        {
            //pnlTest.Controls.Clear();
            pnlTest.BorderStyle = System.Web.UI.WebControls.BorderStyle.Solid;
            salary.Text = s + " triệu";

            salary.CssClass = "test";
            job.Text = jd;
            job.Click += Job_Click;
            date.Text = "Còn lại: " + d + " ngày";
            date.CssClass = "test";
            pnlTest.CssClass = "test";
            pnlTest.Controls.Add(job);
            pnlTest.Controls.Add(salary);
            pnlTest.Controls.Add(date);

        }

        private void Job_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.example.com");
        }
        
        void loadJobs()
        {
            using (TopCVEntities db = new TopCVEntities())
            {
                int day = 0;
                arr.Clear();
                var rs = from c in db.Jobs.Where(p => p.coID.Equals("VHTECH"))
                         select c.jobID;
                foreach(var rs1 in rs)
                {
                    arr.Add(rs1);
                }
               
               
                for (int i = 0; i < arr.Count; i++)
                {
                    pnlTest.TabIndex = (short)i;
                    int t = int.Parse(arr[i].ToString());
                    Jobs jd = db.Jobs.Find(t);
                    day = checkDate(jd, day);
                    createPanelChild(jd.salary, jd.jobName, day.ToString());
                    pnlTest.CssClass = "child_panel";
                    pnlJobs.Controls.Add(pnlTest);
                }
            }
        }
        void load_JD()
        {
            using (TopCVEntities db = new TopCVEntities())
            {
                lbDate.Text = "  Hạn nộp hồ sơ:";
                var rs = from c in db.Jobs.Where(p => p.jobID == 1) select c.jobID;
                string s = rs.FirstOrDefault().ToString();
                Jobs jd = db.Jobs.Find(1);
                DateTime d = jd.date.Value;
                int day = 0;
                lbJobName.Text = jd.jobName;
                lbCOName.Text = jd.Company.coName;

                lbDate.Text += d.ToString("dd/MM/yyyy");
                lbAddressInfo.Text = lbAddress.Text = "- " + jd.Company.coAddress;
                lbDesc.Text = getContent(jd);
                lbRequire.Text = jd.requirements.Replace("-", "<br>- ");
                lbBenifit.Text = jd.benefits.Replace("-", "<br>- ");
                lbTitleInfo.Text = "Thông tin " + jd.Company.coName;
                day = checkDate(jd, day);
                lbDateInfo.Text = "Còn lại: " + day.ToString() + " ngày.";
                lbScale.Text = jd.Company.scale + " người";
                lbInfo.Text = jd.Company.bio;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            load_Acc();
            usn = Request.QueryString["username"];
            lbUS.Text = usn;
            load_cbxCarrer();
            load_details();
            load_JD();
            load_Share();
            loadJobs();
        }

        void load_Share()
        {
            txtPath.Text = "https://localhost:44311/HomePage";
        }


        protected void txtPath_Click(object sender, EventArgs e)
        {
            Clipboard.SetText("https://localhost:44311/HomePage");
        }

        protected void btnGit_Click(object sender, EventArgs e)
        {
            string url = "https://github.com/ThanhDat20mr";
            string script = "window.open('" + url + "', '_blank');";
            ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", script, true);
        }

        protected void btnFb_Click(object sender, EventArgs e)
        {
            string url = "https://www.facebook.com/thanhdatwtd/";
            string script = "window.open('" + url + "', '_blank');"; 
            ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", script, true); 

        }
    }
    
}