<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="Flight_Managment.Login_v3.Login_v3.log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   	<title>Login V3</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="Login_css_js/images/icons/im.png"/>

	<link rel="stylesheet" type="text/css" href="Login_css_js/vendor/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="Login_css_js/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="Login_css_js/fonts/iconic/css/material-design-iconic-font.min.css">

	<link rel="stylesheet" type="text/css" href="Login_css_js/vendor/animate/animate.css">

	<link rel="stylesheet" type="text/css" href="Login_css_js/vendor/css-hamburgers/hamburgers.min.css">

	<link rel="stylesheet" type="text/css" href="Login_css_js/vendor/animsition/css/animsition.min.css">

	<link rel="stylesheet" type="text/css" href="Login_css_js/vendor/select2/select2.min.css">
	
	<link rel="stylesheet" type="text/css" href="Login_css_js/vendor/daterangepicker/daterangepicker.css">

	<link rel="stylesheet" type="text/css" href="Login_css_js/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_css_js/css/main.css">


</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('Login_css_js/images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                        <asp:TextBox ID="TextBox1" class="input100" type="text" name="username" placeholder="Email" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
                        <asp:TextBox ID="TextBox2" class="input100" type="password" name="pass" placeholder="Password" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>

					<div class="container-login100-form-btn">
                        <asp:Button ID="Button1" class="login100-form-btn" runat="server" Text="Login" OnClick="Button1_Click" />
						
					</div>

					<div class="text-center p-t-90">
						<a class="txt1" href="SignUPFinal.aspx">
							Don't have an account? Create one
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	

	<script src="Login_css_js/vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="Login_css_js/vendor/animsition/js/animsition.min.js"></script>

	<script src="Login_css_js/vendor/bootstrap/js/popper.js"></script>
	<script src="Login_css_js/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="Login_css_js/vendor/select2/select2.min.js"></script>

	<script src="Login_css_js/vendor/daterangepicker/moment.min.js"></script>
	<script src="Login_css_js/vendor/daterangepicker/daterangepicker.js"></script>

	<script src="Login_css_js/vendor/countdowntime/countdowntime.js"></script>

	<script src="Login_css_js/js/main.js"></script>

</body>
</html>
