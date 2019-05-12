<%@ Page Title="" Language="C#" MasterPageFile="~/OriorStore.master" AutoEventWireup="true" CodeFile="Thank.aspx.cs" Inherits="Thank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <div class="container-fluid" style="background-color:#01aaea;">
        <div class="row">
            <div class="col-lg-12">
                <div class="col-xs-12 col-lg-6" style="font-family:Montserrat-Bold; color: white; font-weight: bold; margin-top: 10% ">
                    <h2>Xin Cảm Ơn Quý Khách</h2>
                    <p>Thông tin đơn đặt hàng của quý khách đã được chúng tôi ghi nhận.<br />
                        Orior Store rất hân hạnh được phục vụ quý khách <br />
                        Quý khách có thể liên hệ qua số điện thoại 094.886.6263
                    </p>
                    <a href="Default.aspx" style="color: white; text-decoration-line: underline">Quay về trang chủ</a>
                </div>
                    <img class="col-xs-12 col-lg-6" style="overflow: hidden" runat="server" src="~/Images/thank.gif" />
            </div>
        </div>
    </div>
</asp:Content>

