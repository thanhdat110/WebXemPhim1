<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xemPhim.aspx.cs" Inherits="xemPhim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clear">
    <div class="form">
    <div class="siba">
        
    </div>            
    <div class="trai">
        <asp:ListView  ID="DataList2" runat="server" DataKeyField="MAPHIM" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <h2 class="chu">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENPHIM") %>'></asp:Label></h2>
                    <div class="video" style="text-align:center;background-color:black;border:1px blue solid;border-radius:5px;margin:10px;">
                    <video id="Video1" width="726" runat="server" controls="controls" preload="metadata"  autoplay="autoplay" type="video/mp4" >
                        <source id="Source1" src='<%# Eval("LINKPHIM") %>' runat="server" type="video/mp4"/>
                    </video>

                    </div>
                </ItemTemplate>
            </asp:ListView>
        <div class="clear"></div>
        <br />
        &nbsp&nbsp&nbsp<span style="color:yellow">Chọn tập --></span>&nbsp<asp:DataPager ID="DataPager2" QueryStringField="page" PageSize="1" PagedControlID="DataList2" runat="server" >
            <Fields>
                <asp:NumericPagerField ButtonCount="20" NumericButtonCssClass="chuyenTrang" CurrentPageLabelCssClass="chuyenTrang1"/>
            </Fields>

        </asp:DataPager>
        <br />
        <br />
        <br />
        <div class="khung3" style="margin-bottom:10px;">
        <asp:ListView ID="DataList3" runat="server" DataKeyField="MAPHIM" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div id="fb-root"></div>
                <script data-crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0" data-nonce="yFwlM6xk" async="async" defer="defer"></script>
                        <div class="binhluan">
                <div id="BL" class="fb-comments" data-href="https://www.facebook.com/xemphim.web.'<%# Eval("MABL") %>'?__tn__=%2CdC-R-R&amp;eid=ARDKqTPrbsFdSTsla9lf3C0QhE8w7GBcSdeJoWI6LQWtNAipJj5Q58xfxyHDK1KiWDjpMsa10ClwGxCj&amp;hc_ref=ART4L8xbkdufed65Zke-dm9KBglaW56LmBxo9yWA8mtyJm9pE6yjkhCSh99uMFZGCT8&amp;fref=nf" data-numposts="5" data-width="720" ></div></div>       
    
                </ItemTemplate>
            </asp:ListView>
        <asp:DataPager ID="DataPager1" QueryStringField="page" PageSize="1" PagedControlID="DataList3" runat="server" ></asp:DataPager>
        </div>
        </div>
        <div class="phai">
            
            <h2 class="chu">Phim nổi bật</h2>
            <div class="khung">
            <asp:ListView  ID="DataList1" runat="server" DataKeyField="MAPHIM" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="chitiet" CommandArgument='<%# Eval("MAPHIM") %>'>
                    <div class="item">
                    <div class="Traimenunho">
                    <asp:Image ID="MAPHIMLabel" runat="server" ImageUrl='<%# Eval("ANHPHIM") %>' CssClass="Image"/>
                            </div>
                        <div class="Phaimenunho">
                    <div class="test" style="text-overflow:ellipsis;"><asp:Label ID="MATTLabel" runat="server" Text='<%# Eval("TENPHIM") %>'/></div>
                    <br />
                    Giá:&nbsp
                    <asp:Label ID="MALOAILabel" runat="server" Text='<%# Eval("GIAPHIM") %>'/>
                            </div>
                    </div></asp:LinkButton></ItemTemplate></asp:ListView></div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_XEM_FILMConnectionString %>" ></asp:SqlDataSource>
            </div>
        </div>
        </div>
</asp:Content>

