<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.TagStyleSearchInputAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="2" cellspacing="2">
    <tr>
      <td width="150" align="left"><bairong:help HelpText="样式名称" Text="样式名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="StyleName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="StyleName" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="StyleName"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置搜索结果页地址" Text="搜索结果页地址：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" style="width:220px" Columns="25" MaxLength="50" id="SearchUrl" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="SearchUrl" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="SearchUrl"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否弹出窗口显示" Text="搜索结果显示：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="OpenWin" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="新窗口" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="本窗口" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置搜索框宽度" Text="搜索框宽度：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="InputWidth" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="InputWidth" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="InputWidth"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示需要搜索的字段类型" Text="显示搜索的字段类型：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsType" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示需要搜索的栏目" Text="显示需要搜索的栏目：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsChannel" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置栏目显示方式" Text="栏目显示方式：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsChannelRadio" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="下拉列表" Value="False" Selected="true"></asp:ListItem>
          <asp:ListItem Text="单选框" Value="True"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示日期下拉框" Text="显示日期下拉框：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsDate" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示日期范围" Text="显示日期范围" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsDateFrom" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
