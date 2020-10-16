<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/DangNhap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="block">
      <video src="/anhnen/Chain - 25380.mp4" runat="server" autoplay="autoplay" loop="loop" muted="muted" class="block">
        
      </video>
      
      <div class="khungDN">
          <asp:Image ImageUrl="~/logo_Icon/logo.png" runat="server" Height="100" Width="370" CssClass="img"/>
            <h1 class="DN">Đăng Nhập</h1>     
          <table class="tableDN">          
              <tr>
                  <td class="chuDN">
                      Tên Đăng nhập
                  </td>
                  <td class="HopDN">
                      <asp:TextBox ID="TextBox1" runat="server" CssClass="boxDN"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td  class="chuDN">
                      Mật Khẩu
                  </td>
                  <td class="HopDN">
                      <asp:TextBox ID="TextBox2" runat="server" CssClass="boxDN"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td colspan="2">
                      <asp:Button ID="Button1" runat="server" Text="Đăng nhập" CssClass="nutDN"/>
                  </td>
              </tr>
              <tr>
                  <td class="KhungNutDK">
                      <asp:Button ID="Button2" runat="server" Text="Đăng ký"  CssClass="nutDK"/>
                  </td>
                  <td class="KhungNutCX">
                      <asp:Button ID="Button3" runat="server" Text="Chỉ xem"  CssClass="nutCX" OnClick="Button3_Click"/>
                  </td>
              </tr>
          </table>
            
        </div>
            </div>
    </form>
</body>
</html>
