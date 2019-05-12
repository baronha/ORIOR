<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" type="image/png" href="../Login/images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="../Scripts/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../Scripts/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../Scripts/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="../Scripts/Login/vendor/css-hamburgers/hamburgers.min.css" />
    <link rel="stylesheet" type="text/css" href="../Scripts/Login/vendor/select2/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="../Scripts/css/util.css" />
    <link rel="stylesheet" type="text/css" href="../Scripts/css/Login.css" />
    <script src="Scripts/js/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="../Scripts/Login/images/imglogin.png" alt="IMG"/>
                    </div>

                    <div class="login100-form validate-form">
                        <span class="login100-form-title" style="font-family: Montserrat-Bold">Đăng Nhập<br /> Admin
                        </span>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userName" ErrorMessage="Bạn chưa nhập tên đăng nhập"></asp:RequiredFieldValidator>
                        <div class="wrap-input100 validate-input" data-validate="ID is required">
                            <asp:TextBox class="input100" Style="font-family: Montserrat-Bold" type="text" ID="userName" name="email" placeholder="Tên Đăng Nhập" runat="server"></asp:TextBox>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" ErrorMessage="Bạn chưa nhập mật khẩu"></asp:RequiredFieldValidator>
                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <asp:TextBox class="input100" Style="font-family: Montserrat-Bold" type="password" ID="pwd" name="pass" placeholder="Mật Khẩu" runat="server"></asp:TextBox>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="container-login100-form-btn">
                            <asp:Button class="login100-form-btn" ID="btnLogin" runat="server" Text="Đăng Nhập" OnClick="btnLogin_Click" />
                        </div>
                        <span class="login100-form-title" style="font-family: Montserrat-Bold; margin-top:30px">
                            <asp:Label ID="lbThongBaoLoi" runat="server" Text=""></asp:Label>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <script src="../Scripts/js/jquery-3.2.1.min.js"></script>
        <script src="../Scripts/Login/vendor/bootstrap/js/popper.js"></script>
        <script src="../Scripts/js/bootstrap.min.js"></script>
        <script src="../Scripts/Login/vendor/select2/select2.min.js"></script>
        <script src="../Scripts/Login/vendor/tilt/tilt.jquery.min.js"></script>
        <script>
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <script src="../Scripts/js/Login.js"></script>
    </form>
</body>
</html>
