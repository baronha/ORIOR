using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ucNavbar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dtlMenu.DataSource = clsOrior.GetData(@"SELECT * FROM Menu ORDER BY MaMenu");
        dtlMenu.DataBind();
        if (Session["TenDN"] != null)
        {
            lbtnDX.Visible = true;
            lbTenDangNhap.Text = Session["TenDN"].ToString();
        }
        else
        {
            lbtnDX.Visible = false;
        }
        if (Session["Cart"] != null)
        {
            lbGioHang.Text = Session["CountCart"].ToString();
        }
    }



    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        Session["Search"] = txtSearch.Text;
        Response.Redirect("~/ResultSearch.aspx?Search=" + txtSearch.Text);
    }
    protected void lbtnDX_Click(object sender, EventArgs e)
    {
        Session["TenDN"] = null;
        Session["Cart"] = null;
        Response.Redirect("~/Default.aspx");
    }
}