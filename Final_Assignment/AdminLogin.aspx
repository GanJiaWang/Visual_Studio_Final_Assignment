<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Final_Assignment.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, AdminWrap lite admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, Xtreme admin lite design, Xtreme admin lite dashboard bootstrap 4 dashboard template">
    <meta name="description" content="Xtreme Admin Lite Free Version is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
        <title>Admin</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/xtreme-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <div id="main-wrapper" data-layout="vertical">
            <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="Admin.aspx">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                             <!-- dark Logo text -->
                             <img src="assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                             <!-- Light Logo text -->    
                             <img src="assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
			<!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div class="page-wrapper m-0" style="padding-bottom: 7%;">
    <div class="container-fluid">
	<!--account-starts-->
        <div class="row justify-content-center">
	<div class="account">
		<div class="container">
            <div class="col-md-12 mt-5">
                        <div class="card">
                            <div class="card-body p-5">
		    <div class="account-top heading text-center mb-5">
				<h2>Admin</h2>
			</div>
                        <div class="form-horizontal form-material text-center">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <asp:TextBox class="form-control form-control-line" ID="nameTxt" runat="server" placeholder="Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <asp:TextBox class="form-control form-control-line" ID="passwordTxt" runat="server" type="password" placeholder="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group mt-5">
                                        <div class="col-md-12">
                                            <asp:LinkButton><asp:Button CssClass="btn btn-success" ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" /></asp:LinkButton><br /><br />
							                <a style="margin: 0px;" href="Login.aspx">User Login</a>
                                        </div>
                                    </div>
                            </div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
            </div>
	<!--account-end-->
        </div>
        </div>
        </div>
            </div>
    </form>
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="dist/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.js"></script>
</body>
</html>
