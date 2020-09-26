using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class Cart : System.Web.UI.Page
    {
        private SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userE"] == null)
            {
                Response.Write("<script>window.location = 'Login.aspx';</script>");
            }
            dbcon = new SQLConnection();
            if (!this.IsPostBack)
            {
                DataTable dt = dbcon.getDataSQL("select *, c.quantity * p.price as totalPrice from carts as c inner join products as p on c.product_id = p.id where user_id='" + Session["user_id"] + "';");
                Label1.Text = dt.Rows.Count.ToString();
                Repeater1.DataSource = dt;
                Repeater1.DataBind();

                if (dt.Rows.Count > 0)
                {
                    DataTable dt1 = dbcon.getDataSQL("select sum(quantity * price) as total from carts as c inner join products as p on c.product_id = p.id where user_id='" + Session["user_id"] + "';");
                    Session["totalPayment"] = dt1.Rows[0]["total"];
                    Label2.Text = "$" + Session["totalPayment"].ToString();
                    Session["productCount"] = dt.Rows.Count.ToString();
                }
            }
        }

        protected void Payment_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location = 'Payment.aspx';</script>");
        }
    }
}