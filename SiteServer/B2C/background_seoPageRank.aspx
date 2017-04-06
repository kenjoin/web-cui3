<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundSeoPageRank" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" style="margin:0" runat="server">
  <DIV class="column">
    <div class="columntitle">Google PageRank查询</div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="0" align="right"><bairong:help HelpText="查询Google PageRank的网址" Text="查询网址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="SiteUrl" Width="220" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="SiteUrl" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
        <td width="0" align="right"><bairong:help HelpText="查询Google PageRank的类型" Text="类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="Type" RepeatDirection="Vertical" runat="server"></asp:RadioButtonList></td>
        <td width="0" align="right"><bairong:help HelpText="查询" Text="查询页数：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="PageNum" Text="1" Width="60" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="PageNum" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ControlToValidate="PageNum" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="*" runat="server"/></td>
      </tr>
    </table>
    <asp:Button class="button" ID="SearchButton" OnClick="SearchButton_OnClick" Text="查 询" runat="server" />
    </td>
  </DIV>
  <br>
  <div id="DetailControl" runat="server">
    <DIV class="column">
      <div class="columntitle">
        <bairong:NoTagText id="PageRankTitle" runat="server" />
      </div>
      <div class="columncontent" style="margin-left:5px;">
        <bairong:NoTagText id="PageRankResults"	runat="server" />
      </div>
    </div>
  </div>
</form>
</body>
</html>