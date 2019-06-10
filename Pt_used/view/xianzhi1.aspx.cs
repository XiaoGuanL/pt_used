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
    public partial class xianzhi1 : System.Web.UI.Page
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

        protected void btphoto_Click(object sender, EventArgs e)
        {

        }

        protected void btfabu_Click(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Write("<script>window.alert('无法发布，请登录！');window.location='index.aspx'</script>");
            }
            else
            {
                bianliang.k1++;
                string dt = DataSetDateTime.Local.ToString();
            data.RunSql("insert into  [Goods](Gname,Cnumber,Price,[Add],Degree,Gtime,Unumber,Gnumber)values('" + txtname.Text + "','" + txtleibie.Text + "','" + txtjiage.Text + "','" + txtmiaoshu.Text + "','" + txtchengdu.Text + "','"+dt+ "','" + Session["UserId"].ToString() + "','" + bianliang.k1 + "')");
            Response.Redirect("index.aspx");
            }
        }
    }
}