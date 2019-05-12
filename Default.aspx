<%@ Page Title="" Language="C#" MasterPageFile="~/OriorStore.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />
    <link href="Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Scripts/css/Default.css" rel="stylesheet" />
    <link href="Scripts/css/animate.css" rel="stylesheet" />
    <script src="Scripts/js/bootstrap.min.js"></script>
    <link href="Scripts/css/sliderDefault.css" rel="stylesheet" />
    <link href="Scripts/css/hover.css" rel="stylesheet" />
    <style>
        .intro {
            display: table;
            width: 100%;
            height: 95vh;
            padding: 100px 0;
            text-align: center;
            color: #fff;
            background: url(../images/intro-bgg.jpg) no-repeat bottom center scroll;
            background-color: #000;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            background-size: cover;
            -o-background-size: cover;
            top: 0;
            left: 0;
            z-index: -1;
            right: 0;
            width: 100%;
            min-height: 100%;
        }

        .img {
            max-width: 100%;
        }

        .block1:hover {
            text-decoration: none;
        }

        .opacity {
            opacity: 0;
        }
    </style>
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 wow bounceInDown">
                        <h1 class="brand-heading">O R I O R</h1>
                        <p class="intro-text">
                            Khi muốn thay đổi suy nghĩ
                            <br />
                            Hãy thử thay đổi không gian sống.
                        </p>
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="sc-CtfFt gonsong">
                <div class="sc-bdVaJa fillcolor">
                    <svg width="100%" height="150px" fill="none">
                        <path class="" fill="white" d="M 0 64.1342 C 322.687 99.0008 586.929 2.99691 912.587 33.4508 C 1238.25 63.9048 1307.95 71.1445 1440 64.1342 V 356.134 H 0 V 64.1342 Z">
                            <animate repeatCount="indefinite" fill="freeze" attributeName="d" dur="10s" values="M0 95.654C277.431 -69.1705 408 11.654 720 95.654C1032 179.654 1207.5 144.328 1440 95.654V387.654H0V95.654Z; M0 51.8168C277 169.163 433 131.471 720 51.8168C1007 -27.8372 1199 -5.83717 1440 51.8168V343.817H0V51.8168Z; M0 69.3411C342 69.3411 652 -51.313 994 25.687C1336 102.687 1354 103.687 1440 69.3411V361.341H0V69.3411Z; M0 95.654C277.431 -69.1705 408 11.654 720 95.654C1032 179.654 1207.5 144.328 1440 95.654V387.654H0V95.654Z&nbsp; "></animate>
                        </path></svg>
                </div>
            </div>
        </div>
    </header>
    <section id="about" class="intro-section spad pb-0">
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h2 style="font-weight: bold">New Product</h2>
                    <div class="ngoisao"><i class="fa fa-star"></i></div>
                </div>
            </div>
        </div>
        <div class="intro-slider">
            <ul class="slidee">
                <asp:Repeater ID="rptNP" runat="server">
                    <ItemTemplate>
                        <li>
                            <div class="intro-item">
                                <figure>
                                    <asp:Image ID="imgPD" CssClass="img" runat="server" ImageUrl='<%# "~/Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' />
                                </figure>
                                <div class="product-info" style="font-family: 'Raleway', sans-serif; font-smoothing: antialiased;">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../DetailProducts.aspx?MaSP="+Eval("MaSP") %>' CssClass="h5 a" Text='<%# Eval("TenSP") %>'></asp:HyperLink>
                                    <br />
                                    <asp:Label ID="lbDonGia" runat="server" Text='<%#:string.Format("{0:N0}", Eval("DonGia")) + " VNĐ" %>' CssClass="p"></asp:Label>
                                    <br />
                                </div>
                            </div>

                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

        </div>
        <div class="container">
            <div class="scrollbar">
                <div class="handle">
                    <div class="mousearea"></div>
                </div>
            </div>
        </div>
    </section>
    <div class="sec-banner bg0 p-t-80 p-b-50">
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h2 style="font-weight: bold">Best Seller</h2>
                    <div class="ngoisao"><i class="fa fa-star"></i></div>
                </div>
            </div>
            <div class="row">
                <asp:Repeater ID="rptBS" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 col-xs-12 col-sm-6 p-b-30 m-lr-auto">
                            <div class="block1 wrap-pic-w">
                                <asp:Image ID="imgBS" CssClass="img" runat="server" ImageUrl='<%# "~/Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' />
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "../DetailProducts.aspx?MaSP="+Eval("MaSP") %>' CssClass="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                                    <div class="block1-txt-child1 flex-col-l">
                                        <span class="block1-name ltext-102 trans-04 p-b-8">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                        </span>

                                        <span class="block1-info stext-102 trans-04">
                                            <asp:Label ID="Label1" runat="server" Text='<%#:string.Format("{0:N0}", Eval("DonGia")) + " VNĐ" %>'></asp:Label>
                                        </span>
                                    </div>
                                    <div class="block1-txt-child2 p-b-4 trans-05">
                                        <div class="block1-link stext-101 cl0 trans-09">
                                            Xem Chi Tiết
                                        </div>
                                    </div>
                                </asp:HyperLink>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <script src="Scripts/js/jquery-3.2.1.min.js"></script>
    <script src="Scripts/js/owl.carousel.min.js"></script>
    <script src="Scripts/js/sly.min.js"></script>
    <script src="Scripts/js/rior.js"></script>
    <script src="Scripts/js/slider.js"></script>
</asp:Content>

