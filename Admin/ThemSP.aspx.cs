using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ThemSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"Select * from SP Where HinhMinhHoa = '" + fulImage.FileName.ToString() + "'";
            if (clsOrior.GetData(str1).Rows.Count > 0)
            {
                lbThongBaoLoi.Text = "Sản phẩm đã tồn tại.";
                lbThongBaoLoi.ForeColor = System.Drawing.Color.Red;
                lbThongBaoLoi.Focus();
            }
            else
            {
                SqlConnection con = new SqlConnection(clsOrior.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO SP(TenSP,DonViTinh,DonGia,MoTa,HinhMinhHoa,MaMenu,NgayCapNhat) 
                                        VALUES(@TenSP,@DonViTinh,@DonGia,@MoTa,@HinhMinhHoa,@MaMenu,@NgayCapNhat)";
                cmd.Parameters.Add("@TenSP", SqlDbType.NVarChar, 100);
                cmd.Parameters["@TenSP"].Value = txtName.Text;
                cmd.Parameters.Add("@DonViTinh", SqlDbType.NVarChar, 50);
                cmd.Parameters["@DonViTinh"].Value = txtDVT.Text;
                cmd.Parameters.Add("@DonGia", SqlDbType.Money);
                cmd.Parameters["@DonGia"].Value = txtMoney.Text;
                cmd.Parameters.Add("@MoTa", SqlDbType.NText);
                cmd.Parameters["@MoTa"].Value = CKEditorControl1.Text;
                cmd.Parameters.Add("@HinhMinhHoa", SqlDbType.VarChar, 50);
                cmd.Parameters["@HinhMinhHoa"].Value = fulImage.FileName.ToString();
                cmd.Parameters.Add("@MaMenu", SqlDbType.Int);
                cmd.Parameters["@MaMenu"].Value = txtMaMenu.Text;
                cmd.Parameters.Add("@NgayCapNhat", SqlDbType.SmallDateTime);
                cmd.Parameters["@NgayCapNhat"].Value = DateTime.Now.ToShortTimeString();
                cmd.ExecuteNonQuery();
                con.Close();
                txtName.Text = "";
                txtMoney.Text = "";
                txtDVT.Text = "";
                txtMaMenu.Text = "";
                lbThongBaoLoi.Text = "Thêm Sản Phẩm Mới Thành Công";
                lbThongBaoLoi.ForeColor = System.Drawing.Color.Green;

            }
        }
        catch (Exception ex)
        {
            lbThongBaoLoi.Text = "Thêm SP mới thất bại.";
            lbThongBaoLoi.ForeColor = System.Drawing.Color.Red;
            throw ex;
        }
    }
}