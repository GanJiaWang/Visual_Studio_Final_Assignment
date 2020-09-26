using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class Login : System.Web.UI.Page
    {
        SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            Session["userE"] = null;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string email = emailTxt.Text.ToString();
            string password = passwordTxt.Text.ToString();

            DataTable dt = dbcon.getDataSQL("select * from users where email = '" + email + "' and password= '" + password + "';");
            if (dt.Rows.Count > 0)
            {
                    Session["userE"] = email;
                    Response.Write("<script>alert('Login Successfully.');window.location = 'Home.aspx';</script>");
            }
            else
            {
                DataTable dt2 = dbcon.getDataSQL("select * from users where email = '" + email + "';");
                if (dt2.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Incorrect Password')</script>");
                }
                else
                {
                    Response.Write("<script>alert('User does not exist')</script>");
                }
            }
        }
    }
}