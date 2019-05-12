<%@ Page Title="" Language="C#" MasterPageFile="~/OriorStore.master" AutoEventWireup="true" CodeFile="DetailProducts.aspx.cs" Inherits="DetailProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Scripts/css/DetailProducts.css" rel="stylesheet" />
    <link href="Scripts/css/sliderDefault.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:700" rel="stylesheet" />
    <style>
        img {
            max-width: 100%;
            height: auto;
        }

        .bgs {
            height: 10vh;
            width: 100%;
            background-color: black;
        }

        #lbCount {
            font-weight: bold;
            font-size: 18px;
        }
    </style>
    <div class="bgs"></div>
    <div id="con" class="container">
        <div class="row">
            <asp:Repeater ID="rptDP" runat="server">
                <ItemTemplate>
                    <div class="col-12 col-lg-7">
                        <a class="gallery_img">
                            <img runat="server" src='<%# "~/Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' />
                        </a>
                    </div>
                    <div class="col-12 col-lg-5 cmtrow">
                        <div class="line"></div>
                        <div>
                            <h4 class="text-color" runat="server"><%#:string.Format("{0:N0}", Eval("DonGia")) + " VNĐ" %></h4>
                        </div>
                        <div>
                            <h3 runat="server"><%# Eval("TenSP") %></h3>
                        </div>
                        <div>
                            <h4></h4>
                        </div>
                        <div>
                            <h4>Mô Tả :</h4>
                            <p runat="server"><%# Eval("MoTa") %></p>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="cart clearfix" method="post">
                <div class="cart-btn d-flex mb-50">
                    <p>Số Lượng</p>
                    <div class="quantity">
                        <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty > 1 ) effect.value--;return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                        <asp:Textbox type="number" runat="server" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1" />
                        <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span>
                    </div>
                </div>
                <asp:Button ID="btnBuy" runat="server" value="5" CssClass="btn amado-btn" Text="Thêm vào giỏ" OnClick="btnBuy_Click" />
            </div>
        </div>
    </div>
    <div>
        <div class="container" style="margin-top: 50px">
            <div class="row">
                <div class="text-center">
                    <h2 style="font-weight: bold">Bình Luận</h2>
                    <div class="ngoisao"><i class="fa fa-star"></i></div>
                </div>
            </div>
        </div>
        <asp:MultiView ID="mul" ActiveViewIndex="0" runat="server">
            <asp:View ID="v1" runat="server">
                <div class="container">
                    <div>
                        <asp:LinkButton ID="cmt" CssClass="button cart_button cmtrow" runat="server" OnClick="cmt_Click">
                            <p>Viết Bình Luận</p>
                        </asp:LinkButton>
                    </div>
                    <div class="row cmtrow">
                        <div class="want-cmt">
                        </div>
                        <asp:Repeater ID="rptCmt" runat="server">
                            <ItemTemplate>
                                <div class="col-12 col-lg-3 namedate">
                                    <h3 runat="server"><%# Eval("HoTenKH") %></h3>
                                    <h5 runat="server"><%# Eval("ngaycmt") %></h5>
                                </div>
                                <div class="col-12 col-lg-9">
                                    <h4 style="font-weight: bold" runat="server"><%# Eval("titlecmt") %></h4>
                                    <p runat="server"><%# Eval("cmt") %></p>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="v2" runat="server">
                <div class="form-group col-lg-12 fa-comment-box">
                    <div class="container">
                        <div class="row">
                            <div style="display: inline-block">
                                <h4 class="col-5" style="font-weight: bold">Tiêu Đề</h4>
                                <asp:TextBox ID="txtTitle" class="col-7 form-control" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <h4 class="col-5" style="font-weight: bold">Nội dung bình luận</h4>
                                <textarea class="form-control" id="txtArea" name="txtArea" cols="20" rows="10" runat="server"></textarea>
                            </div>
                            <div style="margin-top: 10px;">
                                <asp:Button class="btn btn-success" ID="btnSend" runat="server" Text="Gửi" OnClick="btnSend_Click" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtArea" ErrorMessage="Bình luận không được để trống"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
    <section class="intro-section spad pb-0">
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h2 style="font-weight: bold">Có thể bạn sẽ thích</h2>
                    <div class="ngoisao"><i class="fa fa-star"></i></div>
                </div>
            </div>
        </div>
        <div class="intro-slider">
            <ul class="slidee">
                <asp:Repeater ID="rptLQ" runat="server">
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
    <script src="Scripts/js/jquery-3.2.1.min.js"></script>
    <script src="Scripts/js/DetailPD.js"></script>
    <script src="Scripts/js/owl.carousel.min.js"></script>
    <script src="Scripts/js/sly.min.js"></script>
    <script src="Scripts/js/rior.js"></script>
    <script src="Scripts/js/slider.js"></script>
</asp:Content>

