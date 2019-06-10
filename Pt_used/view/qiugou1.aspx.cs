using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace Pt_used.view
{
    public partial class qiugou1 : System.Web.UI.Page
    {
        SqlHelper data = new SqlHelper();
        SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sqlconn.Open();

                sqlconn.Close();
            }
        }

        protected void btfabu2_Click(object sender, EventArgs e)
        {
            if(Session["UserId"]==null)
            {
                Response.Write("<script>window.alert('无法发布，请登录！');window.location='index.aspx'</script>");
            }
            else
            { 
            bianliang.k2++;
            string dt = DateTime.Now.ToString();
            data.RunSql("insert into  [Request](Gname,Cnumber,Price,[Add],Degree,Rtime,Unumber,Rnumber)values('" + txtname.Text + "','" + txtleibie.Text + "','" + txtjiage.Text + "','" + txtmiaoshu.Text + "','" + txtchengdu.Text + "','"+dt+ "','"+Session["UserId"].ToString()+"','"+bianliang.k2+"')");
            Response.Redirect("index.aspx");
            }
        }
    }
}