﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Assignment
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        private SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new SQLConnection();
            DataTable dt = dbcon.getDataSQL("select * from users where email = '" + Session["userE"] + "';");
            if (dt.Rows.Count > 0)
            {
                Session["user_id"] = dt.Rows[0]["id"];
            }
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["userE"] = null;
            Response.Write("<script>window.location = 'Login.aspx';</script>");
        }
    }
}