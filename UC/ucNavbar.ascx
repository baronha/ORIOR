<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucNavbar.ascx.cs" Inherits="ucNavbar" %>
<link rel="stylesheet" href="../Scripts/css/bootstrap.min.css" />
<link rel="stylesheet" href="../Scripts/css/Default.css" />
<script src="../Scripts/js/jquery-3.2.1.min.js"></script>
<script src="../Scripts/js/bootstrap.min.js"></script>
<script src="../Scripts/js/rior.js"></script>
<link href="../Scripts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto&amp;subset=vietnamese" rel="stylesheet">

<style>
    .header-right {
        float: right;
    }

        .header-right .card-bag {
            position: relative;
            text-align: center;
        }

        .header-right .card-bag {
            display: inline-block;
        }

        .header-right img {
            max-width: 100%;
        }

        .header-right img {
            vertical-align: middle;
            border-style: none;
        }

    div .header-right .card-bag {
        position: relative;
        text-align: center;
    }

    .card-bag span {
        position: absolute;
        width: 23px;
        height: 23px;
        left: -7px;
        bottom: -7px;
        padding-top: 3px;
        border-radius: 50px;
        background: #414141;
        font-size: 12px;
        color: #fff;
    }

    .header-right .search {
        margin-left: 20px;
    }

        .header-right .search img {
            padding-top: 10px;
        }

    .plh3 {
        font-family: 'Roboto', sans-serif;
        font-size: 50px;
        line-height: 1.2;
        height: 100%;
        color: #333;
        padding: 0px 30px 0px 0px;
        width: calc(100% - 70px);
        background-color: transparent;
        border: none;
        outline: none;
    }

    @media (max-width: 767px) {
        .plh3,
        .wrap-search-header button {
            font-size: 30px;
        }

        .wrap-search-header {
            height: 90px;
        }
    }

    @media (max-width: 575px) {
        .plh3,
        div .wrap-search-header button {
            font-size: 20px;
        }

        div .wrap-search-header button {
            width: 40px;
        }

        div .wrap-search-header {
            height: 80px;
        }
    }

    div .wrap-search-header {
        width: 960px;
        max-width: 100%;
        height: 120px;
        border: 2px solid #e6e6e6;
        background: #fff;
    }

    .flex-c-m {
        justify-content: center;
        align-items: center;
    }

    div .wrap-search-header button {
        font-size: 50px;
        color: #333;
        width: 70px;
        height: 100%;
    }

        div .wrap-search-header button:hover {
            color: #6c7ae0;
        }

    button {
        outline: none;
        border: none;
        cursor: pointer;
        background: transparent;
    }

    .btn-hide-modal-search {
        position: absolute;
        padding: 5px;
        right: 0;
        top: -45px;
        opacity: 0.8;
    }

        .btn-hide-modal-search:hover {
            opacity: 1;
        }
</style>
<div class="modal-search-header flex-w flex-c-m trans-04 js-hide-modal-search">
    <div class="container-search-header">
        <a class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
            <i style="color: black" class="fa fa-times"></i>
        </a>
        <div class="wrap-search-header flex-w p-l-15">
            <button class="flex-c-m trans-04">
                <i class="fa fa-search"></i>
            </button>
            <asp:TextBox runat="server" ID="txtSearch" class="plh3" type="text" name="search" placeholder="Tìm kiếm..." OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
        </div>
    </div>
</div>
<div class="container">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
            <i class="fa fa-bars" style="background: white;"></i>
        </button>
        <a href="#" class="navbar-brand lamp ">
            <img class="on onok" src="../Images/logo.png">
            <img class="off offok" src="../Images/logooff.png">
        </a>
        <a class="navbar-brand page-scroll" href="../Default.aspx">R I<span class="light"> O R</span>
        </a>
    </div>
    <div class="navbar-header navbar-right">
        <asp:HyperLink NavigateUrl="~/Login.aspx" CssClass="navbar-brand" runat="server">
            <asp:Label ID="lbTenDangNhap" runat="server" Text="Đăng Nhập"></asp:Label>
        </asp:HyperLink>
        <asp:LinkButton ID="lbtnDX" runat="server" OnClick="lbtnDX_Click">
            <i style="font-size:30px" class="fa fa-sign-out navbar-brand"></i>
        </asp:LinkButton>
        <div class="header-right">
            <div style="cursor: pointer" class="card-bag js-show-cart">
                <img src="../Images/bag.png" alt="">
                <asp:Label ID="lbGioHang" runat="server" Text="0"></asp:Label>
            </div>
            <a href="#" class="search js-show-modal-search">
                <img src="../Images/search.png" alt="">
            </a>
        </div>
    </div>
    <div class="collapse navbar-collapse navbar-main-collapse">
        <asp:DataList ID="dtlMenu" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <ul class="nav navbar-nav">
                    <li>
                        <asp:HyperLink ID="HyperLink" runat="server" NavigateUrl='<%# "../Room.aspx?MaMenu="+Eval("MaMenu") %>' Text='<%# Eval("TenMenu") %>'></asp:HyperLink>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
