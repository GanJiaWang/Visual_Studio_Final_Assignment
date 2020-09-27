using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            Session["admin"] = null;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = nameTxt.Text.ToString();
            string password = passwordTxt.Text.ToString();

            DataTable dt = dbcon.getDataSQL("select * from admins where name = '" + name + "' and password= '" + password + "';");
            if (dt.Rows.Count > 0)
            {
                Session["admin"] = name;
                Response.Write("<script>alert('Login Successfully.');window.location = 'Admin.aspx';</script>");
            }
            else
            {
                DataTable dt2 = dbcon.getDataSQL("select * from admins where name = '" + name + "';");
                if (dt2.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Incorrect Password')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Admin does not exist')</script>");
                }
            }
        }
    }
}