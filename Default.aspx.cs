using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rptNP.DataSource = clsOrior.GetData(@"SELECT TOP 6 * FROM SP ORDER BY NgayCapNhat Desc");
        rptNP.DataBind();
        rptBS.DataSource = clsOrior.GetData(@"SELECT TOP 6 * FROM SP ORDER BY SoLuongBan Desc");
        rptBS.DataBind();
    }
}