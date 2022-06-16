<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="WebApplication1.adminbookissuing" %>
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
                                    <h3>Book Issuing</h3>
                                    <img width="100px" src="imgs/books1.png" />
                                </center>

                            </div>
                        </div>


                    </div>
                    <div class="row">
                         <div class="col-md-6">
                            <label class="form-label">Member ID</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Member ID" runat="server" TextMode="SingleLine"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Book ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Book ID" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Text="Go " class="btn btn-secondary btn-sm" />

                                </div>
                            </div>
                        </div>
                        </div>


                    <br />

                       <div class="row">
                         <div class="col-md-6">
                            <label class="form-label">Member Name</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Member Name" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Book Name</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Book Name" runat="server" ReadOnly="True"></asp:TextBox>
                                   

                                </div>
                            </div>
                        </div>
                        </div>
                    <br />
                       <div class="row">
                         <div class="col-md-6">
                            <label class="form-label">Start Date</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox5" CssClass="form-control"  runat="server" TextMode="Date"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-6">
                            <label class="form-label">End Date</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                    
                                </div>
                            </div>
                        </div>
                        </div>
                    <br />

                    <div class="row ">
                        <div class="col-6">
                            <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-lg col-12" Text="Issue" />
                        </div>
                        <div class="col-6">
                            
                            <asp:Button ID="Button4" runat="server" class="btn btn-success btn-lg col-12" Text="Return" />
                        </div>

                       
                    </div>

                    <br />


                </div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>
            <br />

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h3>Issued Book List</h3> 
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
