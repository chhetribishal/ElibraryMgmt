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
                        <div class="row">
                            <div class="col">
                                <hr />
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
                                    <asp:Button ID="Button2" runat="server" Text="Go " class="btn btn-success btn-sm" OnClick="Button2_Click" />

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
                            <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-lg col-12" Text="Issue" OnClick="Button3_Click" />
                        </div>
                        <div class="col-6">
                            
                            <asp:Button ID="Button4" runat="server" class="btn btn-success btn-lg col-12" Text="Return" OnClick="Button4_Click" />
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
                        
                                <hr />
                     
                      

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="MemberID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="MemberName" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="BookID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="BookName" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="IssueDate" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="DueDate" SortExpression="due_date" />
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
