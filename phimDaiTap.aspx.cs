using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class phimDaiTap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [PHIM],[THONGTINPHIM], WHERE [PHIM].[MATT] = [THONGTINPHIM].[MATT]";
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "chitiet")
        {
            Session["MAPHIM"] = e.CommandArgument.ToString();
            if (Session["MAPHIM"] != null)
            {
                Response.Redirect("thongTinPhim.aspx");
            }
        }
    }
}