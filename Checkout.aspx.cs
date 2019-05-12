using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Checkout : System.Web.UI.Page
{
    private int MaKH;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDN"] == null)
            Response.Redirect("~/Login.aspx");
        if (Session["Cart"] == null)
            Response.Redirect("~/Cart.aspx");
        if (Session["TenDN"] != null)
        {
            string s = "select MaKH,HoTenKH,DiaChiKH,DienThoaiKH,Email from KHACHHANG where TenDN ='" + Session["TenDN"].ToString() + "'";
            DataTable dt = clsOrior.GetData(s);
            if (dt.Rows.Count > 0)
            {
                MaKH = int.Parse(dt.Rows[0][0].ToString());
                txtName.Text = dt.Rows[0][1].ToString();
                txtAd.Text = dt.Rows[0][2].ToString();
                txtPhone.Text = dt.Rows[0][3].ToString();
                txtEmail.Text = dt.Rows[0][4].ToString();
            }
        }
        if (Session["Cart"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Cart"];
            Decimal TongThanhTien = 0;
            foreach (DataRow r in dt.Rows)
            {
                r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                TongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                lbTongThanhTien.Text = string.Format("{0:n0}", Convert.ToDecimal(TongThanhTien));
                if ( TongThanhTien > 10000000)
                {
                    lbShip.Text = "Free Ship";
                    ttShip.Text = lbTongThanhTien.Text;
                }
                else
                {
                    lbShip.Text = "đ 30.000";
                    ttShip.Text = string.Format("{0:N0}", TongThanhTien + 30000);
                }
            }
            rptCart.DataSource = dt;
            rptCart.DataBind();
        }
    }

    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        int httt = checkHTTT();
        string TenNguoiNhan, DiaChiNhan, DienThoaiNhan;
        TenNguoiNhan = txtName.Text;
        DiaChiNhan = txtAd.Text;
        DienThoaiNhan = txtPhone.Text;
        float tongthanhtien = float.Parse(ttShip.Text);
        try
        {
            SqlConnection con = new SqlConnection(clsOrior.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = @"insert into DONDATHANG(MaKH,NgayDH,TriGia,LoiNhan,TenNguoiNhan,DiaChiNhan,DienThoaiNhan,HTThanhToan)
                Values(" + MaKH + ",@ngaydathang," + tongthanhtien + ",@LoiNhan,'" + TenNguoiNhan + "','" + DiaChiNhan + "','" + DienThoaiNhan + "'," + httt + ")";
            cmd.Parameters.Add("@ngaydathang", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaydathang"].Value = DateTime.Today;
            cmd.Parameters.Add("@LoiNhan", SqlDbType.NText);
            cmd.Parameters["@LoiNhan"].Value = comment.InnerText;
            cmd.ExecuteNonQuery();
            con.Close();

            //laymadonhang
            string s = "Select max(SoDH) from  DONDATHANG Where MaKH =" + MaKH;
            int SODONHANG = int.Parse(clsOrior.GetData(s).Rows[0][0].ToString());
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Cart"];
            int MaSP, SoLuong;
            float DonGia;
            /* Luu san pham vao table CTDATHANG */
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                MaSP = int.Parse(dt.Rows[i]["MaSP"].ToString());
                SoLuong = int.Parse(dt.Rows[i]["SoLuong"].ToString());
                DonGia = float.Parse(dt.Rows[i]["DonGia"].ToString());
                s = "SET IDENTITY_INSERT CTDATHANG ON ;INSERT INTO CTDATHANG(SoDH,MaSP,SoLuong,DonGia) VALUES(" + SODONHANG + "," + MaSP + "," + SoLuong + "," + DonGia + ")";
                clsOrior.Execute(s);

            }
            /* xoa gio hang sau khi da thuc hien xong dat hang*/
            Session["Cart"] = null;
            /*Sau khi dat hang se chuyen toi trang XAc nhan don hang */
            Response.Redirect("~/Thank.aspx");
        }
        catch(Exception ex)
        {
            lbThongBaoLoi.Text = "Lỗi trong quá trình cập nhật dữ liệu!";
            lbThongBaoLoi.ForeColor = System.Drawing.Color.Red;
            throw ex;
        }
    }
    public int checkHTTT()
    {
        if (rdoTTKGH.Checked) return 1;
        return 0;
    }
}