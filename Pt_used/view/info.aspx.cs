using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pt_used.view
{
    public partial class info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["UserId"] == null)
            {
                Response.Write("<script>window.alert('请先登录！');window.location='index.aspx'</script>");
            }
            */
        }

        protected void btmain1_Click(object sender, EventArgs e)
        {

        }

        protected void btmain2_Click(object sender, EventArgs e)
        {

        }

        protected void btmain3_Click(object sender, EventArgs e)
        {

        }

        protected void btmain4_Click(object sender, EventArgs e)
        {

        }

        protected void Btmain1_Click1(object sender, EventArgs e)
        {

        }

        protected void Btmain2_Click1(object sender, EventArgs e)
        {

        }

        protected void Btmain3_Click1(object sender, EventArgs e)
        {

        }

        protected void Btmain4_Click1(object sender, EventArgs e)
        {

        }

        protected void Bttop1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Bttop2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user.aspx");
        }

        protected void Bttop3_Click(object sender, EventArgs e)
        {
            Response.Redirect("info.aspx");
        }

        protected void btbuttom_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
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
    }
}