<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="WebApplication1.adminmembermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Details</h3>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>

                            </div>
                        </div>


                    </div>
                    <div class="row">

                        <div class="col-md-3">
                            <label class="form-label">Member ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Text="Go " class="btn btn-secondary btn-sm" />

                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label class="form-label">Full Name</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Bishal" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-5">
                            <label class="form-label">Account status</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" placeholder="Status" runat="server" ReadOnly="True"></asp:TextBox>
                                    <asp:LinkButton runat="server"  class="btn btn-success btn-sm mx-1" Text="A" ><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                    <asp:LinkButton runat="server" class="btn btn-warning btn-sm me-1" Text="P"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                    <asp:LinkButton runat="server" class="btn btn-danger btn-sm me-1" Text="D"><i class="fa-solid fa-circle-xmark"></i></asp:LinkButton>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-3">
                            <label class="form-label">DOB</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" placeholder="DOB" runat="server" Readonly="True"></asp:TextBox>


                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label class="form-label">Contact No</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox9" CssClass="form-control" placeholder="980000000" runat="server" TextMode="phone" Readonly="True"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-5">
                            <label class="form-label">Email ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" placeholder="ABC@adc.com" runat="server" Readonly="True"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                    </div>


                    <br />

                    <div class="row">
                        <div class="col-md-4">
                            <label class="form-label">State</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Bagmati" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-4">
                            <label class="form-label">City</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Kathmandu" runat="server" ReadOnly="True"></asp:TextBox>


                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Pin Code</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="44600" runat="server" ReadOnly="True"></asp:TextBox>


                                </div>
                            </div>
                        </div>

                    </div>
                    <div>
                        <label class="form-label">Full Postal Address</label>
                        <asp:TextBox ID="TextBox11" CssClass="form-control" placeholder="My Home" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                        <div class="form-group"></div>

                    </div>
                    <br />


                    <div class="row">
                        <div class="col-8 mx-auto">
                        <asp:Button ID="Button3" runat="server" class="btn btn-danger " Text="Delete User Permanently" />

                        </div>


                    </div>

                    <br />


                </div>

                <a href="homepage.aspx"><< Back To Home</a>
            </div>
            <br />

            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member List</h3>
                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
