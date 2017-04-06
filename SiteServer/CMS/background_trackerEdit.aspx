<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundTrackerEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">修改统计设置&nbsp;<a href="http://help.siteserver.cn/function/202/763.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看流量统计设置帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="是否统计页面流量" Text="是否统计页面访问量：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsTracker" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
          （需要重新生成页面）</td>
      </tr>
      <tr>
        <td width="30%" align="left"><bairong:help HelpText="设置原有统计天数" Text="原有统计天数：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="TrackerDays" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="TrackerDays"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="TrackerDays"
			ValidationExpression="\d+"
			ErrorMessage="*"
			Display="Dynamic" />
          天 </td>
      </tr>
      <tr>
        <td width="30%" align="left"><bairong:help HelpText="设置原有访问量，系统将把原有访问量和现有访问量相加作为总的访问量" Text="原有访问量(PageView)：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="TrackerPageView" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="TrackerPageView"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="TrackerPageView"
			ValidationExpression="\d+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="30%" align="left"><bairong:help HelpText="设置原有访客数，系统将把原有访客数和现有访客数相加作为总的访客数" Text="原有访客数(UniqueVisitor)：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="TrackerUniqueVisitor" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="TrackerUniqueVisitor"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="TrackerUniqueVisitor"
			ValidationExpression="\d+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="30%" align="left"><bairong:help HelpText="设置浏览者最后一次浏览页面后多久视为离线" Text="浏览者离线时间：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="TrackerCurrentMinute" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="TrackerCurrentMinute"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="TrackerCurrentMinute"
			ValidationExpression="\d+"
			ErrorMessage="*"
			Display="Dynamic" />
          分钟 </td>
      </tr>
      <tr>
        <td width="30%" align="left"><bairong:help HelpText="设置前台页面显示统计数据的样式" Text="统计显示样式：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="TrackerStyle" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
