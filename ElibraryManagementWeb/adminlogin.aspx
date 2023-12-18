<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ElibraryManagementWeb.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class ="container">
        <div class="row">
            <div class ="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/adminuser.png" />
                                   
                                </center>
                            </div>
                        </div>

 <div class="row">
     <div class="col">
         <center>
             <h3>Admin Login</h3>
         </center>
     </div>
 </div>

 <div class="row">
     <div class="col">
        <hr />
     </div>
 </div>

   <div class="row">
     <div class="col">
        
       <div class ="form-group">
           <asp:TextBox CssClass="form-control" placeholder="Admin ID" ID="TextBox1" runat="server"></asp:TextBox>

       </div>

          
<div class ="form-group">
    <asp:TextBox CssClass="form-control" placeholder="Password" TextMode="password" runat="server"></asp:TextBox>

</div>


         <div class ="form-group">
             <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Login" />
</div>

        

     </div>
 </div>

                        


                    </div>
                </div>
                 <b><a href="homepage.aspx"> << Back To Home</a></b>
                <br />
               <br />
            </div>
            
        </div>
    </div>
</asp:Content>
