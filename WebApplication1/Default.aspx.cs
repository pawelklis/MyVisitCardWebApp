
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        

            try
            {
                visitscount.Text = VisitsType.GetVisitsCount().ToString();

            }
            catch (Exception ex)
            {

            }


            if (!IsPostBack)
            {
                VisitsType.AddVisit(GetIPAddress());
                BindRepeater();
            }
        }

        protected string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }

        void BindRepeater()
        {
            List<ProjectType> lp = DBCOntext.DB().Projects.ToList();


            //DBCOntext db = new DBCOntext();
            //var z = db.Tools.ToList().Find(x=>x.Name=="Aric");
            //z.Name = "Aris";
            //db.SaveChanges();

            lp[0].Active = "active";
            for (int i = 1; i < lp.Count; i++)
            {
                lp[i].Active = "";
            }

            repeterProjects.DataSource = lp;
            repeterProjects.DataBind();

            DataTable dtIndicators = new DataTable();
            dtIndicators.Columns.Add("number");

            for (int i = 0; i < lp.Count; i++)
            {
                dtIndicators.Rows.Add(i);
            }

            Repeatercarouselindicators.DataSource = dtIndicators;
            Repeatercarouselindicators.DataBind();

            //List<SkillsType> ls = new List<SkillsType>();
            //ls.Add(new SkillsType() { Name = "Skill 1", Value = 10 });

            List<SkillsType> ls = DBCOntext.DB().Skills.ToList();

            repeaterSkills.DataSource = ls;
            repeaterSkills.DataBind();

            List<ToolsType> lt = DBCOntext.DB().Tools.ToList(); //new List<ToolsType>();

            repeaterTools.DataSource = lt;
            repeaterTools.DataBind();

        }

        protected void repeaterSkills_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Panel dv = e.Item.FindControl("progressDV") as Panel;
            dv.Style.Add("max-width", dv.ToolTip + "%");
        }
        protected void repeaterTools_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Panel dv = e.Item.FindControl("progressDV") as Panel;
            dv.Style.Add("max-width", dv.ToolTip + "%");
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            MessageType.AddMessage(txName.Text, txEmail.Text, txSubject.Text, txMessage.Text);
        }

        protected void btnDownloadCVPL_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "al", "alert('Soon...')", true);
        }

        protected void btnDownloadCVEN_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "al", "alert('Soon...')", true);
        }
    }
}

