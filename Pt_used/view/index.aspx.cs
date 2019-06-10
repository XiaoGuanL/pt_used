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

namespace Pt_used
{
    public partial class index : System.Web.UI.Page
    {
        SqlHelper data = new SqlHelper();
        SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            bianliang.k1 = data.GetDs("SELECT * FROM [Goods];", "Goods").Tables[0].Rows.Count;
            bianliang.k2 = data.GetDs("SELECT * FROM [Request];", "Request").Tables[0].Rows.Count;

            if (!IsPostBack)
            {
                sqlconn.Open();

                sqlconn.Close();
            }

        }

        protected void btmain2_1_Click(object sender, EventArgs e)
        {

        }

        protected void btmain2_2_Click(object sender, EventArgs e)
        {

        }

        protected void btmain2_3_Click(object sender, EventArgs e)
        {

        }

        protected void btmain2_4_Click(object sender, EventArgs e)
        {

        }

        protected void btmain2_5_Click(object sender, EventArgs e)
        {

        }

        protected void btmain2_6_Click(object sender, EventArgs e)
        {

        }

        protected void Btmain2_1_Click1(object sender, EventArgs e)
        {

            data.GetDs(" select * from [Goods] where Cnumber = {001} (Unumber,Gname,Cnumber,Price,Degree,Gtime,[Add])values('"
                + GridView1.Rows[0].Cells[1].Text + "','"
                + GridView1.Rows[0].Cells[2].Text + "','"
                + GridView1.Rows[0].Cells[3].Text + "','"
                + GridView1.Rows[0].Cells[4].Text + "','"
                + GridView1.Rows[0].Cells[5].Text + "','"
                + GridView1.Rows[0].Cells[6].Text + "','"
                + GridView1.Rows[0].Cells[7].Text + "')", "Goods");
        }

        protected void Btmain2_2_Click1(object sender, EventArgs e)
        {
            data.GetDs("select * from [Goods] where Cnumber = 002", "Goods");
        }

        protected void Btmain2_3_Click1(object sender, EventArgs e)
        {
            data.GetDs("select * from [Goods] where Cnumber = 003", "Goods");
        }

        protected void Btmain2_4_Click1(object sender, EventArgs e)
        {
            data.GetDs("select * from [Goods] where Cnumber = 004", "Goods");
        }

        protected void Btmain2_5_Click1(object sender, EventArgs e)
        {
            data.GetDs("select * from [Goods] where Cnumber = 005", "Goods");
        }

        protected void Btmain2_6_Click1(object sender, EventArgs e)
        {

        }

        protected void bttitle1_Click(object sender, EventArgs e)
        {
            Response.Redirect("xianzhi1.aspx");
        }

        protected void bttitle2_Click(object sender, EventArgs e)
        {
            Response.Redirect("qiugou1.aspx");
        }

        protected void bttitle3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void bttitle4_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign in.aspx");
        }

        protected void bttitle5_Click(object sender, EventArgs e)
        {
            Response.Redirect("user.aspx");
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {

        }
    }
}