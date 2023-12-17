<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ElibraryManagementWeb.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid" />
    </section>


    <section>

        <div class="container">
          <%--  First row--%>
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our 3 primary Features</b></p>
                    </center>
                </div>
            </div>
             <%--  First row--%>

     <%--  second row--%>
          <div class="row">

 <%--  first column--%>
           <div class="col-md-4">
        <center>
            <img width="150px" src="imgs/digital-inventory.png" />
            <h4>Digital Book Inventory</h4>
            <p class="text-justify">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </center>
    </div>
              <%--  first column--%>

        <%--  second column--%>

       <div class="col-md-4">
    <center>
        <img  width="150px" src="imgs/search-online.png" />
      
        <h4>Search Books</h4>
        <p class="text-justify">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
            when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
    </center>
</div>
                <%--  second column--%>

   <%--  third column--%>

     <div class="col-md-4">
    <center>
        <img  width="150px" src="imgs/defaulters-list.png" />
       
        <h4>Defaulter List</h4>
        <p class="text-justify">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
            when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
    </center>
</div>
       <%--  third column--%>
</div>
  <%--  second row--%>


        </div>
    </section>


 <section>
     <img src="imgs/in-homepage-banner.jpg"  class="img-fluid" />
     
 </section>


        <section>

        <div class="container">
          <%--  First row--%>
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <p><b>We Have a Simple 3 Step Process </b></p>
                    </center>
                </div>
            </div>
             <%--  First row--%>

     <%--  second row--%>
          <div class="row">

 <%--  first column--%>
           <div class="col-md-4">
        <center>
            <img width="150px" src="imgs/sign-up.png" />
           
            <h4>Sign Up</h4>
            <p class="text-justify">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </center>
    </div>
              <%--  first column--%>

        <%--  second column--%>

       <div class="col-md-4">
    <center>
       
        <img width="150px" src="imgs/search-online.png" />
        <h4>Search Books</h4>
        <p class="text-justify">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
            when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
    </center>
</div>
                <%--  second column--%>

   <%--  third column--%>

     <div class="col-md-4">
    <center>
       
        <img  width="150px" src="imgs/library.png" />
        <h4>Visit Us</h4>
        <p class="text-justify">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
            when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
    </center>
</div>
       <%--  third column--%>
</div>
  <%--  second row--%>





        </div>
    </section>

</asp:Content>
