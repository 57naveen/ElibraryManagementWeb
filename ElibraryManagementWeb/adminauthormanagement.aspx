﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="ElibraryManagementWeb.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>

                                </center>
                            </div>
                        </div>
                        <div class="col">
                            <center>
                                <img width="100px" src="imgs/writer.png" />
                            </center>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" placeholder="ID" ID="TextBox2" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button1" CssClass="btn btn-secondary" runat="server" Text="go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Author Name" ID="TextBox3" runat="server"></asp:TextBox>

                                </div>

                            </div>


                        </div>





                        <div class="row">
                            <div class="col-4">

                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />


                            </div>
                            <div class="col-4">

                                <asp:Button ID="Button3" CssClass="btn btn-lg btn-block btn-primary" runat="server" Text="Update" OnClick="Button3_Click" />


                            </div>
                            <div class="col-4">

                                <asp:Button ID="Button4" CssClass="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />


                            </div>
                        </div>



                    </div>
                </div>
                <b><a href="homepage.aspx"><i class="fa-solid fa-circle-arrow-left"></i> Back To Home</a></b>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                       

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author List</h4>

                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
