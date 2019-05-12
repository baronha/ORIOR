<%@ Page Title="" Language="C#" MasterPageFile="~/OriorStore.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Scripts/css/Cart.css" rel="stylesheet" />
    <style>
        .checkout_details_area div .form-control {
            height: 60px;
            border: none;
            border-width: 0;
            border-radius: 0;
            background-color: #f5f7fa;
            padding: 30px;
            color: #6b6b6b;
            font-size: 14px;
            font-family: 'Montserrat-Bold';
        }

        .checkout_details_area div textarea.form-control {
            height: 210px;
        }

        .checkout_details_area div .custom-control label {
            font-size: 14px;
            color: #6b6b6b;
        }

        .checkout_details_area div .nice-select {
            border-radius: 0;
            height: 60px;
            line-height: 60px;
            background-color: #f5f7fa;
            border: none;
            color: #6b6b6b;
            font-size: 14px;
        }

            .checkout_details_area div .nice-select .list {
                width: 100%;
                border-radius: 0;
                background-color: #f5f7fa;
            }

        .bgs {
            height: 10vh;
            width: 100%;
            background-color: black;
        }

        .mb-3 {
            margin-bottom: 1rem !important;
        }
    </style>
    <div class="bgs"></div>
    <div class="main-content-wrapper d-flex clearfix">
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="col-12 col-lg-12">
                            <div class="cart-title mt-50">
                                <h2 style="margin-bottom: 35px;">Chi Tiết Giỏ Hàng<h2>
                            </div>
                            <div class="cart-table clearfix">
                                <table class="table table-responsive" style="font-family: 'Montserrat-Bold'">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Tên Sản Phẩm</th>
                                            <th>Đơn Giá</th>
                                            <th>Số Lượng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:repeater id="rptCart" runat="server">
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
                                                </tr>
                                            </ItemTemplate>
                                        </asp:repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-12 col-lg-12">
                            <div class="checkout_details_area mt-50 clearfix">

                                <div class="cart-title">
                                    <h2 style="margin-bottom: 15px;">Thanh Toán</h2>
                                </div>

                                <div action="#" method="post">
                                    <div class="row">
                                        <div class="col-md-12 mb-3">
                                            <asp:textbox id="txtName" cssclass="form-control" autocompletetype="DisplayName" placeholder="Tên Người Nhận" runat="server"></asp:textbox>
                                        </div>
                                        <div class="col-12 mb-3">
                                            <div class="col-md-6 mb-3">
                                                <asp:textbox id="txtPhone" cssclass="form-control" placeholder="Số Điện Thoại Người Nhận" runat="server"></asp:textbox>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <asp:textbox id="txtEmail" cssclass="form-control" autocompletetype="Email" placeholder="Email Người Nhận" runat="server"></asp:textbox>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-3">
                                            <asp:textbox id="txtAd" cssclass="form-control" placeholder="Địa Chỉ Người Nhận" runat="server"></asp:textbox>
                                        </div>
                                        <div class="col-md-12 mb-3">
                                            <textarea name="comment" runat="server" class="form-control w-100" id="comment" cols="30" rows="15" placeholder="Để lại lời nhắn của bạn để chúng tôi phục vụ bạn chu đáo hơn"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4" style="font-family: 'Montserrat-Bold'">
                        <div class="cart-summary">
                            <h5>Hóa Đơn</h5>
                            <ul class="summary-table">
                                <li><span>Tạm Tính:</span> <span>
                                    <asp:label id="lbTongThanhTien" runat="server" text=""></asp:label>
                                </span></li>
                                <li><span>Ship:</span> <span>
                                    <asp:label id="lbShip" runat="server" text=""></asp:label>
                                </span></li>
                                <li><span>Tổng Đơn Giá:</span> <span>
                                    <asp:label id="ttShip" runat="server" text=""></asp:label>
                                </span></li>
                                <li>
                                    <asp:panel id="Panel1" runat="server">
                                    <asp:RadioButton ID="rdTTTT" Text="Thanh Toán Online" runat="server" GroupName ="HinhThucThanhtoan"/><br />
                                    <asp:RadioButton ID="rdoTTKGH" Text="Thanh Toán Sau Khi Nhận Hàng COD" runat="server" GroupName ="HinhThucThanhtoan"/>
                                </asp:panel>
                                </li>
                            </ul>
                            <div class="cart-btn mt-100">
                                <asp:button id="btnCheckout" cssclass="btn amado-btn w-100" runat="server" text="Thanh Toán" onclick="btnCheckout_Click" />
                            </div>
                        </div>
                        <div>
                            <asp:label id="lbThongBaoLoi" runat="server" text=""></asp:label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

