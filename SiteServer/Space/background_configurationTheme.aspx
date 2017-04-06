<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.LiveServerConfigurationTheme" %>
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
  <DIV class="column">
    <div class="columntitle">显示界面设置</div>
    <br>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="个人空间默认主题" Text="个人空间默认主题：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="DefaultTheme1" OnSelectedIndexChanged="DefaultTheme1_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
          <asp:DropDownList ID="DefaultTheme2" runat="server"></asp:DropDownList>
          <asp:Literal ID="ltlDefaultTheme" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置个人空间使用的LOGO图片地址" Text="个人空间LOGO地址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="LogoUrl" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="LogoUrl"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          (尺寸：100×22) <IMG src="<%=PreviewImageSrc%>" alt=图片预览 name="preview" height="22" width="100" align="absmiddle" id=preview></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置空间页面头部右侧显示信息" Text="空间页面头部右侧显示信息：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Rows="4" Columns="80" MaxLength="500" id="SpaceHeaderRight" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="SpaceHeaderRight"
					ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置空间页面底部显示信息" Text="空间页面底部显示信息：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Rows="4" Columns="80" MaxLength="500" id="SpaceFooter" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="SpaceFooter"
					ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
