<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminViewUser.aspx.cs" Inherits="Final_Assignment.AdminViewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
            <!-- ============================================================== -->
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
                                <h4 class="card-title">Manage Customer</h4>
                                <asp:LinkButton><asp:Button ID="Button1" runat="server" Text="+ Create" CssClass="btn btn-success my-3" OnClick="Button1_Click"/></asp:LinkButton>
                                    <div class="material-icon-list-demo">
                                    <div class="row icons" id="icons">
                                        <asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand1" runat="server">
                                        <ItemTemplate>
                                            <asp:LinkButton CssClass="m-icon col-lg-3 col-md-4 text-dark" ID="LinkButton1" CommandArgument='<%# Eval("id")%>' CommandName="edit" runat="server"><i class="m-r-10 mdi mdi-account mr-3"></i><span class="mr-3"><%# Eval("name")%></span><span>( <%# Eval("email")%> )</span><div class="mt-2"><span class="mt-5"><%# Eval("dateTime")%></span></div></asp:LinkButton>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
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
