<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Final_Assignment.History" %>
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
					<div class="clearfix text-right" style="margin-top: 15%;"><span><%# Eval("dateTime")%></span></div>
				</ul>
							</ItemTemplate>
					</asp:Repeater>
				</div>
		</div>
	</div>
	<!--end-ckeckout-->
</asp:Content>
