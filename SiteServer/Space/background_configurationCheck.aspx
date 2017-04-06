<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.LiveServerConfigurationCheck" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tab">
    <asp:Literal ID="ltlTabs" runat="server"></asp:Literal>
    <div class="clearer"></div>
  </div>
  <DIV class="column">
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="是否审核匿名用户评论" Text="是否审核匿名用户评论：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsAnonymousCheckComment" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="是否审核匿名用户留言" Text="是否审核匿名用户留言：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsAnonymousCheckWord" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="是否启用敏感词自动过滤" Text="是否启用敏感词自动过滤：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCensorship" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="需要审核的词语" Text="需要审核的词语：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="90" Rows="6" MaxLength="200" id="CensorWords" TextMode="MultiLine" runat="server" /><br>
（用“,”分割需要审核的词语，相关词语将替换为“***”）
         </td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
