<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminEditUser.aspx.cs" Inherits="Final_Assignment.AdminEditUser" %>
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
                                        <label for="example-email" class="col-md-12">Email</label>
                                        <div class="col-md-12">
                                            <asp:TextBox type="email" class="form-control form-control-line" ID="email" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Password</label>
                                        <div class="col-md-12">
                                            <asp:TextBox type="password" class="form-control form-control-line" ID="password" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Phone No</label>
                                        <div class="col-md-12">
                                            <asp:TextBox type="number" class="form-control form-control-line" ID="phone" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Address</label>
                                        <div class="col-md-12">
                                            <asp:TextBox class="form-control form-control-line" TextMode="MultiLine" ID="address" runat="server" Rows="6"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <% if (Session["user_id"] != null)
                                                { %>
                                            <asp:LinkButton><asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Update Profile" OnClick="Button2_Click"/></asp:LinkButton>
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
