using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = clsOrior.GetData("Select * from ADMIN where TenDNAdmin = '" + userName.Text + "' and MatKhauAdmin = '" + pwd.Text + "'");
            if (dt.Rows.Count > 0)
            {
                Session["TenDNAdmin"] = userName.Text;
                Response.Redirect("~/Admin/Admin.aspx");
            }
            else
            {
                lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
                lbThongBaoLoi.ForeColor = System.Drawing.Color.Red;
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
            lbThongBaoLoi.ForeColor = System.Drawing.Color.Red;
        }
    }
}