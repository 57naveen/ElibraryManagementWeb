<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ElibraryManagementWeb.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
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
                                    <h4>User Registration</h4>
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
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="User Id" ID="TextBox8" runat="server"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Password" TextMode="password" ID="TextBox9" runat="server"></asp:TextBox>

                                </div>

                            </div>
                        </div>








                        <div class="row">
                            <div class="col">





                                <div class="form-group">
                                    
                                        <asp:Button ID="Button1"  class="btn btn-success btn-block btn-lg"  type="button" value="Sign Up" runat="server" Text="Sign Up" OnClick="Button1_Click" />

                                 
                                </div>

                            </div>
                        </div>



                    </div>
                </div>

                <b><a href="homepage.aspx"><i class="fa-solid fa-circle-arrow-left"></i> Back To Home</a></b>
            </div>
        </div>
    </div>


</asp:Content>
