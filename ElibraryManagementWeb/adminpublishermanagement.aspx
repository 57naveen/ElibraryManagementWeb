<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="ElibraryManagementWeb.adminpublishermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <h4>Publisher Details</h4>

                                </center>
                            </div>
                        </div>
                        <div class="col">
                            <center>
                                <img width="100px" src="imgs/publisher.png" />
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
                                        <asp:Button ID="Button1" CssClass="btn btn-secondary" runat="server" Text="go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Publisher Name" ID="TextBox3" runat="server"></asp:TextBox>

                                </div>

                            </div>


                        </div>





                        <div class="row">
                            <div class="col-4">

                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-block btn-success" runat="server" Text="Add" />


                            </div>
                            <div class="col-4">

                                <asp:Button ID="Button3" CssClass="btn btn-lg btn-block btn-primary" runat="server" Text="Update" />


                            </div>
                            <div class="col-4">

                                <asp:Button ID="Button4" CssClass="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />


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
                                    <h4>Publisher List</h4>

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
