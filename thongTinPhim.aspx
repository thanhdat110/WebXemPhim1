<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thongTinPhim.aspx.cs" Inherits="thongTinPhim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clear">
    <div class="form">
    <div class="trai">        
        <asp:ListView  ID="DataList2" runat="server" DataKeyField="MAPHIM" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <h2 class="chu">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENPHIM") %>'></asp:Label></h2>
                    <div class="dong">
                    <div class="TTPhimTrai">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ANHPHIM") %>' Width="100%" Height="250"/>
                        <br />            
                    </div>
                    <div class="TTPhimPhai">
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("BANNERPHIM") %>' Width="100%" Height="250"/>
                    </div>
                        </div>
                </ItemTemplate>
            </asp:ListView>
        <div class="clear"></div>
        <div class="khung3"><asp:Button ID="Button1" runat="server" Text="Xem Phim" PostBackUrl="~/xemPhim.aspx"/></div>
        <div class="clear"></div>       
        <asp:ListView  ID="ListView1" runat="server" DataKeyField="MAPHIM" DataSourceID="SqlDataSource1">
                <ItemTemplate>                   
                    <div class="dong">
                    <div class="TTPhimTrai">
                        <h3 class="chu" style="margin-bottom:0px;margin-top:5px;">Thông tin</h3>
                        <br />
                        <h4 class="chu" style="margin-bottom:0px;margin-top:5px;text-align:left;color:black;height:190px;background-color:#D8D8D8;border-radius:0px;">
                        Năm phát hành :&nbsp<asp:Label ID="Label3" runat="server" Text='<%# Eval("NAMPH") %>'></asp:Label>
                        <br /> 
                        Thể loại :&nbsp<asp:Label ID="Label4" runat="server" Text='<%# Eval("TEMLOAI") %>'></asp:Label>
                        &nbsp<asp:Label ID="Label6" runat="server" Text='<%# Eval("TENCT") %>'></asp:Label> 
                        <br /> 
                        Quốc gia :&nbsp<asp:Label ID="Label5" runat="server" Text='<%# Eval("TENQG") %>'></asp:Label>
                        </h4> 
                        <br />       
                    </div>
                    <div class="TTPhimPhai">                       
                        <h3 class="chu" style="margin-bottom:0px;margin-top:5px;">Nội dung</h3>
                        <br />
                        <asp:TextBox runat="server" ReadOnly="true" Text='<%# Eval("MOTA") %>' Height="190" TextMode="MultiLine" ForeColor="Black" Font-Names="Times New Roman" Width="100%" Font-Size="13" Font-Bold="true" CssClass="MoTa" BackColor="#D8D8D8" Visible="True" Wrap="True" EnableViewState="True" AutoCompleteType="None"></asp:TextBox>
                    </div>
                        </div>
                </ItemTemplate>
            </asp:ListView>
        <div class="clear"></div> 
        <asp:DataPager ID="DataPager3" QueryStringField="page" PageSize="1" PagedControlID="ListView1" runat="server" >
            </asp:DataPager>
        <asp:DataPager ID="DataPager2" QueryStringField="page" PageSize="1" PagedControlID="DataList2" runat="server" >
            </asp:DataPager>
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
                    </div></asp:LinkButton></ItemTemplate></asp:ListView></div><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_XEM_FILMConnectionString %>" ></asp:SqlDataSource>
            </div>
        </div>
        </div>
</asp:Content>

