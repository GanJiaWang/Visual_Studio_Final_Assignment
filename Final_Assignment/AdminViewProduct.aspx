<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminViewProduct.aspx.cs" Inherits="Final_Assignment.AdminViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Manage Product</h4>
                                <asp:LinkButton><asp:Button ID="Button1" runat="server" Text="+ Create" CssClass="btn btn-success my-3" OnClick="Button1_Click"/></asp:LinkButton>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="text-center">Product Image</th>
                                                <th scope="col" class="text-center">Product Name</th>
                                                <th scope="col" class="text-center">Product Price</th>
                                                <th scope="col" class="text-center">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                                            <asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                            <td class="text-center w-25"><img src="upload/<%# Eval("image")%>" class="img-responsive col-md-10"></td>
                                            <td class="text-center"><%# Eval("name")%></td>
                                            <td class="text-center"><%# Eval("price")%></td>
                                            <td class="text-center"><asp:LinkButton CssClass="btn btn-info" ID="LinkButton1" CommandArgument='<%# Eval("id")%>' CommandName="edit" runat="server">Edit</asp:LinkButton></td>
                                            </tr>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
        </div>
</asp:Content>
