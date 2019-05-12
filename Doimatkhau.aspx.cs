using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doimatkhau : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btDongY_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = clsOrior.GetData("select TenDN from KHACHHANG where TenDN = '" + txtTenDN.Text + "' and MatKhau = '" + txtMatKhauCu.Text + "'");
            if (dt.Rows.Count > 0)
            {
                clsOrior.Execute("UPDATE KHACHHANG Set MatKhau = '" + txtMatKhauMoi.Text + "' WHERE TenDN = '" + txtTenDN.Text + "'");
                lbThongBaoLoi.Text = "Đổi mật khẩu thành công";

            }
            else
            {
                lbThongBaoLoi.Text = "Tên đăng nhập và mật khẩu cũ không hợp lệ!";
            }


        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }
    }
}