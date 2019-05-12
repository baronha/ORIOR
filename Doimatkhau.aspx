<%@ Page Title="" Language="C#" MasterPageFile="~/OriorStore.master" AutoEventWireup="true" CodeFile="Doimatkhau.aspx.cs" Inherits="Doimatkhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>ĐỔI MẬT KHẨU</p>
        <p>Tên đăng nhập: <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </p>
        <p>Mật khẩu cũ: <asp:TextBox ID="txtMatKhauCu" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhauCu" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </p>
        <p>Mật khẩu mới: <asp:TextBox ID="txtMatKhauMoi" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMatKhauMoi" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </p>
        <p>Nhập lại mật khẩu mới: <asp:TextBox ID="txtNhapLaiMK" runat="server"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu nhập lại không chính xác" ControlToCompare="txtMatKhauMoi" ControlToValidate="txtNhapLaiMK"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNhapLaiMK" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </p>
        <asp:Button ID="btDongY" runat="server" Text="Đồng ý" OnClick="btDongY_Click" />
        <asp:Label ID="lbThongBaoLoi" runat="server" Text=""></asp:Label>
</asp:Content>

