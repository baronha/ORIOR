<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSideBar.ascx.cs" Inherits="Admin_UC_ucSideBar" %>
<link rel="stylesheet" href="../../Scripts/css/Admin.css" />
<link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
<div class="sidebar" data-color="purple" data-image="../../Images/sidebar-5.jpg">
    <img src="../../Images/sidebar-5.jpg" class="sidebar-background" />
    <div class="sidebar-wrapper">
        <div class="logo">
            <a href="" class="simple-text">ORIOR
            </a>
        </div>

        <ul class="nav">
            <li>
                <a runat="server" href="/Admin/ThongKe.aspx">
                    <i class="pe-7s-user"></i>
                    <p>Thống Kê</p>
                </a>
            </li>
            <li class="">
                <a runat="server" href="/Admin/ThemSP.aspx">
                    <i class="pe-7s-graph"></i>
                    <p>Thêm Sản Phẩm</p>
                </a>
            </li>
            <li>
                <a href="/Admin/SuaSanPham.aspx">
                    <i class="pe-7s-note2"></i>
                    <p>Sửa Sản Phẩm</p>
                </a>
            </li>
            <li>
                <a href="/Admin/DonDatHang.aspx">
                    <i class="pe-7s-note2"></i>
                    <p>Đơn Đặt Hàng</p>
                </a>
            </li>
            <li class="active-pro">
                <asp:LinkButton ID="lnkDX" runat="server" OnClick="lnkDX_Click"><p>Đăng Xuất</p></asp:LinkButton>
            </li>
        </ul>
    </div>
</div>
<script src="../../Scripts/js/bootstrap.min.js"></script>

