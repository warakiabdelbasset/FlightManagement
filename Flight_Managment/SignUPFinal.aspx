<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUPFinal.aspx.cs" Inherits="Flight_Managment.SignUPFinal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
	<link rel="icon" type="image/png" href="Login_css_js/images/icons/favicon.ico"/>

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
       <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="Login_v2/colorlib-regform-5/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Login_v2/colorlib-regform-5/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Login_v2/colorlib-regform-5/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Login_v2/colorlib-regform-5/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Login_v2/colorlib-regform-5/css/main.css" rel="stylesheet" media="all">

    <link href="Style.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script>
        function signup() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please complete the formulaire',
                
            })
        }
        function exist() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Email already exists ',

            })
        }
       
    </script>
    
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50 container-login100" style="background-image: url('Login_css_js/images/bg-01.jpg');">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading " style="background-color:blueviolet;">
                    <h2 class="title">Registration Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST" runat="server">
                        <div class="form-row m-b-55">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc" style="width:12vw;">                                     
                                            <asp:TextBox ID="TextBox1" runat="server" class="input--style-5" type="text" name="first_name"></asp:TextBox>
                                            <label class="label--desc">first name</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc" style="width:12vw; margin-left:-9vw;">                                           
                                            <asp:TextBox ID="TextBox2" runat="server" class="input--style-5" type="text" name="last_name"></asp:TextBox>
                                            <label class="label--desc">last name</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox3" runat="server" class="input--style-5" type="email" name="email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox4" runat="server" class="input--style-5" type="password" name="password"></asp:TextBox>                                   
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">
                                    <div class="col-3">
                                        <div class="input-group-desc">
                                            <asp:TextBox ID="TextBox5" runat="server" class="input--style-5" type="text" name="area_code"></asp:TextBox>
                                           
                                            <label class="label--desc">Area Code</label>
                                        </div>
                                    </div>
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <asp:TextBox ID="TextBox6" runat="server" class="input--style-5" type="text" name="phone"></asp:TextBox>
                                           
                                            <label class="label--desc">Phone Number</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                            <!--<button class="btn btn--radius-2 btn--red" type="submit">Register</button>-->
                            <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn--radius-2 btn--red" type="submit" OnClick="Button1_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="Login_v2/colorlib-regform-5/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Login_v2/colorlib-regform-5/vendor/select2/select2.min.js"></script>
    <script src="Login_v2/colorlib-regform-5/vendor/datepicker/moment.min.js"></script>
    <script src="Login_v2/colorlib-regform-5/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Login_v2/colorlib-regform-5/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->