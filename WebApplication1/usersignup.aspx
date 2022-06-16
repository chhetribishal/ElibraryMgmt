<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication1.usersignup" %>
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
                                    <h3>MemberSignUp</h3>
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
                                <label class="form-label">Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <label class="form-label">Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="dd-mm-yy" runat="server" TextMode="Date"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label class="form-label">Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="example@gmail.com" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <label class="form-label">Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="+977" runat="server" TextMode="Phone"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <label class="form-label">State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="ProvinceNo1" Value="ProvinceNo1" />
                                        <asp:ListItem Text="Madhes" Value="Madhes" />
                                        <asp:ListItem Text="Bagmati" Value="Bagmati" />
                                        <asp:ListItem Text="Gandaki" Value="Gandaki" />
                                        <asp:ListItem Text="Lumbini" Value="Lumbini" />
                                        <asp:ListItem Text="Karnali" Value="Karnali" />
                                        <asp:ListItem Text="Sudurpaschim" Value="Sudurpaschim" />


                                    </asp:DropDownList>


                                </div>
                            </div>
                             <div class="col-md-4">
                                <label class="form-label">City</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" class="form-control" placeholder="City" runat="server" ></asp:TextBox>
                                </div>

                            </div>
                              <div class="col-md-4">
                                <label class="form-label">Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox7" class="form-control" placeholder="PinCode" runat="server" TextMode="Number"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <label class="form-label">Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                             </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge rounded-pill bg-info text-dark">Login Credential</span>

                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                Member ID
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <label class="form-label">Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                       <br />
                        
                            <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success  col-12 btn-lg" runat="server" Text="SignUp" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        
                        


                    </div>
                    <a href="homepage.aspx"> << Back To Home</a>
                </div>
                <br />
                
            </div>
        </div>
    </div>
</asp:Content>
