using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class AdminEditUser : System.Web.UI.Page
    {
        SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Write("<script>window.location = 'AdminViewUser.aspx';</script>");
            }
            else if (Session["user_id"] != null)
            {
                if (!IsPostBack)
                {
                    dbcon = new SQLConnection();
                    DataTable dt = dbcon.getDataSQL("select * from users where id = '" + Session["user_id"] + "';");
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
            DataTable dt1 = dbcon.getDataSQL("select * from users where email='" + email.Text + "'");
            if (name.Text.Equals("") || email.Text.Equals("") || password.Text.Equals("") || phone.Text.Equals("") || address.Text.Equals(""))
            {
                Response.Write("<script>alert('Cannot fill in the blanks')</script>");
            }
            else
            {
                if (Session["user_id"] != null)
                {
                    DataTable dt = dbcon.getDataSQL("select * from users where id = '" + Session["user_id"] + "';");
                    var user_email = dt.Rows[0]["email"].ToString();
                    if (email.Text.Equals(user_email) || dt1.Rows.Count == 0)
                    {
                    string query = "UPDATE users SET name = '" + name.Text + "', email = '" + email.Text + "', password = '" + password.Text + "', phone = '" + phone.Text + "', address = '" + address.Text + "', dateTime = '" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "' WHERE id = '" + Session["user_id"] + "'";
                    dbcon.executeSQL(query);
                    Response.Write("<script>alert('Update User Successfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('User Email is already taken!')</script>");
                        email.Text = user_email;
                    }
                }
                else if (dt1.Rows.Count > 0)
                {
                    Response.Write("<script>alert('User Email is already taken!')</script>");
                    email.Text = null;
                }
                else
                {

                    try
                    {
                        string query = "insert into users(name, email, password, address, phone, dateTime) values ('" + name.Text + "','" + email.Text + "','" + password.Text + "','" + address.Text + "','" + phone.Text + "','" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "');";
                        dbcon.executeSQL(query);
                        Response.Write("<script>alert('Create User Successfully.');window.location = 'AdminViewUser.aspx';</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }

            }
        }
    }
}