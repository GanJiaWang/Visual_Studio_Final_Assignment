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
        }
    }
}