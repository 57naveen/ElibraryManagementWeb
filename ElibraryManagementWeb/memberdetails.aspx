<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="memberdetails.aspx.cs" Inherits="ElibraryManagementWeb.memberdetails" %>

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
                                    <h4>Member Details</h4>

                                </center>
                            </div>
                        </div>
                        <div class="col">
                            <center>
                                <img width="100px" src="imgs/generaluser.png" />
                            </center>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">


                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" placeholder="ID" ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton4" CssClass="btn btn-secondary" runat="server" Text="GO" OnClick="LinkButton4_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ReadOnly="true" placeholder="FULL NAME" ID="TextBox2" runat="server"></asp:TextBox>


                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ReadOnly="true" placeholder="STATUS" ID="TextBox7" runat="server"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success mr-1" runat="server" Text="A" OnClick="LinkButton1_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning mr-1" runat="server" Text="A" OnClick="LinkButton2_Click"><i class="fa-regular fa-circle-pause"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger mr-1" runat="server" Text="A" OnClick="LinkButton3_Click"><i class="fa-solid fa-circle-xmark"></i></asp:LinkButton>
                                    </div>

                                </div>

                            </div>



                        </div>

                        <div class="row">


                            <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="DOB" ID="TextBox1" ReadOnly="true" runat="server"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" placeholder="Contact No" ID="TextBox4" ReadOnly="true" runat="server"></asp:TextBox>


                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Email ID" ID="TextBox8" ReadOnly="true" runat="server"></asp:TextBox>

                                </div>

                            </div>




                        </div>



                        <div class="row">


                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="State" ReadOnly="true" ID="TextBox5" runat="server"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" placeholder="City" ReadOnly="true" ID="TextBox6" runat="server"></asp:TextBox>


                                </div>
                            </div>


                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" placeholder="Pincode" ReadOnly="true" ID="TextBox9" runat="server"></asp:TextBox>


                                </div>
                            </div>




                        </div>

                        <div class="row">


                            <div class="col-md-12">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Full Postal Address" ReadOnly="true" TextMode="MultiLine" ID="TextBox10" Rows="2" runat="server"></asp:TextBox>

                                </div>

                            </div>






                        </div>



                        <div class="row">
                            <div class="col-8 mx-auto">

                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently " OnClick="Button2_Click" />


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
                                    <h4>Member List</h4>


                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" SortExpression="member_id" ReadOnly="True" />
                                        <asp:BoundField DataField="full_name" HeaderText="NAME" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
