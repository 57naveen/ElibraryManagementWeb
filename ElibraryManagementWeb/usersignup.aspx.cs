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
    public partial class usersignup : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
               SqlConnection con = new SqlConnection(strcon);

                if(con.State == ConnectionState.Closed )
                {
                    con.Open();
                }




            }catch (Exception ex)
            {

            }



        }
    }
}