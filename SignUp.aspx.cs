using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbThongBaoLoi.ForeColor = System.Drawing.Color.Red;
    }

    protected void SignUp_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"Select * from KHACHHANG Where TenDN = '" + userName.Text + "'";
            string str2 = @"Select * from KHACHHANG WHERE Email = '" + Mail.Text + "'";
            if(clsOrior.GetData(str2).Rows.Count > 0)
            {
                lbThongBaoLoi.Text = "Email đã tồn tại";
                Mail.Focus();
            }
            else if(clsOrior.GetData(str1).Rows.Count > 0)
            {
                lbThongBaoLoi.Text = "Tên đăng nhập đã tồn tại.";
                userName.Focus();
            }
            else if(txtXN.Text != pwd.Text)
            {
                lbThongBaoLoi.Text = "Mật khẩu xác nhận không trùng khớp !";
            }
            else if(!ckb1.Checked)
            {
                lbThongBaoLoi.Text = "Bạn chưa đồng ý với điều khoản của chúng tôi !";
            }
            else
            {
                SqlConnection con = new SqlConnection(clsOrior.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO KHACHHANG(HoTenKH,Email,TenDN,MatKhau) 
                                        VALUES(@Hoten,@Email,@TenDN,@Matkhau)";
                cmd.Parameters.Add("@Hoten", SqlDbType.NVarChar, 50);
                cmd.Parameters["@Hoten"].Value = fullName.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                cmd.Parameters["@Email"].Value = Mail.Text;
                cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TenDN"].Value = userName.Text;
                cmd.Parameters.Add("@Matkhau", SqlDbType.VarChar, 15);
                cmd.Parameters["@Matkhau"].Value = pwd.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Login.aspx");
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất Bại!";
        }
    }
}