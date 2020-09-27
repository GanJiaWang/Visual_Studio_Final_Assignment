<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Final_Assignment.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body> 
	<!--account-starts-->
	<div class="account">
		<div class="container">
		<div class="account-top heading">
				<h2>Admin</h2>
			</div>
			<div class="account-main">
				<div class="text-center">
					<div class="account-bottom row">
                        <asp:TextBox ID="nameTxt" runat="server" placeholder="Name"></asp:TextBox><br /><br />
                        <asp:TextBox ID="passwordTxt" runat="server" type="password" placeholder="Password"></asp:TextBox>
						<div class="address" style="margin-top: 20px;">
						<asp:LinkButton><asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" /></asp:LinkButton><br /><br />
							<a style="margin: 0px;" href="Login.aspx">User Login</a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--account-end-->
</body>
</asp:Content>
