<%@ Page Title="" Language="C#" MasterPageFile="~/OriorStore.master" AutoEventWireup="true" CodeFile="ResultSearch.aspx.cs" Inherits="ResultSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .bgs {
            height: 10vh;
            width: 100%;
            background-color: black;
        }

        .imgPD {
            max-width: 80%;
            border: solid 2px white;
        }

        .padding {
            padding-top: 5%;
        }

        .lnkDetails {
            font-weight: bold;
            color: black;
        }

            .lnkDetails:hover {
                color: rgba(103,117,214,0.8);
            }
    </style>
    <div class="bgs"></div>
    <div class="container">
        <div class="row">
            <div class="text-center">
                <h2 style="font-weight: bold">Kết Quả Tìm Kiếm</h2>
                <div class="ngoisao"><i class="fa fa-star"></i></div>
            </div>
        </div>
        <h3 style="font-weight: bold">Có <asp:label runat="server" id="lbResult" text="Label"></asp:label> Kết Quả Được Tìm Thấy</h3>
        <div class="row padding">
            <asp:repeater id="rptSearch" runat="server">
            <ItemTemplate>
                    <div class="col-12 col-lg-7 padding">
                        <img class="imgPD" runat="server" src='<%# "~/Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' />
                    </div>
                    <div class="col-12 col-lg-5 padding">
                        <h2 class="lnkDetails" runat="server"><%#Eval("TenSP") %></h2>
                        <p runat="server"><%# Eval("DonGia") + " VNĐ" %></p>
                        <asp:HyperLink CssClass="lnkDetails"  NavigateUrl='<%# "../DetailProducts.aspx?MaSP="+Eval("MaSP") %>' runat="server">Xem Chi Tiết</asp:HyperLink>
                    </div>
            </ItemTemplate>
         </asp:repeater>
        </div>
    </div>
</asp:Content>

