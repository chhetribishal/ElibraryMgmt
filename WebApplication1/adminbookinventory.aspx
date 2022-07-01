<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="WebApplication1.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <%--<script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });



        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>--%>
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
                                    <h3>Book Details</h3>
                                    <img width="100px" id="imgview" src="bookinventory/TheoryOfEverything.jpg" />
                                </center>

                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload class="form-control" ID="FileUpload1" onchange="readURL(this);" runat="server"></asp:FileUpload>
                            </div>
                        </div>



                        <div class="row">

                            <div class="col-md-3">
                                <label class="form-label">Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="ID" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button2" runat="server" Text="Go " class="btn btn-primary btn-sm" OnClick="Button2_Click" />

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-9">
                                <label class="form-label">Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="The power of your Subconscious Mind(Paperback)" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>

                            </div>



                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label class="form-label">Langauge</label>
                                <div class="form-group">

                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="Nepali" Value="Nepali" />
                                        <asp:ListItem Text="Hindi" Value="Hindi" />
                                        <asp:ListItem Text="Germanic" Value="German" />
                                    </asp:DropDownList>


                                </div>
                                <label class="form-label">Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                    </asp:DropDownList>
                                </div>

                            </div>


                            <div class="col-md-4">
                                <label class="form-label">Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="A1" Value="a1" />
                                        <asp:ListItem Text="a2" Value="a2" />
                                    </asp:DropDownList>
                                </div>
                                <label class="form-label">Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>



                            <div class="col-md-4">
                                <label class="form-label">Genre</label>
                                <div class="form-group">
                                    <asp:ListBox ID="ListBox1" runat="server" Rows="5" SelectionMode="Multiple">
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Self Help" Value="Self Help" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                        <asp:ListItem Text="Wellness" Value="Wellness" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                        <asp:ListItem Text="Romance" Value="Romance" />
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />
                                        <asp:ListItem Text="Thriller" Value="Thriller" />
                                        <asp:ListItem Text="Art" Value="Art" />
                                        <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                        <asp:ListItem Text="Health" Value="Health" />
                                        <asp:ListItem Text="History" Value="History" />
                                        <asp:ListItem Text="Math" Value="Math" />
                                        <asp:ListItem Text="Textbook" Value="Textbook" />
                                        <asp:ListItem Text="Science" Value="Science" />
                                        <asp:ListItem Text="Travel" Value="Travel" />
                                    </asp:ListBox>
                                </div>
                            </div>


                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label class="form-label">Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Book Cost(per unit in$)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Book Cost(per unit)" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <br />


                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Book Cost(per unit)" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pages" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />
                        <div class="row">
                            <div class="col-md-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button ID="Button1" class="btn btn-lg col-12 btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="Button3" class="btn btn-lg col-12 btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="Button4" class="btn btn-lg col-12 btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>

                <a href="homepage.aspx"><< Back To Home</a>
            </div>
            


      




            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Book Inventory List</h3>
                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id">

                                            <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="conatiner-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    <span>Author-</span><asp:Label ID="Label2" runat="server" Text='<%# Eval("author_name") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| <span>Genre-</span><asp:Label ID="Label3" runat="server" Text='<%# Eval("genre") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| <span>Language-</span><asp:Label ID="Label4" runat="server" Text='<%# Eval("language") %>' Font-Bold="True"></asp:Label>

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    <span>Publisher-</span><asp:Label ID="Label5" runat="server" Text='<%# Eval("publisher_name") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| <span>PublishDate-</span><asp:Label ID="Label6" runat="server" Text='<%# Eval("publish_date") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| <span>Pages-</span><asp:Label ID="Label7" runat="server" Text='<%# Eval("no_of_pages") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| <span>Edition-</span><asp:Label ID="Label8" runat="server" Text='<%# Eval("edition") %>' Font-Bold="True"></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <span>Cost-</span><asp:Label ID="Label9" runat="server" Text='<%# Eval("book_cost") %>' Font-Bold="true"></asp:Label>
                                                                    &nbsp;| <span>ActualStock-</span><asp:Label ID="Label10" runat="server" Text='<%# Eval("actual_stock") %>' Font-Bold="true"></asp:Label>
                                                                    &nbsp;| <span>Available-</span><asp:Label ID="Label11" runat="server" Text='<%# Eval("current_stock") %>' Font-Bold="true"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <span>Description-</span><asp:Label ID="Label12" runat="server" Text='<%# Eval("book_description") %>' Font-Bold="True" Font-Italic="True" Font-Size="Smaller"></asp:Label>
                                                                </div>

                                                            </div>

                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

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
