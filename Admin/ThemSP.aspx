<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ThemSP.aspx.cs" Inherits="Admin_ThemSP" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">

        <table class="nav-justified">
            <tr>
                <td>
                    <h3>Tên Sản Phẩm</h3>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Đơn vị tính</h3>
                </td>
                <td>
                    <asp:TextBox ID="txtDVT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Đơn giá</h3>

                </td>
                <td>
                    <asp:TextBox ID="txtMoney" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Mô tả</h3>
                </td>
                <td>
                    <CKEditor:CKEditorControl ID="CKEditorControl1" BasePath="~/CK/ckeditor" runat="server"></CKEditor:CKEditorControl>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Hình ảnh</h3>
                </td>
                <td>
                    <asp:FileUpload ID="fulImage" runat="server" Width="281px" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fulImage" ErrorMessage="Không được để trống">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Mã Phòng</h3>
                </td>
                <td>
                    <asp:TextBox ID="txtMaMenu" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Lưu" OnClick="btnSave_Click" />
                </td>
                <td>
                    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

