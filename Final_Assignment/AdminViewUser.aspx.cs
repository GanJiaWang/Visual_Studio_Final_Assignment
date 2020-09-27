using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class AdminViewUser : System.Web.UI.Page
    {
        private SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user_id"] = null;
            
            dbcon = new SQLConnection();
            if (!this.IsPostBack)
            {
                DataTable dt = dbcon.getDataSQL("select * from users;");
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Session["user_id"] = e.CommandArgument.ToString();
                Response.Write("<script>window.location = 'AdminEditUser.aspx';</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location = 'AdminEditUser.aspx';</script>");
        }
    }
}