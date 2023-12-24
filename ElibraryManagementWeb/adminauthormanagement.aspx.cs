using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ElibraryManagementWeb
{
    public partial class adminauthormanagement : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {
                Response.Write("<script>alert('Author with this ID already Exist you cannot add another author with same author ID ');</script>");
            }
            else
            {
                addNewAuthor();
            }
        }

        // update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {

                UpdateAuthor();

            }
            else
            {
                Response.Write("<script>alert('Author with this ID already Exist you cannot add another author with same author ID ');</script>");
            }
        }

        // delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExist())
            {

                DeleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('Author with this ID already Exist you cannot add another author with same author ID ');</script>");
            }

        }

        // Go button click
        protected void Button1_Click(object sender, EventArgs e)
        {

        }





        //user define function

        void DeleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Delete from author_master_tbl where author_id='" + TextBox2.Text.Trim() + "' ", con);






                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted successfull');</script>");

                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }


        void UpdateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update  author_master_tbl set author_name=@author_name where author_id='" + TextBox2.Text.Trim() + "' ", con);


                cmd.Parameters.AddWithValue("@author_name", TextBox3.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Updated successfull');</script>");

                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into author_master_tbl(author_id,author_name) values(@author_id,@author_name)", con);

                cmd.Parameters.AddWithValue("@author_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox3.Text.Trim());
                ;


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added  successfull');</script>");

                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }




        bool checkIfAuthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select*from author_master_tbl where author_id='" + TextBox2.Text.Trim() + "' ", con);

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

        void clearForm()
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
        }



    }
}