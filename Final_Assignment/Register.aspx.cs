using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class Register : System.Web.UI.Page
    {
        private SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            Session["userE"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (fullNameTxt.Text.Equals("") || EmailTxt.Text.Equals("") || Phone.Text.Equals("") || Address.InnerText.Equals("") || PasswordTxt.Text.Equals("") || ConfrimPasswordTxt.Text.Equals(""))
            {
                Response.Write("<script>alert('Cannot fill in the blanks')</script>");
            }
            else if (PasswordTxt.Text != ConfrimPasswordTxt.Text)
            {
                Response.Write("<script>alert('Confrim password not same')</script>");
            }
            else
            {
                DataTable dt = dbcon.getDataSQL("select * from users where email='" + EmailTxt.Text + "'");

                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Email is already taken!')</script>");    
                }
                else
                {
                    try
                    {
                        string query = "insert into users(name, email, password, address, phone, created_at) values ('" + fullNameTxt.Text + "','" + EmailTxt.Text + "','" + PasswordTxt.Text + "','" + Address.InnerText + "','" + Phone.Text + "','" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "');";
                        dbcon.executeSQL(query);
                        Session["userE"] = EmailTxt.Text;
                        Response.Write("<script>alert('Register Successfully.');window.location = 'Home.aspx';</script>");
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