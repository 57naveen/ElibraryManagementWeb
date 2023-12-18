<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ElibraryManagementWeb.adminbookissuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>

                                </center>
                            </div>
                        </div>
                        <div class="col">
                            <center>
                                <img width="100px" src="imgs/books1.png" />
                            </center>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">


                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Member ID" ID="TextBox3" runat="server"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" placeholder="Book ID" ID="TextBox2" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button1" CssClass="btn btn-secondary" runat="server" Text="go" />
                                    </div>
                                </div>
                            </div>




                        </div>

                        <div class="row">


                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Member Name" ID="TextBox1" ReadOnly="true" runat="server"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" placeholder="Book Name" ID="TextBox4" ReadOnly="true" runat="server"></asp:TextBox>


                                </div>
                            </div>




                        </div>



                        <div class="row">


                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Start Date" ID="TextBox5" TextMode="Date" runat="server"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" placeholder="End Date" ID="TextBox6" TextMode="Date" runat="server"></asp:TextBox>


                                </div>
                            </div>




                        </div>










                        <div class="row">
                            <div class="col-6">

                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-block btn-primary" runat="server" Text="Issue" />


                            </div>
                            <div class="col-6">

                                <asp:Button ID="Button3" CssClass="btn btn-lg btn-block btn-success" runat="server" Text="Return" />


                            </div>
                           
                        </div>



                    </div>
                </div>
                <b><a href="homepage.aspx"><i class="fa-solid fa-circle-arrow-left"></i>Back To Home</a></b>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4>


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
                                <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
