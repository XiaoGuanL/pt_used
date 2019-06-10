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
    public partial class login : System.Web.UI.Page
    {
        SqlHelper data = new SqlHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }

        protected void btlogin3_Click(object sender, EventArgs e)
        {
            if(txtlogin1.Text == ""&&txtlogin2.Text == "")
            {
                Response.Write("<script>window.alert('没有输入账号和密码');window.location='login.aspx'</script>");
            }
            else
            {
                SqlDataReader dr;
                dr = data.GetDataReader("select * from  [User] where Unumber='" + txtlogin1.Text.Trim() + "'and Password='" + txtlogin2.Text.Trim() + "'");
                if (dr.Read())
                {
                    Session["UserId"] = dr["Unumber"].ToString();
                    Session["UserName"] = dr["Uname"].ToString();
                    Response.Write("<script>window.alert('欢迎来到二手交易平台');window.location='login.aspx'</script>");
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('您输入的账号或密码错误，请您重新输入正确的账号密码！');window.location='login.aspx'</script>");
                }
            }
        }

        protected void btlogin4_2_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign in.aspx");
        }
    }
}