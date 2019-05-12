<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DonDatHang.aspx.cs" Inherits="Admin_DonDatHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .cart button .amado-btn {
            width: 100px;
            height: 80px;
            line-height: 80px;
        }

        .amado-btn {
            display: inline-block;
            min-width: 100px;
            height: 55px;
            color: #ffffff;
            border: none;
            border-radius: 0;
            padding: 0 7px;
            font-size: 18px;
            line-height: 56px;
            background-color: #fbb710;
            font-weight: 400;
        }

            .amado-btn:hover, .amado-btn:focus {
                background-color: #131212;
            }

            .amado-btn p {
                font-weight: bold;
            }
    </style>
    <div class="cart-table clearfix">
        <table class="table table-responsive">
            <thead>
                <tr>
                    <th>Mã Đơn Hàng</th>
                    <th>Họ Tên</th>
                    <th>Số Điện Thoại</th>
                    <th>Địa Chỉ</th>
                    <th>Thành Tiền</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptDH" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <p runat="server"><%# Eval("SoDH")%></p>
                            </td>
                            <td>
                                <p runat="server"><%# Eval("HoTenKH") %></p>
                            </td>
                            <td>
                                <p runat="server"><%# Eval("DienThoaiKH") %></p>
                            </td>
                            <td>
                                <p runat="server"><%# Eval("DiaChiKH") %></p>
                            </td>
                            <td>
                                <p runat="server"><%#:string.Format("{0:c}",Eval("TriGia")) %></p>
                            </td>
                            <td>
                                <asp:Button ID="btnOK" runat="server" value="5" CssClass="btn amado-btn" Text="Duyệt" OnClick="btnOK_Click1" />
                            </td>
                            <td>
                                <asp:Button ID="btnCancel" runat="server" value="5" CssClass="btn amado-btn" Text="Huỷ" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
</asp:Content>

