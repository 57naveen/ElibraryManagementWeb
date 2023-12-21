using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagementWeb
{
    public partial class userlogin : System.Web.UI.Page
    {
        //Database connection
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //User Login
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write("<script>alert('button click ');</script>");

            try
            {
               SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select*from member_master_tbl where member_id='"+TextBox1.Text.Trim()+"' and password='"+ TextBox2.Text.Trim() + "'; ", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if(dr.HasRows)
                {
                    while(dr.Read()) {
                        Response.Write("<script>alert('Login Successful');</script>");

                        Session["username"] = dr.GetValue(8).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] ="user";
                        Session["status"] = dr.GetValue(10).ToString();



                    }

                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid Credentials');</script>");
                }



            }
            catch (Exception ex) 
            {

            }   


        }




    }
}