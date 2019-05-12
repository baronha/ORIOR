<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SuaSanPham.aspx.cs" Inherits="Admin_SuaSanPham" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../Scripts/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        img {
            width: 100%;
            margin-top: 25px;
            border-width: 2px;
            border-color: black;
        }

        .btnlnk {
            width: 178px;
            height: 61px;
            background: none;
            text-align: center;
            border: solid 2px #1b1b1b;
            overflow: hidden;
            cursor: pointer;
            display: inline-block;
            vertical-align: middle;
        }

            .btnlnk:hover {
                background-color: black;
            }

            .btnlnk p {
                display: block;
                position: relative;
                font-size: 16px;
                font-weight: bold;
                line-height: 57px;
                color: #1b1b1b;
                background: none;
                z-index: 1;
            }

                .btnlnk p:hover {
                    text-decoration: none;
                    color: white;
                    text-decoration-line: none;
                    text-decoration-color: none;
                }
    </style>
    <asp:MultiView ID="mul" ActiveViewIndex="0" runat="server">
        <asp:View ID="v1" runat="server">
            <div class="container-fluid">
                <div class="row">
                    <h2>Tất cả sản phẩm</h2>
                </div>

                <asp:Repeater ID="rptPD" runat="server">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-lg-6">
                                <img runat="server" src='<%# "../Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' />
                            </div>
                            <div class="col-lg-6">
                                <h3 runat="server"><%# Eval("TenSP")%></h3>
                                <h4 runat="server"><%#:string.Format("{0:c}",Eval("DonGia")) %></h4>
                                <p runat="server"><%#Eval("DonViTinh") %></p>
                                <p runat="server"><%#Eval("MoTa") %></p>
                                <div class="col-lg-12">
                                    <asp:LinkButton ID="lnk" CssClass="btnlnk" PostBackUrl='<%# "../Admin/SuaSanPham.aspx?MaSP="+Eval("MaSP") %>' runat="server" OnClick="lnk_Click"><p>Chỉnh Sửa</p></asp:LinkButton>
                                </div>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </asp:View>
        <asp:View ID="v2" runat="server">
            <div class="container-fluid">
                <asp:Repeater ID="rptEdit" runat="server">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-lg-6">
                                <img runat="server" src='<%# "../Images/SP/"+Eval("HinhMinhHoa","{0}"   ) %>' />
                                <h4>Chọn Hình Ảnh</h4>
                                <asp:FileUpload ID="fulEdit" runat="server" />
                                <br />
                                <asp:LinkButton ID="btnUpdate" CssClass="btnlnk" runat="server"><p>Lưu Thay Đổi</p></asp:LinkButton>
                                <asp:LinkButton ID="btnDelete" CssClass="btnlnk" runat="server"><p>Xóa</p></asp:LinkButton>
                            </div>
                            <div class="col-lg-6" style="font-weight: bold;">
                                <h4>Tên Sản Phẩm</h4>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("TenSP")%>'></asp:TextBox>
                                <h4>Đơn Giá</h4>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#:string.Format("{0:0}",Eval("DonGia")) %>'></asp:TextBox>
                                <h4>Đơn vị tính</h4>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("DonViTinh") %>'></asp:TextBox>
                                <h4>Mô tả</h4>
                                <CKEditor:CKEditorControl ID="CKEditorControl1" BasePath="~/CK/ckeditor" Text='<%# Eval("MoTa") %>' runat="server"></CKEditor:CKEditorControl>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

