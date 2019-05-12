using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_DonDatHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rptDH.DataSource = clsOrior.GetData(@"SELECT DISTINCT CT.SoDH, KH.HoTenKH, KH.DienThoaiKH, KH.DiaChiKH, D.TriGia  
                                            FROM DONDATHANG D, CTDATHANG CT, KHACHHANG KH, SP
                                            WHERE D.SoDH = CT.SoDH AND D.MaKH = KH.MaKH AND CT.MaSP = SP.MaSP 
                                            GROUP BY  CT.SoDH, KH.HoTenKH, KH.DienThoaiKH, KH.DiaChiKH, D.TriGia");
        rptDH.DataBind();
    }

    protected void btnOK_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(clsOrior.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = @"insert into DONDATHANG(DaGiao)
                Values(@DaGiao)";
            cmd.Parameters.Add("@DaGiao", SqlDbType.Bit);
            cmd.Parameters["@DaGiao"].Value = true;
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}