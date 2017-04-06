<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundSeoSiteMapBaidu" %>
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
    <div class="columntitle">生成百度新闻地图&nbsp;<a href="http://help.siteserver.cn/function/159/365.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看搜索引擎优化帮助" align="absmiddle"></a></div>
    <br>
    <table cellpadding="3" cellspacing="3" width="95%" align="center">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="百度站点地图文件地址" Text="百度站点地图文件：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="SiteMapBaiduPath" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="SiteMapBaiduPath" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="SiteMapBaiduPath"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="负责人员的Email" Text="负责人员的Email：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="SiteMapBaiduWebMaster" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="SiteMapBaiduWebMaster" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="SiteMapBaiduWebMaster"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="更新周期" Text="更新周期：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="SiteMapBaiduUpdatePeri" runat="server" />
          分钟
          <asp:RequiredFieldValidator ControlToValidate="SiteMapBaiduUpdatePeri" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="SiteMapBaiduUpdatePeri"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
        <td align="left"><asp:Button class="button" ID="Submit" Text="生成站点地图" OnClick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
  <DIV class="column">
    <div class="columntitle">提交百度新闻地图</div>
    <table cellpadding="3" cellspacing="3" width="95%" align="center">
      <tr>
        <td width="200" align="left"><bairong:help HelpText="百度站点地图的提交地址" Text="百度站点地图提交地址：" runat="server" ></bairong:help></td>
        <td align="left"><a href="http://news.baidu.com/newsop.html" target="_blank">http://news.baidu.com/newsop.html</a></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="需要向Yahoo提交的站点地图文件地址" Text="站点地图文件地址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal id="ltlBaiduSiteMapUrl" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
