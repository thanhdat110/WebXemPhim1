<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="phimLe.aspx.cs" Inherits="phimLe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clear">
    <div class="form">
    <div class="danhsach">
            <h1 class="chu"> Phim Lẻ</h1>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_XEM_FILMConnectionString %>"></asp:SqlDataSource>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="MAPHIM"  OnItemCommand="ListView2_ItemCommand">
        <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="chitiet" CommandArgument='<%# Eval("MAPHIM") %>'>
                    <div class="item1">
                    <asp:Image ID="MAPHIMLabel" runat="server" ImageUrl='<%# Eval("ANHPHIM") %>' CssClass="Image1" Height="225"/>
                    <br />
                    <div class="test" style="text-overflow:ellipsis;"><asp:Label ID="MATTLabel" runat="server" Text='<%# Eval("TENPHIM") %>'/></div>
                    <br />
                    Giá:&nbsp
                    <asp:Label ID="MALOAILabel" runat="server" Text='<%# Eval("GIAPHIM") %>'/>
                    </div></asp:LinkButton>
                </ItemTemplate>
    </asp:ListView>
        </div>
    <div class="clear"></div>
    <div class="Trang">
        <br />
        <br />
    <asp:DataPager ID="DataPager2" QueryStringField="page" PageSize="10" PagedControlID="ListView2" runat="server" >
        <Fields>           
            <asp:NumericPagerField ButtonType="button" NumericButtonCssClass="chuyenTrang" CurrentPageLabelCssClass="chuyenTrang1"/>
            <asp:NextPreviousPagerField ButtonType="button" RenderNonBreakingSpacesBetweenControls="true"
             LastPageText =">>" NextPageText=">" FirstPageText="<<" PreviousPageText="<"
              ShowFirstPageButton="true" ShowLastPageButton="true"
              ShowNextPageButton="true" ShowPreviousPageButton="true" ButtonCssClass="chuyenTrang"/>
           
        </Fields>
    </asp:DataPager>
        <br />
        <br />
        </div>
        </div>
        </div>
</asp:Content>

