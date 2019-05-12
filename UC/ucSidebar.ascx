<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSidebar.ascx.cs" Inherits="UC_ucSidebar" %>

<link href="../Scripts/css/bootstrap.min.css" rel="stylesheet" />
<link href="../Scripts/css/Sidebar.css" rel="stylesheet" />
<link href="../Scripts/css/util.css" rel="stylesheet" />
<div class="wrap-header-cart js-panel-cart">
    <div class="s-full js-hide-cart"></div>
    <div class="header-cart flex-col-l p-l-65 p-r-25" id="show">
        <div class="header-cart-title flex-w flex-sb-m p-b-8">
            <span class="mtext-103 cl2">Giỏ Hàng Của Bạn
            </span>

            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
                <i class="fa fa-times"></i>
            </div>
        </div>

        <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">
                <asp:Repeater ID="rptCart" runat="server">
                    <ItemTemplate>
                        <li class="header-cart-item flex-w flex-t m-b-12">
                            <div class="header-cart-item-img">
                                <img src='<%# "~/../Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' alt="IMG">
                            </div>

                            <div class="header-cart-item-txt p-t-8">
                                <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                                    <%#Eval("TenSP") %>
                                </a>

                                <span class="header-cart-item-info">
                                    <%#Eval("SoLuong") %> x <%#Eval("DonGia") %>
                                </span>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

            <div class="w-full">
                <div class="header-cart-total w-full p-tb-40">
                    Tổng Đơn Hàng:
                    <asp:Label ID="lbTongThanhTien" runat="server" Text=""></asp:Label>
                </div>

                <div class="header-cart-buttons flex-w w-full">
                    <a href="~/../Cart.aspx" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">Xem Giỏ Hàng
                    </a>

                    <a href="#" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">Thanh Toán
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../Scripts/js/jquery-3.2.1.min.js"></script>
<script src="../Scripts/js/rior.js"></script>
