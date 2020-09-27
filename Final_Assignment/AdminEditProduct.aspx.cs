using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Final_Assignment
{
    public partial class AdminEditProduct : System.Web.UI.Page
    {
        SQLConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["product_id"] != null)
            {
                if (!IsPostBack)
                {
                    dbcon = new SQLConnection();
                    DataTable dt = dbcon.getDataSQL("select * from products where id = '" + Session["product_id"] + "';");
                    name.Text = dt.Rows[0]["name"].ToString();
                    price.Text = dt.Rows[0]["price"].ToString();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.FileName);
            dbcon = new SQLConnection();
            if (name.Text.Equals("") || price.Text.Equals(""))
            {
                Response.Write("<script>alert('Cannot fill in the blanks')</script>");
            }
            else
            {
                if (Session["product_id"] != null || FileUpload1.HasFile)
                {
                    if (Session["product_id"] != null)
                    {
                        if (FileUpload1.HasFile)
                        {
                            try
                            {
                                FileUpload1.SaveAs(Server.MapPath("upload/") + filename);
                                string query = "update products set name = '" + name.Text + "' , price = '" + price.Text + "', image = '" + filename + "' where ID=" + Session["product_id"] + ";";
                                dbcon.executeSQL(query);
                                Response.Write("<script>alert('Update Product Successfully.');</script>");
                            }
                            catch (Exception ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                            }
                        }
                        else
                        {
                            try
                            {
                                FileUpload1.SaveAs(Server.MapPath("upload/") + filename);
                                string query = "update products set name = '" + name.Text + "' , price = '" + price.Text + "' where ID=" + Session["product_id"] + ";";
                                dbcon.executeSQL(query);
                                Response.Write("<script>alert('Update Product Successfully.');</script>");
                            }
                            catch (Exception ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                            }
                        }
                    }
                    else
                    {

                        try
                        {
                            FileUpload1.SaveAs(Server.MapPath("upload/") + filename);
                            string query = "insert into products(name, image, price) values ('" + name.Text + "','" + filename + "','" + price.Text + "');";
                            dbcon.executeSQL(query);
                            Response.Write("<script>alert('Create Product Successfully.');window.location = 'AdminViewProduct.aspx';</script>");
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.ToString());
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('You have not uploaded any product image')</script>");
                }

            }
        }
    }
}