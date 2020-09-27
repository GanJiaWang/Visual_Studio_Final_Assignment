using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class AdminViewProduct : System.Web.UI.Page
    {
        private SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["product_id"] = null;
            dbcon = new SQLConnection();
            if (!this.IsPostBack)
            {
                DataTable dt1 = dbcon.getDataSQL("select * from products;");
                Repeater1.DataSource = dt1;
                Repeater1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location = 'AdminEditProduct.aspx';</script>");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Session["product_id"] = e.CommandArgument.ToString();
                Response.Write("<script>window.location = 'AdminEditProduct.aspx';</script>");
            }
        }
    }
}