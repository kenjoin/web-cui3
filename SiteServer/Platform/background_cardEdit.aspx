<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundCardEdit" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
    <title></title>
    <user:custom ID="Custom1" type="style" runat="server"></user:custom>
</head>
<body>
  <form id="form1" runat="server">
    <div class="column">
     <div  class="columntitle">编辑点卡</div>
     <table width="95%" align="center" cellpadding="3" cellspacing="3">
        <tr>
            <td width="10%">点卡类型:</td>
            <td align="left"><asp:DropDownList ID="CardType" runat="server">
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td>点卡账号:</td>
            <td><asp:TextBox ID="CardCount" runat="server"  class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" size="30"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td>点卡密码:</td>
            <td><asp:TextBox ID="PointLength" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" size="30" ></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td>点卡密码长度:</td>
            <td><asp:TextBox ID="PasswordLength" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" size="30" ></asp:TextBox></td>
        </tr>
        <tr>
          <tr>
            <td>到期时间:</td>
            <td><bairong:DateTimeTextBox id="DateEnd" class="colorblur" Columns="30" runat="server" /></td>
        </tr>
        <tr>
        <td></td>
            <td><asp:Button ID="Submit" runat="server" Text="生成"  class="button" OnClick="Submit_OnClick"  />&nbsp;&nbsp;
                <input class="button" type="button"  value="返 回" onclick="location.href='<%=returnUrl %>'" />
            </td>
            
        </tr>
     </table>
    </div>
    </form>
</body>
</html>
