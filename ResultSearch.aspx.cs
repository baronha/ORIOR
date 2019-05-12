using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResultSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rptSearch.DataSource = clsOrior.GetData(@"SELECT * FROM SP WHERE TenSP LIKE N'%"+Session["Search"].ToString()+"%'");
        rptSearch.DataBind();
        lbResult.Text = clsOrior.GetData(@"SELECT COUNT(*) FROM SP WHERE TenSP LIKE N'%"+Session["Search"].ToString()+"%'").Rows[0][0].ToString();
    }
}