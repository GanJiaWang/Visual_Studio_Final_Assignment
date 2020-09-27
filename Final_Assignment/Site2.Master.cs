using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        private SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            if (Session["admin"] == null)
            {
                Response.Write("<script>window.location = 'AdminLogin.aspx';</script>");
            }
            //DataTable dt = dbcon.getDataSQL("select * from users where email = '" + Session["userE"] + "';");
            //if (dt.Rows.Count > 0)
            //{
            //    Session["user_id"] = dt.Rows[0]["id"];
            //}
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();
        }
    }
}