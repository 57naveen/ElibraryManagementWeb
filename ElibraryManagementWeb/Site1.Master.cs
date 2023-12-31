﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagementWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["role"].Equals(" "))
                {
                    LinkButton1.Visible = true;//User login link buttton
                    LinkButton2.Visible = true;//sign up link button 

                    LinkButton3.Visible = false;//logout link button
                    LinkButton7.Visible = false;//hello link button 


                    LinkButton6.Visible = true;//admin login link button 
                    LinkButton11.Visible = false;//author management link button 
                    LinkButton12.Visible = false;//publisher management link button 
                    LinkButton8.Visible = false;//book inventory link button 
                    LinkButton9.Visible = false;//book issuing  link button 
                    LinkButton10.Visible = false;//member management  link button 

                }

                else if (Session["role"].Equals("user"))  {

                    LinkButton1.Visible = false;//User login link buttton
                    LinkButton2.Visible = false;//sign up link button 

                    LinkButton3.Visible = true;//logout link button
                    LinkButton7.Visible = true;//hello link button 
                    LinkButton7.Text = "Hello " + Session["username"].ToString();


                    LinkButton6.Visible = true;//admin login link button 
                    LinkButton11.Visible = false;//author management link button 
                    LinkButton12.Visible = false;//publisher management link button 
                    LinkButton8.Visible = false;//book inventory link button 
                    LinkButton9.Visible = false;//book issuing  link button 

                }

                else if (Session["role"].Equals("admin"))
                {

                    LinkButton1.Visible = false;//User login link buttton
                    LinkButton2.Visible = false;//sign up link button 

                    LinkButton3.Visible = true;//logout link button
                    LinkButton7.Visible = true;//hello link button 
                    LinkButton7.Text = "Hello Admin ";


                    LinkButton6.Visible = false;//admin login link button 
                    LinkButton11.Visible = true;//author management link button 
                    LinkButton12.Visible = true;//publisher management link button 
                    LinkButton8.Visible = true;//book inventory link button 
                    LinkButton9.Visible = true;//book issuing  link button 

                }

            }
            catch
            {

            }

        }

        protected void Admin_Login(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void Author_Management(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void Publisher_Management(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void Book_Inventory(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void Book_Issuing(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx"); 
        }

        protected void Member_Management(object sender, EventArgs e)
        {
            Response.Redirect("memberdetails.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
    }
}