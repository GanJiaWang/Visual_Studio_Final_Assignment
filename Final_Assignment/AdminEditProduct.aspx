<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminEditProduct.aspx.cs" Inherits="Final_Assignment.AdminEditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
    <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row justify-content-center">
                    <!-- Column -->
                    <div class="col-md-7">
                        <div class="card">
                            <div class="card-body p-5">
                                <form class="form-horizontal form-material">
                                    <div class="form-group">
                                        <label class="col-md-12">Name</label>
                                        <div class="col-md-12">
                                            <asp:TextBox class="form-control form-control-line" ID="name" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Image</label>
                                        <div class="col-md-12">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Price</label>
                                        <div class="col-md-12">
                                            <asp:TextBox type="number" class="form-control form-control-line" ID="price" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <% if (Session["product_id"] != null)
                                                { %>
                                            <asp:LinkButton><asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Update Product" OnClick="Button2_Click"/></asp:LinkButton>
                                            <%}
                                            else
                                            {%>
                                            <asp:LinkButton><asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Submit" OnClick="Button2_Click"/></asp:LinkButton>
                                            <%} %>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
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
            </div>
</asp:Content>
