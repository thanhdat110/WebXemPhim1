<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="../dist/stylesheets/superslides.css" />
    <style>
     #heart {
    margin:10px;
    padding:0px;
    text-align:center;
    position:absolute;
    width:50px;
    height:40px;
}
    #heart:before,
    #heart:after
    {
        position: absolute;
        content: "";
        left:20px;
        top:0;
        width:20px;
        height:32px;
        background-color: rgba(0, 0, 255, 1);
        -moz-border-radius:50px 50px 0 0;
        border-radius:50px 50px 0 0;
        -moz-transform:rotate(-45deg);
        -ms-transform:rotate(-45deg);
        -o-transform:rotate(-45deg);
        -webkit-transform:rotate(-45deg);
        transform:rotate(-45deg);
        -webkit-transform-origin:0 100%;
        -moz-transform-origin:0 100%;
        -ms-transform-origin:0 100%;
        -o-transform-origin:0 100%;
        transform-origin:0 100%;
    }
    #heart:after {
        left:0;
        -moz-transform:rotate(45deg);
        -ms-transform:rotate(45deg);
        -o-transform:rotate(45deg);
        -webkit-transform:rotate(45deg);
        transform:rotate(45deg);
        -webkit-transform-origin:100% 100%;
        -moz-transform-origin:100% 100%;
        -ms-transform-origin:100% 100%;
        -o-transform-origin:100% 100%;
        transform-origin:100% 100%;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="  position:fixed;
                      background-image: url('anhnen/art_artwork_photoshop_manipulation_fantasy_artistic_7016x4960.jpg');
                      background-size: 100% 100%;
                      background-repeat: no-repeat;
                      right:0;
                      left:0;
                      top:0px;                    
                      bottom: 0;
                      min-width: 100%; 
                      min-height: 100%;
                      margin:0px;"></div>
        <div class="clear"></div>
    <div class="banner5">
        <video id="myVideo" type="video/mp4" runat="server" loop="loop"  autoplay="autoplay"
                      style="position: absolute;
                      right:-500px;
                      left:-500px;
                      top:0px;                    
                      bottom: 0;
                      min-width: 100%;
                      min-height:100%; 
                      margin:auto;text-align:center">
        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
            <ItemTemplate>
             <source src='<%# Eval("TRAILER") %>' runat="server" type="video/mp4"/>
                </ItemTemplate> 
        </asp:ListView>
        </video>
        <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource4">
            <ItemTemplate>
        <div class="content">
                 <div class="logo" style="margin-top:-20px;"><button id="myBtn" onclick="myFunction()"" type="button">Tắt âm</button></div>
                  <div id="heart"><h4 style="color:yellow;position:absolute;left:10px;top:-18px;z-index:1">9.8</h4></div>
            <img src='<%# Eval("ANHPHIM") %>' height="250" width="175" class="anhbanner"/>                    
                  <h1><%# Eval("TENPHIM") %></h1>
                  <p><%# Eval("MOTA") %></p>
                  <asp:Button runat="server" id="Btn" CssClass="myBtn" CommandName="chitiet" CommandArgument='<%# Eval("MAPHIM") %>' Text="Play"/>
              </div>
                </ItemTemplate> 
        </asp:ListView>
        <asp:DataPager ID="DataPager3" runat="server" PageSize="1" PagedControlID="ListView5"></asp:DataPager>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_XEM_FILMConnectionString %>"></asp:SqlDataSource>
    </div>   
        <div class="clear"></div> 
        <div class="menuNgang"></div>
        <div class="clear"></div>  
    <div class="form"> 
        <div class="clear"></div>
        <h2 class="chu"> Phim đề cử</h2>
        <div class="clear"></div> 
        <div class="banner">               
            <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3" DataKeyNames="MAPHIM" OnItemCommand="ListView3_ItemCommand">
                <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="chitiet" CommandArgument='<%# Eval("MAPHIM") %>'>
                    <div class="item1" style="position: relative;">
                    <div id="heart"><h4 style="color:yellow;position:absolute;left:10px;top:-18px;z-index:1">9.8</h4></div> 
                    <asp:Image ID="MAPHIMLabel" runat="server" ImageUrl='<%# Eval("ANHPHIM") %>' CssClass="Image1" Height="225"/>              
                    <br />
                    <div class="test" style="text-overflow:ellipsis;"><asp:Label ID="MATTLabel" runat="server" Text='<%# Eval("TENPHIM") %>'/></div>
                    <br />
                    Giá:&nbsp
                    <asp:Label ID="MALOAILabel" runat="server" Text='<%# Eval("GIAPHIM") %>'/>
                    </div></asp:LinkButton></ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_XEM_FILMConnectionString %>"></asp:SqlDataSource>
        </div>
        
    <div class="clear"></div>
    <div class="trai">     
        <h2 class="chu"> Phim Lẻ</h2><div class="khung">
        <div class="danhsach">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_XEM_FILMConnectionString %>"></asp:SqlDataSource>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="MAPHIM" OnItemCommand="ListView2_ItemCommand"><ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="chitiet" CommandArgument='<%# Eval("MAPHIM") %>'>
                    <div class="item1" style="position: relative;">
                    <div id="heart"><h4 style="color:yellow;position:absolute;left:10px;top:-18px;z-index:1">9.8</h4></div> 
                    <asp:Image ID="MAPHIMLabel" runat="server" ImageUrl='<%# Eval("ANHPHIM") %>' CssClass="Image1" Height="225"/>              
                    <br />
                    <div class="test" style="text-overflow:ellipsis;"><asp:Label ID="MATTLabel" runat="server" Text='<%# Eval("TENPHIM") %>'/></div>
                    <br />
                    Giá:&nbsp
                    <asp:Label ID="MALOAILabel" runat="server" Text='<%# Eval("GIAPHIM") %>'/>
                    </div></asp:LinkButton></ItemTemplate></asp:ListView></div><div class="clear"></div>
        <asp:DataPager ID="DataPager2" QueryStringField="page" PageSize="8" PagedControlID="ListView2" runat="server" ></asp:DataPager>
        <asp:Button ID="Button1" runat="server" Text="Xem thêm -->" PostBackUrl="~/phimLe.aspx" CssClass="nutXemthem"/>
                <br />
                <br />
        </div>
            <div class="clear"></div>
            <h2 class="chu"> Phim dài tập</h2><div class="khung">
        <div class="danhsach">
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_XEM_FILMConnectionString %>"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="MAPHIM" OnItemCommand="ListView1_ItemCommand"><ItemTemplate>
                 <asp:LinkButton ID="LinkButton3" runat="server" CommandName="chitiet" CommandArgument='<%# Eval("MAPHIM") %>'>
                    <div class="item1">
                        <div id="heart"><h4 style="color:yellow;position:absolute;left:10px;top:-18px;z-index:1">9.8</h4></div>
                    <asp:Image ID="MAPHIMLabel" runat="server" ImageUrl='<%# Eval("ANHPHIM") %>' CssClass="Image1" Height="225"/>
                    <br />
                    <div class="test" style="text-overflow:ellipsis;"><asp:Label ID="MATTLabel" runat="server" Text='<%# Eval("TENPHIM") %>'/></div>
                    <br />
                    Giá:&nbsp
                    <asp:Label ID="MALOAILabel" runat="server" Text='<%# Eval("GIAPHIM") %>'/>
                    </div></asp:LinkButton></ItemTemplate></asp:ListView><div class="clear"></div>
 
    <asp:DataPager ID="DataPager1" QueryStringField="page" PageSize="8" PagedControlID="ListView1" runat="server" ></asp:DataPager>
    <asp:Button ID="Button2" runat="server" Text="Xem thêm -->" PostBackUrl="~/phimDaiTap.aspx" CssClass="nutXemthem"/>
                <br />
                <br />
        </div>
        </div>
        </div>
    <div class="phai">
            
            <h2 class="chu">Phim nổi bật</h2><div class="khung">
            <asp:ListView  ID="DataList1" runat="server" DataKeyField="MAPHIM" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand"><ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="chitiet" CommandArgument='<%# Eval("MAPHIM") %>'>
                    <div class="item">
                        <div class="Traimenunho">
                            <div id="heart"><h4 style="color:yellow;position:absolute;left:10px;top:-18px;z-index:1">9.8</h4></div>
                    <asp:Image ID="MAPHIMLabel" runat="server" ImageUrl='<%# Eval("ANHPHIM") %>' CssClass="Image"/>
                            </div>
                        <div class="Phaimenunho">
                    <div class="test" style="text-overflow:ellipsis;"><asp:Label ID="MATTLabel" runat="server" Text='<%# Eval("TENPHIM") %>'/></div>
                    <br />
                    Giá:&nbsp
                    <asp:Label ID="MALOAILabel" runat="server" Text='<%# Eval("GIAPHIM") %>'/>
                            </div>
                    </div></asp:LinkButton></ItemTemplate></asp:ListView></div></div><div class="clear"></div>
        </div>
    </form>
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="javascripts/jquery.easing.1.3.js"></script>
  <script src="javascripts/jquery.animate-enhanced.min.js"></script>
  <script src="../dist/jquery.superslides.js" type="text/javascript" charset="utf-8"></script>     
    <script>
        var video = document.getElementById("myVideo");
        var btn = document.getElementById("myBtn");
        function myFunction() {
            if (video.muted == true) {
                video.muted = false;
                btn.innerHTML = "Tắt âm";
            } else
            {
                video.muted = true
                btn.innerHTML = "Bật âm";
            }
        }video.audioTracks

    </script>
</body>
</html>
