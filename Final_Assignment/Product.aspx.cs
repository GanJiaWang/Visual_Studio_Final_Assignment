using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class Product : System.Web.UI.Page
    {
        private SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            if (!this.IsPostBack)
            {
                DataTable dt = dbcon.getDataSQL("select * from products;");
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (Session["userE"] != null)
            {
                if (e.CommandName == "AddToCart")
                {
                    string product_id = e.CommandArgument.ToString();
                    int quantity = 1;
                    DataTable dt = dbcon.getDataSQL("select * from carts where user_id = '" + Session["user_id"] + "' and product_id= '" + product_id + "';");

                    if (dt.Rows.Count > 0)
                    {
                        int beforeQuantity = (int)dt.Rows[0]["quantity"];
                        int total = quantity + beforeQuantity;
                        string query = "UPDATE carts SET quantity = '" + total + "' WHERE id = '" + dt.Rows[0]["id"] + "'";
                        dbcon.executeSQL(query);
                        Response.Write("<script>alert('Add Item Successfully');</script>");
                    }
                    else
                    {
                        string query = "insert into carts(user_id,product_id,quantity,status,dateTime) values('" + Session["user_id"] + "','" + product_id + "','" + quantity + "','" + 0 + "','" + null + "');";
                        dbcon.executeSQL(query);
                        Response.Write("<script>alert('Add Item Successfully');</script>");
                    }
                }
            }
            else
            {
                    Response.Write("<script>alert('Please login');</script>");
            }
        }
    }
}