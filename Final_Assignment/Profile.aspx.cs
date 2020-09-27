using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class Profile : System.Web.UI.Page
    {
        SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userE"] == null)
            {
                Response.Write("<script>window.location = 'Login.aspx';</script>");
            }
            else
            {
                if (!IsPostBack)
                {
                    dbcon = new SQLConnection();
                    DataTable dt = dbcon.getDataSQL("select * from users where email = '" + Session["userE"] + "';");
                    name.Text = dt.Rows[0]["name"].ToString();
                    email.Text = dt.Rows[0]["email"].ToString();
                    password.Text = dt.Rows[0]["password"].ToString();
                    phone.Text = dt.Rows[0]["phone"].ToString();
                    address.Text = dt.Rows[0]["address"].ToString();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            DataTable dt = dbcon.getDataSQL("select * from users where email='" + email.Text + "'");

            if (name.Text.Equals("") || email.Text.Equals("") || password.Text.Equals("") || phone.Text.Equals("") || address.Text.Equals(""))
            {
                Response.Write("<script>alert('Cannot fill in the blanks')</script>");
            }
            else if (email.Text.Equals(Session["userE"].ToString()) || dt.Rows.Count == 0)
            {
                string query = "UPDATE users SET name = '" + name.Text + "', email = '" + email.Text + "', password = '" + password.Text + "', phone = '" + phone.Text + "', address = '" + address.Text + "', dateTime = '" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "' WHERE email = '" + Session["userE"] + "'";
                dbcon.executeSQL(query);
                Response.Write("<script>alert('Update Profile Successfully')</script>");
                Session["userE"] = email.Text;
            }
            else
            {
                Response.Write("<script>alert('User Email is already taken!')</script>");
            }
        }
    }
}