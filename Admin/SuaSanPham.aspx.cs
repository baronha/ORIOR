using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SuaSanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rptPD.DataSource = clsOrior.GetData(@"SELECT * FROM SP ORDER BY NgayCapNhat Desc");
        rptPD.DataBind();
    }

    protected void lnk_Click(object sender, EventArgs e)
    {
        mul.ActiveViewIndex = 1;
        string MaSP = Request.QueryString["MaSP"];
        rptEdit.DataSource = clsOrior.GetData(@"SELECT * FROM SP WHERE MASP = " + MaSP);
        rptEdit.DataBind();
    }
}