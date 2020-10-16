using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [PHIM],[THONGTINPHIM] WHERE [PHIM].[MATT] =[THONGTINPHIM].[MATT]";
        SqlDataSource2.SelectCommand = "SELECT * FROM [PHIM],[THONGTINPHIM] WHERE [PHIM].[MATT] =[THONGTINPHIM].[MATT]";
        SqlDataSource3.SelectCommand = "SELECT * FROM [PHIM],[THONGTINPHIM] WHERE [PHIM].[MATT] =[THONGTINPHIM].[MATT]";
        SqlDataSource4.SelectCommand = "SELECT * FROM [PHIM],[THONGTINPHIM],[DANHGIA] WHERE [PHIM].[MATT] =[THONGTINPHIM].[MATT] AND [DANHGIA].[MADG]=[PHIM].[MADG] AND [DANHGIA] = 10";
    }
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
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

    protected void ListView3_ItemCommand(object sender, ListViewCommandEventArgs e)
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