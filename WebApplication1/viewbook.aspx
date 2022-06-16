<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbook.aspx.cs" Inherits="WebApplication1.viewbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="col-md-8 mx-auto">
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
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                    </div>
                </div>

            </div>
            <div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>
        </div>
    </div>
    </div>
    


</asp:Content>
