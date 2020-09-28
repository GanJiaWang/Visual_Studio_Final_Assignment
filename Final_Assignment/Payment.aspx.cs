using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class Payment : System.Web.UI.Page
    {
        private SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            if (Session["userE"] == null)
            {
                Response.Write("<script>window.location = 'Login.aspx';</script>");
            }
            else
            {
            Label1.Text = "$" + Session["totalPayment"].ToString();
            }
        }

        protected void Payment_Click(object sender, EventArgs e)
        {
            DataTable dt = dbcon.getDataSQL("select * from carts where user_id = '" + Session["user_id"] + "'and status=0;");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string query = "UPDATE carts SET status = 1, dateTime = '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "' WHERE user_id = '" + Session["user_id"] + "'and status=0;";
                dbcon.executeSQL(query);
            }
            Session["productCount"] = null;
            Session["totalPayment"] = null;
            DataTable dt1 = dbcon.getDataSQL("select * from users where ID = '" + Session["user_id"] + "';");
            Response.Write("<script>alert('Thank you " + dt1.Rows[0]["name"].ToString() + ", Payment Successfully.');window.location = 'Home.aspx';</script>");
        }
    }
}