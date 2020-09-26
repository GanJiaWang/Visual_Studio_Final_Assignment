<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Final_Assignment.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body> 
	<!--register-starts-->
	<div class="register">
		<div class="container">
			<div class="register-top heading">
				<h2>REGISTER</h2>
			</div>
			<div class="register-main">
				<div class="text-center">
                    <asp:TextBox ID="fullNameTxt" runat="server" placeholder="Name"></asp:TextBox><br /><br />
                    <asp:TextBox ID="EmailTxt" runat="server" placeholder="Email Address" type="email"></asp:TextBox><br /><br />
                    <asp:TextBox ID="PasswordTxt" runat="server" placeholder="Password" type="password"></asp:TextBox><br /><br />
                    <asp:TextBox ID="ConfrimPasswordTxt" runat="server" placeholder="Confrim password" type="password"></asp:TextBox><br /><br />
					 <asp:TextBox ID="Phone" runat="server" placeholder="Phone Number" type="number"></asp:TextBox><br /><br />
					<textarea runat="server" placeholder="Address" id="Address" cols="20" rows="5"></textarea>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="address submit text-center" style="margin-top: 20px;">
                <asp:LinkButton><asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button1_Click" /></asp:LinkButton><br /><br />
				<a style="margin: 0px;" href="Login.aspx">Back</a>
			</div>
		</div>
	</div>
	<!--register-end-->
</body>
</html>
</asp:Content>
