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
    public partial class adminbookinventory : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {   

            //This function is used to refersh the data from the database
            GridView1.DataBind();

            fillAuthorPublisherValues();
        }


        //GO BUTTON 
        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }

        //ADD BUTTON
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist())
            {
                Response.Write("<script>alert('book already Exist, try some other book id');</script>");
            }
            else
            {
                addNewBook();
            }
        }

        //UPDATE BUTTON 
        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        //DELETE BUTTON 
        protected void Button2_Click(object sender, EventArgs e)
        {

        }


        //USER DEFINED FUNCTIONS

        bool checkIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select*from book_master_tbl where book_id='" + TextBox1.Text.Trim() + "' OR book_name ='"+TextBox2.Text.Trim()+"' ", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }


        }

        void fillAuthorPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con .Open();
                }

                SqlCommand cmd = new SqlCommand("select author_name from author_master_tbl", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable(); 
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "author_name";
                DropDownList3.DataBind();

                cmd = new SqlCommand("select publisher_name from publisher_master_tbl", con);
                 da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "publisher_name";
                DropDownList2.DataBind();








            }
            catch { 

            }   
        }

        void addNewBook()
        {
             

        }


    }
}