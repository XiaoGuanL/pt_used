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
using System.Net;
using System.Net.Mail;

namespace Pt_used.view
{
    public partial class sign_in : System.Web.UI.Page
    {
        SqlHelper data = new SqlHelper();
        SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnStr"].ConnectionString);
        string yzm = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sqlconn.Open();

                sqlconn.Close();
            }
        }

        protected void btemain_Click(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void btview1_Click(object sender, EventArgs e)
        {

        }

        protected void tbmain1_1_Click(object sender, EventArgs e)
        {
           
                string to = txtmain1_1.Text;
                SmtpClient smtp = new SmtpClient("smtp.qq.com");
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                MailAddress from = new MailAddress("1797388758@qq.com");
                MailAddress t = new MailAddress(to);
                MailMessage mail = new MailMessage(from, t);
                mail.Subject = "欢迎来到二手交易平台";
                Random r = new Random();
                yzm = null;
                for (int i = 0; i < 4; i++)
                {
                    yzm += r.Next(0, 10);
                }
                Session["yzm"] = yzm;
                mail.Body = yzm;
                NetworkCredential net = new NetworkCredential("1797388758", "enpnsbuxtnehdfgg");
                smtp.Credentials = net;
                smtp.Send(mail);
        }

        protected void btnnext1_Click(object sender, EventArgs e)
        {
            if (txtmain1_1.Text == "" && txtmain1_2.Text == "")
            {
                Response.Write("<script>window.alert('请验证邮箱');window.location='sign in.aspx'</script>");
            }
            else
            {
                string aa = txtmain1_2.Text;
                if (aa == Session["yzm"].ToString())
                {
                    MultiView1.SetActiveView(view1);
                }
                else
                {
                    Response.Write("<script>window.alert('验证邮箱错误');window.location='sign in.aspx'</script>");
                }
            }
           
        }

        protected void btnnext2_Click(object sender, EventArgs e)
        {
            string sqltest = "select * from [User] where Unumber='" + this.txtmain2_3.Text + "'";
            sqlconn.Open();
            SqlCommand sqlcom = new SqlCommand(sqltest, sqlconn);
            SqlDataReader read = sqlcom.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                if (this.txtmain2_3.Text.Trim() == read["Unumber"].ToString().Trim())
                {
                    Response.Write("<script language='javascript'>alert('该账号已经注册过');</script>");
                    return;
                }
            }
            string sqlstr = "insert into [User] "
                + "(Uname,Sex,Unumber,Phone,Email,QQ,Sno,Adds,Password)"
                + "values('" + txtmain2_1.Text + "','" + txtmain2_2.Text
                + "','" + txtmain2_3.Text + "','" + txtmain2_4.Text + "','" + txtmain2_5.Text
                + "','" + txtmain2_6.Text + "','" + txtmain2_7.Text + "','" + txtmain2_8.Text
                + "','" + txtmain2_9.Text + "')";
            data.RunSql(sqlstr);
            sqlconn.Close();
            Session["Unumber"] = txtmain2_3.Text.Trim();
            if (txtmain2_1.Text ==""&& txtmain2_2.Text==""&& txtmain2_3.Text==""&& txtmain2_4.Text==""&& txtmain2_5.Text==""&& txtmain2_6.Text==""&& txtmain2_7.Text==""&& txtmain2_8.Text==""&& txtmain2_9.Text==""&& txtmain2_10.Text=="")
            {
                Response.Write("<script language='javascript'>alert('请完善信息！');</script>");
            }
            else
            {
                MultiView1.SetActiveView(view2);
            }

        }

        protected void bttologin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}