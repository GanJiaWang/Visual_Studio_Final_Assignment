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
    public partial class AdminViewOrder : System.Web.UI.Page
    {
        private SQLConnection dbcon;
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            if (!this.IsPostBack)
            {
                int i = 0, j = 1;
                DataTable dt1 = dbcon.getDataSQL("select dateTime from carts where status=1 group by dateTime order by dateTime desc;");
                foreach (DataRow dr in dt1.Rows)
                {
                    DataTable dt2 = dbcon.getDataSQL("select u.* from users as u left join carts as c on u.ID = c.user_id where c.dateTime='" + dt1.Rows[i]["dateTime"] + "' order by c.dateTime desc;");
                    table.Append("<tr>");
                    table.Append("<td>" + j + "</td>");
                    table.Append("<td>" + dt2.Rows[0]["name"] + "</td>");
                    table.Append("<td class=\"text-center\">" + dt2.Rows[0]["email"] + "</td>");
                    table.Append("<td class=\"text-center\">" + dr["dateTime"].ToString() + "</td>");
                    table.Append("<td><a class=\"btn btn-info\" href = 'AdminEditOrder.aspx?dateTime=" + dt1.Rows[i]["dateTime"] + "'>Edit</a></td>");
                    table.Append("<tr>");
                    i++; 
                    j++;
                }
                Panel1.Controls.Add(new Label { Text = table.ToString() });
            }
        }
    }
}