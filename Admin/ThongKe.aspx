<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ThongKe.aspx.cs" Inherits="Admin_ThongKe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="../Scripts/css/bootstrap.min.css" />
    <link href="../Scripts/css/Default.css" rel="stylesheet" />
    <link href="../Scripts/css/sliderDefault.css" rel="stylesheet" />
    <style>
        img {
            max-width: 100%;
            height: auto;
        }
    </style>
    <div style="overflow:hidden">
        <div class="container-fluid" style="overflow: hidden">
        <div class="row">
            <div class="col-lg-12">
                <section id="about" class="intro-section spad pb-0">
                    <div class="container">
                        <div class="row">
                            <div class="text-center">
                                <h2 style="font-weight: bold">Top 5 Sản Phẩm Bán Chạy Nhất</h2>
                                <div class="ngoisao"><i class="fa fa-star"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="intro-slider">
                        <ul class="slidee">
                            <asp:Repeater ID="rptBSL" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="intro-item">
                                            <figure>
                                                <asp:Image ID="imgPD" CssClass="img" runat="server" ImageUrl='<%# "../Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' />
                                            </figure>
                                            <div class="product-info" style="font-family: 'Raleway', sans-serif; font-smoothing: antialiased;">
                                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="h5 a" Text='<%# Eval("TenSP") %>'></asp:HyperLink>
                                                <br />
                                                <asp:Label ID="lbDonGia" runat="server" Text='<%#:string.Format("{0:N0}", Eval("DonGia")) + " VNĐ" %>' CssClass="p"></asp:Label>
                                                <h5 runat="server">Số Lượng Bán: <%#Eval("SoLuongBan") %></h5>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <div class="container" style="overflow: hidden">
        <div class="row">
            <div class="text-center">
                <h2 style="font-weight: bold">Thu Nhập</h2>
                <div class="ngoisao"><i class="fa fa-star"></i></div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3>Tổng Thu Nhập :
                    <asp:Label ID="lblSum" runat="server" Text=""></asp:Label>
                </h3>
            </div>
        </div>
    </div>
    </div>
    <script src="../Scripts/js/jquery-3.2.1.min.js"></script>
    <script src="../Scripts/js/owl.carousel.min.js"></script>
    <script src="../Scripts/js/sly.min.js"></script>
    <script src="../Scripts/js/rior.js"></script>
    <script type="text/javascript">
        (function ($) {

            if ($('.intro-slider').length > 0) {
                var $scrollbar = $('.scrollbar');
                var $frame = $('.intro-slider');
                var sly = new Sly($frame, {
                    horizontal: 1,
                    itemNav: 'forceCentered',
                    activateMiddle: 1,
                    smart: 1,
                    activateOn: 'click',
                    //mouseDragging: 1,
                    touchDragging: 1,
                    releaseSwing: 1,
                    startAt: 0,
                    scrollBar: $scrollbar,
                    //scrollBy: 1,
                    activatePageOn: 'click',
                    speed: 200,
                    moveBy: 600,
                    elasticBounds: 1,
                    dragHandle: 1,
                    dynamicHandle: 1,
                    clickBar: 1,
                }).init();
            }

        })(jQuery);
    </script>
</asp:Content>

