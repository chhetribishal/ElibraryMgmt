<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="WebApplication1.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
      $(document).ready(function () {

      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         
      });
       //$(document).ready(function () {
       //    $('.table').dataTable();
       //});

   </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Authour Details</h3>
                                    <img width="100px" src="imgs/writer.png" />
                                </center>

                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="form-label">Author ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Text="Go " class="btn btn-secondary btn-sm" OnClick="Button2_Click" />

                                </div>
                            </div>
                        </div>



                        <div class="col-md-8">
                            <label class="form-label">Author Name</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Author Name" runat="server" TextMode="SingleLine"></asp:TextBox>
                            </div>

                        </div>
                    </div>





                    <br />


                    <div class="row ">
                        <div class="col-4">
                            <asp:Button ID="Button3" runat="server" class="btn btn-success btn-lg col-12" Text="Add" OnClick="Button3_Click" />
                        </div>
                        <div class="col-4">
                            
                            <asp:Button ID="Button4" runat="server" class="btn btn-warning btn-lg col-12" Text="Update" OnClick="Button4_Click" />
                        </div>

                        <div class="col-4">
                            <asp:Button ID="Button5" runat="server" class="btn btn-danger btn-lg col-12" Text="Delete" OnClick="Button5_Click" />

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
                                    <h3>
                                         Author List
                                    </h3>
                                   
                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
