<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.TagStyleCommentsAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
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
      <td width="120" align="left"><bairong:help HelpText="样式名称" Text="样式名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="StyleName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="StyleName" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="StyleName"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否翻页显示" Text="是否翻页显示：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsPage" AutoPostBack="true" OnSelectedIndexChanged="IsPage_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="翻页" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不翻页" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phPageNum" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="设置每页显示项数" Text="每页显示项数：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="PageNum" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="PageNum" ErrorMessage="*" Display="Dynamic"
						runat="server" />
          <asp:RegularExpressionValidator
						ControlToValidate="PageNum"
						ValidationExpression="\d+"
						Display="Dynamic"
						ErrorMessage="*"
						runat="server"/></td>
      </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phTotalNum" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="设置评论显示数" Text="评论显示数：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="TotalNum" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="TotalNum" ErrorMessage="*" Display="Dynamic"
						runat="server" />
          <asp:RegularExpressionValidator
						ControlToValidate="TotalNum"
						ValidationExpression="\d+"
						Display="Dynamic"
						ErrorMessage="*"
						runat="server"/></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示查看全部链接" Text="是否显示查看全部链接：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsLinkToAll" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否启用引用功能" Text="是否启用引用功能：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsReference" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="启用" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不启用" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否启用支持/反对功能" Text="是否启用支持/反对功能：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsDigg" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="启用" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不启用" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示地理位置" Text="是否显示地理位置：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsLocation" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示IP地址" Text="是否显示IP地址：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsIPAddress" RepeatDirection="Horizontal" runat="server">
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
