using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Room : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string MaMenu = Request.QueryString["MaMenu"];
        rptImage.DataSource = clsOrior.GetData(@"select * from Menu where MaMenu = " + MaMenu);
        rptImage.DataBind();
        lbTitle.Text = clsOrior.GetData(@"select TenMenu from Menu where MaMenu = " + MaMenu).Rows[0][0].ToString();
        rptPD.DataSource = clsOrior.GetData(@"SELECT * FROM SP WHERE MaMenu = " + MaMenu);
        rptPD.DataBind();
    }
}