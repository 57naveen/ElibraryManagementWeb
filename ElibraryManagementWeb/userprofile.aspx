<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ElibraryManagementWeb.userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status</span>
                                    <asp:Label ID="Label1" class="badge badge-pill badge-info" runat="server" Text="Label"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox2" runat="server"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Date of Birth" TextMode="Date" ID="TextBox3" runat="server"></asp:TextBox>

                                </div>

                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Contact Number" ID="TextBox1" runat="server"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Email ID" TextMode="Email" ID="TextBox4" runat="server"></asp:TextBox>

                                </div>

                            </div>
                        </div>




                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>

                                </div>
                            </div>

                            <div class="col-md-4">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="City" ID="TextBox6" runat="server"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="PinCode" TextMode="Number" ID="TextBox7" runat="server"></asp:TextBox>

                                </div>

                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Full Address" ID="TextBox5" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>

                                </div>
                            </div>


                        </div>

                        <div class="row">



                            <div class="col">
                                <center>
                                    <span class="badge badge-pill badge-info">Login Credentials</span>
                                </center>
                                <br />

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="User Id" ID="TextBox8" runat="server" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-4">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Old Password" TextMode="password" ReadOnly="true" ID="TextBox9" runat="server"></asp:TextBox>

                                </div>


                            </div>

                            <div class="col-md-4">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="New Password" TextMode="password" ID="TextBox10" runat="server"></asp:TextBox>

                                </div>

                            </div>
                        </div>




                        class="btn btn-primary btn-block btn-lg"



                        <div class="row">
                            <div class="col-8 mx-auto">


                                <div class="form-group">
                                    <center>

                                        <asp:Button ID="Button1"   class="btn btn-primary btn-block btn-lg" runat="server" Text="Button" />
                                        
                                    </center>
                                </div>

                            </div>
                        </div>



                    </div>
                </div>

                <b><a href="homepage.aspx"><< Back To Home</a></b>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books1.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Bookse</h4>

                                    <asp:Label ID="Label2" class="badge badge-pill badge-info" runat="server" Text="Info about book due date"></asp:Label>
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
