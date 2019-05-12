using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DetailProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string count = Request.QueryString["Slect Count(*) From Comment"];
        string txtArea = Request.Form["txtArea"];
        string Count = Request.QueryString["SELECT COUT(*) FROM Comment ORDER BY idcmt"];
        string MaSP = Request.QueryString["MaSP"];
        rptDP.DataSource = clsOrior.GetData(@"SELECT * FROM SP WHERE MASP = " + MaSP);
        rptDP.DataBind();
        rptLQ.DataSource = clsOrior.GetData(@"SELECT TOP 10 * FROM SP ORDER BY NEWID()");
        rptLQ.DataBind();
        rptCmt.DataSource = clsOrior.GetData(@"SELECT HoTenKH, titlecmt, cmt, ngaycmt 
                                               FROM Comment C, KHACHHANG KH, SP 
                                               WHERE C.TenDN = KH.TenDN AND C.MaSP = SP.MaSP AND  SP.MaSP = " + MaSP + "ORDER BY ngaycmt DESC");
        rptCmt.DataBind();
    }

    protected void cmt_Click(object sender, EventArgs e)
    { 
        if (Session["TenDN"] != null)
        {
            mul.ActiveViewIndex = 1;           
        }
        else
        {
            Response.Write("<script language=javascript>confirm('Bạn phải đăng nhập nếu muốn để lại bình luận');</script>");
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        String MaSP = Request.QueryString["MaSP"];
        SqlConnection con = new SqlConnection(clsOrior.strCon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        cmd.CommandText = @"INSERT INTO Comment(MaSP,TenDN, titlecmt, cmt, ngaycmt) 
                                        VALUES(@MaSP,@TenDN, @titlecmt, @cmt, @ngaycmt)";
        cmd.Parameters.Add("@MaSP", SqlDbType.Int);
        cmd.Parameters["@MaSP"].Value = MaSP;
        cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
        cmd.Parameters["@TenDN"].Value = Session["TenDN"].ToString();
        cmd.Parameters.Add("@titlecmt", SqlDbType.NVarChar,100);
        cmd.Parameters["@titlecmt"].Value = txtTitle.Text;
        cmd.Parameters.Add("@cmt", SqlDbType.NText);
        cmd.Parameters["@cmt"].Value = txtArea.Value;
        cmd.Parameters.Add("@ngaycmt", SqlDbType.SmallDateTime);
        cmd.Parameters["@ngaycmt"].Value = DateTime.Now.ToShortTimeString();
        cmd.ExecuteNonQuery();
        con.Close();
        
        mul.ActiveViewIndex = 0;
        Response.Redirect(Request.RawUrl);
    }

    protected void btnBuy_Click(object sender, EventArgs e)
    {
        String MaSP = Request.QueryString["MaSP"];
        Session["SL"] = qty.Text;
        Response.Redirect("~/Cart.aspx?MaSP="+MaSP);
    }
}