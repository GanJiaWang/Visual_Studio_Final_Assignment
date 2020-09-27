<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final_Assignment.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body> 
	<!--account-starts-->
	<div class="account">
		<div class="container">
		<div class="account-top heading">
				<h2>ACCOUNT</h2>
			</div>
			<div class="account-main">
				<div class="text-center">
					<div class="account-bottom row">
                        <asp:TextBox ID="emailTxt" runat="server" placeholder="Email"></asp:TextBox><br /><br />
                        <asp:TextBox ID="passwordTxt" runat="server" type="password" placeholder="Password"></asp:TextBox>
						<div class="address" style="margin-top: 20px;">
						<asp:LinkButton><asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" /></asp:LinkButton><br /><br />
						<a style="margin: 0px;" href="Register.aspx">Register</a><br /><br />
							<a style="margin: 0px;" href="AdminLogin.aspx">Admin Login</a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--account-end-->
</body>
</html>
</asp:Content>
