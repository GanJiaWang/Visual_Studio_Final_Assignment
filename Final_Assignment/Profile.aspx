<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Final_Assignment.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
         <div class="account">
		<div class="container">
		<div class="account-top heading">
				<h2>PROFILE</h2>
			</div>
               <div class="account-main">
				<div class="text-center">
					<div class="account-bottom row">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><br /><br />
                        <asp:TextBox ID="name" runat="server"></asp:TextBox><br /><br />
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label><br /><br />
                        <asp:TextBox ID="email" runat="server" type="email"></asp:TextBox><br /><br />
						<asp:Label ID="Label3" runat="server" Text="Password"></asp:Label><br /><br />
                        <asp:TextBox ID="password" runat="server" type="password"></asp:TextBox><br /><br />
						<asp:Label ID="Label4" runat="server" Text="Phone No"></asp:Label><br /><br />
                        <asp:TextBox ID="phone" runat="server" type="number"></asp:TextBox><br /><br />
                        <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label><br /><br />
                        <asp:TextBox TextMode="MultiLine" ID="address" runat="server" Columns="30" Rows="5"></asp:TextBox>
						<div class="address" style="margin-top: 20px;">
						<asp:LinkButton><asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click"/></asp:LinkButton><br /><br />
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
            </div>
             </div>
            </div>
</asp:Content>
