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
        if( !IsPostBack)
        {
            ViewState["RefUrl"] = Request.UrlReferrer.ToString();
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = clsOrior.GetData("select * from KHACHHANG where TenDN = '" + userName.Text + "' and MatKhau = '" + pwd.Text + "'");
            if (dt.Rows.Count > 0)
            {
                object refUrl = ViewState["RefUrl"];
                if (refUrl != null)
                {
                    Session["TenDN"] = userName.Text;
                    Response.Redirect((string)refUrl);
                }
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