using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagementWeb
{
    public partial class adminlogin : System.Web.UI.Page
    {

        //Database connection
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select*from admin_login_tbl where username ='" + TextBox1.Text.Trim() + "' and password='" + TextBox2.Text.Trim() + "'; ", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('invalid Credentials');</script>");
                }



            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }




        }






    }
}