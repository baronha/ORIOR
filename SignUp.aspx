<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="Sign Up/images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="Scripts/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/Sign Up/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/Sign Up/fonts/iconic/css/material-design-iconic-font.min.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/Sign Up/vendor/css-hamburgers/hamburgers.min.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/Sign Up/vendor/animsition/css/animsition.min.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/Sign Up/vendor/select2/select2.min.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/Sign Up/vendor/daterangepicker/daterangepicker.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/css/util.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/css/SignUp.css"/>
    <script src="Scripts/js/jquery-3.2.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="limiter">
            <div class="container-login100">
                <div class="login100-more" style="background-image: url(Images/hottrend3.png); z-index: -99999;"></div>

                <div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
                    <div class="login100-form validate-form">
                        <span class="login100-form-title p-b-59">Đăng Ký
                        </span>
                        <span class="label-input100"><asp:Label ID="lbThongBaoLoi" runat="server" Text=""></asp:Label></span>
                        <div class="wrap-input100 validate-input" data-validate="Name is required">
                            <span class="label-input100">Họ Và Tên</span>
                            <asp:TextBox class="input100" id="fullName" type="text" name="name" placeholder="Name..." runat="server"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                            <span class="label-input100">Email</span>
                            <asp:TextBox class="input100" ID="Mail" type="text" name="email" placeholder="Email ..." runat="server"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="ID is required">
                            <span class="label-input100">Tên Đăng Nhập</span>
                            <asp:TextBox class="input100" ID="userName" type="text" name="username" placeholder="Tên Đăng Nhập ..." runat="server"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <span class="label-input100">Mật Khẩu</span>
                            <asp:TextBox class="input100" id="pwd" type="text" name="pass" placeholder="*************" runat="server"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Repeat Password is required">
                            <span class="label-input100">Xác Nhận Mật Khẩu</span>
                            <asp:TextBox ID="txtXN" runat="server" class="input100" type="text" name="repeat-pass" placeholder="*************"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="flex-m w-full p-b-33">
                            <div class="contact100-form-checkbox">
                                <input runat="server" class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" />
                                <label class="label-checkbox100" for="ckb1">
                                    <span class="txt1">Tôi đồng ý với 
									<a href="#" class="txt2 hov1">Điều Khoản của Website
                                    </a>
                                    </span>
                                </label>
                            </div>


                        </div>

                        <div class="container-login100-form-btn">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <asp:Button runat="server" class="login100-form-btn button" Text="Đăng Ký" OnClick="SignUp_Click" />
                            </div>

                            <a href="Login.aspx" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">Đăng Nhập
							<i class="fa fa-long-arrow-right m-l-5"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="Sign Up/vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="Sign Up/vendor/animsition/js/animsition.min.js"></script>
        <script src="Sign Up/vendor/bootstrap/js/popper.js"></script>
        <script src="Sign Up/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="Sign Up/vendor/select2/select2.min.js"></script>
        <script src="Sign Up/vendor/daterangepicker/moment.min.js"></script>
        <script src="Sign Up/vendor/daterangepicker/daterangepicker.js"></script>
        <script src="Sign Up/vendor/countdowntime/countdowntime.js"></script>
        <script src="Sign Up/js/main.js"></script>
    </form>
</body>
</html>
