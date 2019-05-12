using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["RefUrl"] = Request.UrlReferrer.ToString();
            if (Request.QueryString["MaSP"] != null)/*xảy ra trường hợp 1*/
            {
                int MaSP = int.Parse(Request.QueryString["MaSP"]);
                DataTable dt = clsOrior.GetData(@"SELECT HinhMinhHoa,TenSP,DonGia From SP WHERE MaSP = " + MaSP);
                String HinhMinhHoa = dt.Rows[0][0].ToString();
                String TenSP = dt.Rows[0][1].ToString();
                float DonGia = float.Parse(dt.Rows[0][2].ToString());
                int SoLuong = int.Parse(Session["SL"].ToString());
                ThemVaoGioHang(HinhMinhHoa, MaSP, TenSP, DonGia, SoLuong);
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
                    lbTongThanhTien.Text = string.Format("{0:N0}", Convert.ToDecimal(TongThanhTien)) + " VNĐ";
                    if (TongThanhTien > 10000000)
                    {
                        lbShip.Text = "Free Ship";
                        ttShip.Text = lbTongThanhTien.Text;
                    }
                    else
                    {
                        lbShip.Text = "30.000 VNĐ";
                        ttShip.Text = string.Format("{0:N0}", TongThanhTien + 30000) + " VNĐ";
                    }
                    Session["Ship"] = lbShip.Text;
                    Session["ttShip"] = ttShip.Text;
                    Session["TamTinh"] = lbTongThanhTien.Text;
                }
                rptCart.DataSource = dt;
                rptCart.DataBind();
                int Count = dt.Rows.Count;
                Session["CountCart"] = Count;
            }
        }
    }
    public void ThemVaoGioHang(string HinhMinhHoa, int MaSP, string TenSP, float DonGia, int SoLuong)
    {
        DataTable dt;
        if (Session["Cart"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("HinhMinhHoa");
            dt.Columns.Add("MaSP");
            dt.Columns.Add("TenSP");
            dt.Columns.Add("DonGia");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("ThanhTien");
        }
        else
            dt = (DataTable)Session["Cart"];
        int dong = SPDaCoTrongGioHang(MaSP, dt);
        if (dong != -1)
        {
            dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["HinhMinhHoa"] = HinhMinhHoa;
            dr["MaSP"] = MaSP;
            dr["TenSP"] = TenSP;
            dr["DonGia"] = DonGia;
            dr["SoLuong"] = SoLuong;
            dr["ThanhTien"] = DonGia * SoLuong;
            dt.Rows.Add(dr);
        }
        Session["Cart"] = dt;
    }
    public static int SPDaCoTrongGioHang(int MaSP, DataTable dt)
    {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i]["MaSP"].ToString()) == MaSP)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }

    protected void btnShoppingContinue_Click(object sender, EventArgs e)
    {
        
    }
    public static void Cart_Remove(int MaSP)
    {
        DataTable dtCart = new DataTable();
        dtCart = (DataTable)System.Web.HttpContext.Current.Session["Cart"];
        for(int i = 0; i<dtCart.Rows.Count; i++ )
        {
            if(dtCart.Rows[i]["MaSP"].ToString() == MaSP.ToString())
            {
                dtCart.Rows.RemoveAt(i);
                break;
            }
        }
        System.Web.HttpContext.Current.Session["Cart"] = dtCart;
    }

    protected void rptCart_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Cart.Cart_Remove(int.Parse(e.CommandArgument.ToString()));
        Response.Redirect("Cart.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Checkout.aspx");
    }

    protected void cmt_Click(object sender, EventArgs e)
    {
        object refUrl = ViewState["RefUrl"];
        if (refUrl != null)
        {
            Response.Redirect((string)refUrl);
        }
    }
}
