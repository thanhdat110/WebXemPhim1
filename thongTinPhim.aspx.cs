using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class thongTinPhim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MAPHIM"] != null)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [PHIM],[THONGTINPHIM],[TAPPHIM],[CHITIETPHIM],[QUOCGIA],[THELOAI] WHERE [PHIM].[MATT] =[THONGTINPHIM].[MATT] AND [PHIM].[MACT] =[CHITIETPHIM].[MACT] AND [PHIM].[MAQG] =[QUOCGIA].[MAQG] AND [PHIM].[MALOAI] =[THELOAI].[MALOAI] AND [THONGTINPHIM].[MATT] = [TAPPHIM].[MATT] AND [PHIM].[MAPHIM]='" + Session["MAPHIM"].ToString() + "'";

        }

    }
    protected void DataList1_ItemCommand(object sender, ListViewCommandEventArgs e)
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