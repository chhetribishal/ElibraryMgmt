<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="WebApplication1.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class=" col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.png" />
                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
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
                                <label class="form-label">Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <label class="form-label">Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                        <br />
                        
                            <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success  col-12 btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <a href="usersignup.aspx"><input  id="Button2" type="button" value="SignUp" class="btn btn-info  col-12 btn-lg" /></a>
                                </div>
                            </div>

                        </div>
                        


                    </div>
                    <a href="homepage.aspx"> << Back To Home</a>
                </div>
                <br />
                
            </div>
        </div>
    </div>
</asp:Content>
