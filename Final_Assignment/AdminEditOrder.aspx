<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminEditOrder.aspx.cs" Inherits="Final_Assignment.AdminEditOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Manage Sales Order</h4
                                <div class="mb-3"><asp:Button ID="status" class="btn btn-danger float-right" runat="server" Text="Refund Order" OnClick="Button2_Click"/></div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="text-center">Product Image</th>
                                                <th scope="col" class="text-center">Product Name</th>
                                                <th scope="col" class="text-center">Quantity</th>
                                                <th scope="col" class="text-center">Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                            <tr>
                                            <td class="text-center w-25"><img src="upload/<%# Eval("image")%>" class="img-responsive col-md-10"></td>
                                            <td class="text-center"><%# Eval("name")%></td>
                                            <td class="text-center"><%#  Eval("quantity")%></td>
                                            <td class="text-center">$ <%# Eval("totalPrice")%></td>
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
        </div>
         </div>
</asp:Content>
