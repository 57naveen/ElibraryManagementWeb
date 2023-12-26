using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ElibraryManagementWeb
{
    public partial class adminpublishermanagement : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }


        //Add button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {
                Response.Write("<script>alert('publisher with this ID already Exist you cannot add another author with same author ID ');</script>");
            }
            else
            {
                addNewPublisher();
            }
        }


        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {

                UpdatePublisher();

            }
            else
            {
                Response.Write("<script>alert('publisher with this ID already Exist you cannot add another author with same author ID ');</script>");
            }

        }

        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {

                DeletePublisher();

            }
            else
            {
                Response.Write("<script>alert('publisher with this ID already Exist you cannot add another author with same author ID ');</script>");
            }

        }


        //Go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            publisherbyID();
        }




        //user define function



        void publisherbyID()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select*from publisher_master_tbl where publisher_id='" + TextBox2.Text.Trim() + "' ", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        void DeletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Delete from publisher_master_tbl where publisher_id='" + TextBox2.Text.Trim() + "' ", con);






                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted successfull');</script>");

                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }


        void UpdatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update  publisher_master_tbl set publisher_name=@publisher_name where publisher_id='" + TextBox2.Text.Trim() + "' ", con);


                cmd.Parameters.AddWithValue("@publisher_name", TextBox3.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Updated successfull');</script>");

                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into publisher_master_tbl(publisher_id,publisher_name) values(@publisher_id,@publisher_name)", con);

                cmd.Parameters.AddWithValue("@publisher_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox3.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added  successfull');</script>");

                clearForm();
                GridView1.DataBind();

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

                SqlCommand cmd = new SqlCommand("select*from publisher_master_tbl where publisher_id='" + TextBox2.Text.Trim() + "' ", con);

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