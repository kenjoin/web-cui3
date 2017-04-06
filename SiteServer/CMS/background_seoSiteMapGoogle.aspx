<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundSeoSiteMapGoogle" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">生成站点地图&nbsp;<a href="http://help.siteserver.cn/function/159/365.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看搜索引擎优化帮助" align="absmiddle"></a></div>
    <br>
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="站点地图文件地址" Text="站点地图文件：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="SiteMapGooglePath" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="SiteMapGooglePath" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="SiteMapGooglePath"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="设置页面的更新频率" Text="页面更新频率：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="SiteMapGoogleChangeFrequency" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="设置是否显示最后更新日期" Text="是否显示最后更新日期：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="SiteMapGoogleIsShowLastModified" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="站点地图分页数" Text="站点地图分页数" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="8" id="SiteMapGooglePageCount" Style="text-align:right" runat="server"/>
          篇
          <asp:RequiredFieldValidator
									ControlToValidate="SiteMapGooglePageCount"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
          <asp:RegularExpressionValidator
									ControlToValidate="SiteMapGooglePageCount"
									ValidationExpression="\d+"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
        <td align="left"><asp:Button class="button" ID="Submit" Text="生成站点地图" OnClick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
  <DIV class="column">
    <div class="columntitle">Google 提交地址</div>
    <table cellpadding="3" cellspacing="3" width="95%" align="center">
      <tr>
        <td width="200" align="center"><bairong:help HelpText="Google站点地图的提交地址" Text="Google站点地图提交地址：" runat="server" ></bairong:help></td>
        <td align="left"><A href="http://www.google.com/webmasters/sitemaps" target="_blank">http://www.google.com/webmasters/sitemaps</A></td>
      </tr>
      <tr>
        <td width="160" align="center"><bairong:help HelpText="需要向Google提交的站点地图文件地址" Text="站点地图文件地址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal id="ltlGoogleSiteMapUrl" runat="server" /></td>
      </tr>
    </table>
  </DIV>
  <br />
  <DIV class="column">
    <div class="columntitle">Yahoo 提交地址</div>
    <table cellpadding="3" cellspacing="3" width="95%" align="center">
      <tr>
        <td width="200" align="center"><bairong:help HelpText="Yahoo站点地图的提交地址" Text="Yahoo站点地图提交地址：" runat="server" ></bairong:help></td>
        <td align="left"><A href="https://siteexplorer.search.yahoo.com/" target="_blank">https://siteexplorer.search.yahoo.com</A></td>
      </tr>
      <tr>
        <td width="160" align="center"><bairong:help HelpText="需要向Yahoo提交的站点地图文件地址" Text="站点地图文件地址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal id="ltlYahooSiteMapUrl" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
