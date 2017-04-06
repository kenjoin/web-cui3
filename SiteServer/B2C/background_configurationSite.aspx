<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundConfigurationSite" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">站点配置&nbsp;<a href="http://help.siteserver.cn/manage/215/790.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看站点配置帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td align="left" width="200"><bairong:help HelpText="该网站的名称" Text="站点名称：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="PublishmentSystemName" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="PublishmentSystemName" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="PublishmentSystemName"
                        ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="访问方式" Text="访问方式：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsStaticVisutalType" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="网页的编码" Text="网页编码：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList id="Charset" runat="server"></asp:DropDownList>
          <br />
          （模板编码将同步修改） </td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置信息每页显示的数目" Text="信息每页显示数目：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" Text="18" MaxLength="50" id="PageSize" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="PageSize"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          <asp:RegularExpressionValidator
                    runat="server"
                    ControlToValidate="PageSize"
                    ValidationExpression="^([1-9]|[1-9][0-9]|1[0-7][0-9]|180)$"
                    ErrorMessage="*"
                    Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="是否统计内容总点击量" Text="是否统计内容总点击量：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCountHits" AutoPostBack="true" OnSelectedIndexChanged="IsCountHits_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
          （需要重新生成页面）</td>
      </tr>
      <asp:PlaceHolder ID="phIsCountHitsByDay" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="是否统计内容日/周/月点击量" Text="是否统计内容日/周/月点击量：" runat="server" ></bairong:help></td>
          <td align="left"><asp:RadioButtonList ID="IsCountHitsByDay" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td align="left"><bairong:help HelpText="是否统计文件下载量" Text="是否统计文件下载量：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCountDownload" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
