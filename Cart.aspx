<%@ Page Title="" Language="C#" MasterPageFile="~/OriorStore.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Scripts/css/Cart.css" rel="stylesheet" />
    <link href="Scripts/css/util.css" rel="stylesheet" />
    <style>
        .bgs {
            height: 10vh;
            width: 100%;
            background-color: black;
        }
    </style>
    <div class="bgs"></div>
    <div class="main-content-wrapper d-flex clearfix" style="font-family: Montserrat-Bold">
        <div class="cart-table-area section-padding-100">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2 style="margin-bottom: 35px;">Giỏ Hàng Của Bạn<h2>
                        </div>
                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Đơn Giá</th>
                                        <th>Số Lượng</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:repeater id="rptCart" runat="server" onitemcommand="rptCart_ItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="cart_product_img">
                                                    <a runat="server" href='<%# "../DetailProducts.aspx?MaSP="+Eval("MaSP") %>'>
                                                        <img runat="server" src='<%# "~/Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' alt="Product" /></a>
                                                </td>
                                                <td class="cart_product_desc">
                                                    <h5 runat="server"><%# Eval("TenSP") %></h5>
                                                </td>
                                                <td class="price">
                                                    <span><%#:string.Format("{0:0.00}", Eval("DonGia")) + " VNĐ" %></span>
                                                </td>
                                                <td class="qty">
                                                    <div class="qty-btn d-flex">
                                                        <div class="quantity">
                                                            <asp:Label runat="server" ID="lbSL"><%# Eval("SoLuong") %></asp:Label>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="qty-btn d-flex">
                                                        <div class="quantity">
                                                            <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("MaSP") %>' >Xóa</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:repeater>
                                    <tr>
                                        <td>
                                            <asp:linkbutton id="cmt" cssclass="button cart_button cmtrow" runat="server" OnClick="cmt_Click">
                                               <p style="font-family: Montserrat-Bold">Tiếp Tục Mua</p>
                                            </asp:linkbutton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>Đơn Giá</h5>
                            <ul class="summary-table">
                                <li><span>Tổng Đơn Gía:</span> <span>
                                    <asp:label id="lbTongThanhTien" runat="server" text=""></asp:label>
                                </span></li>
                                <li><span>Ship:</span> <span>
                                    <asp:label id="lbShip" runat="server" text=""></asp:label>
                                </span></li>
                                <li><span>Tổng Cộng:</span> <span>
                                    <asp:label id="ttShip" runat="server" text=""></asp:label>
                                </span></li>
                            </ul>
                            <div class="cart-btn mt-100">
                                <asp:button id="Button1" cssclass="btn amado-btn w-100" runat="server" text="Thanh Toán" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="Scripts/js/jquery-3.2.1.min.js"></script>
    <script src="Scripts/js/rior.js"></script>
</asp:Content>

