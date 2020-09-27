using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace Final_Assignment
{
    public partial class AdminEditOrder : System.Web.UI.Page
    {
        private SQLConnection dbcon;
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            var dateTime = Request.QueryString["dateTime"];
            if (dateTime != null)
            {
                if (!this.IsPostBack)
                {
                    DataTable dt1 = dbcon.getDataSQL("select *, c.quantity * p.price as totalPrice from carts as c inner join products as p on c.product_id = p.id where dateTime = '" + dateTime + "'and status = 1;");
                    Repeater1.DataSource = dt1;
                    Repeater1.DataBind();
                }
            }
            else
            {
                Response.Redirect("AdminViewOrder.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var dateTime = Request.QueryString["dateTime"];
            
            DataTable dt = dbcon.getDataSQL("select * from carts where dateTime = '" + dateTime + "' and status=1;");
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string query = "UPDATE carts SET status = 0 WHERE dateTime = '" + dateTime + "' and status=1;";
                    dbcon.executeSQL(query);
                }
            Response.Write("<script>window.location = 'AdminViewOrder.aspx';</script>");
        }
    }
}