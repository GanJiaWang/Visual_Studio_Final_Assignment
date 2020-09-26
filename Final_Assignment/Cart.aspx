<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Final_Assignment.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start-ckeckout-->
	<div class="ckeckout">
		<div class="container">
			<div class="ckeck-top heading">
				<h2>CHECKOUT</h2>
			</div>
			<div class="ckeckout-top">
			<div class="cart-items">
			 <h3>My Shopping Bag (<asp:Label ID="Label1" runat="server" Text="Label" />)</h3>
			<div class="in-check" >
				<ul class="unit">
					<li><span>Item</span></li>
					<li><span>Product Name</span></li>		
					<li><span>Quantity</span></li>
					<li><span>Price</span></li>
					<li> </li>
					<div class="clearfix"> </div>
				</ul>
				<asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
				<ul class="cart-header1">
						<li class="ring-in">
							<img src="upload/<%# Eval("image")%>" width="90%" height="28%" class="img-responsive">
						</li>
						<li><span class="name"><%# Eval("name")%></span></li>
						<li><span class="cost"><%# Eval("quantity")%></span></li>
						<li><span>$ <%# Eval("totalPrice")%></span></li>
					<div class="clearfix"> </div>
				</ul>
							</ItemTemplate>
					</asp:Repeater>
				<% if (Session["productCount"] != null){ %>
				<ul class="cart-header" style="border-top: 1px solid #181b2a; padding-bottom: 50px;">
						<li class="ring-in">&nbsp;</li>
						<li><span class="name">&nbsp;</span></li>
						<li><span class="cost">Total : </span></li>
						<li><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
					<div class="clearfix"> </div>
				</ul>
				<asp:LinkButton><asp:Button ID="Payment" runat="server" Text="Payment" class="btn btn-danger btn-lg col-md-12" OnClick="Payment_Click"/></asp:LinkButton><br />
				<% } %>
				</div>
		</div>
	</div>
	<!--end-ckeckout-->
</asp:Content>
