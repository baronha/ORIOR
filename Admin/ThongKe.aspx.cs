using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ThongKe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rptBSL.DataSource = clsOrior.GetData(@"SELECT TOP 5 * FROM SP ORDER BY SoLuongBan Desc");
        rptBSL.DataBind();
        string sum = clsOrior.GetData(@"SELECT SUM(SoLuongBan*DonGia) FROM SP").Rows[0][0].ToString();
        lblSum.Text = string.Format("{0:n0}", sum);
    }
}