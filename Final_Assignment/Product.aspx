<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Final_Assignment.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--prdt-starts-->
	<div class="prdt"> 
		<div class="container">
			<div class="prdt-top">
				<div class="col-md-12 prdt-left">
					<div class="product-one">
						<asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" runat="server">
                        <ItemTemplate>
						<div class="col-md-4 product-left p-left">
							<div class="product-main simpleCart_shelfItem">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id")%>' CommandName="AddToCart">
								<img class="media-object" src="upload/<%# Eval("image")%>" width="100%" height="28%">
									</asp:LinkButton>
								<div class="product-bottom">
									<h3><%# Eval("name")%></h3>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ <%# Eval("price")%></span></h4>
								</div>
							</div>
						</div>
						</ItemTemplate>
                        </asp:Repeater>
						<div class="clearfix"></div>
					</div>
				</div>	
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--product-end-->
</asp:Content>
