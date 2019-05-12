using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDNAdmin"] == null)
        {
            Response.Redirect("~/Admin/Login.aspx");
        }
        else
        {
            Response.Redirect("~/Admin/ThongKe.aspx");
        }
    }
}