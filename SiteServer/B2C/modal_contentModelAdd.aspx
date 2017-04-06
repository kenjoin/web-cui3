<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ContentModelAdd" Trace="false"%>
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
<body style="background-color:#FFFFFF">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="0" align="left"><bairong:help HelpText="内容模型标识" Text="模型标识：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="tbModelID" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbModelID" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="tbModelID"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="内容模型名称" Text="模型名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="tbModelName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbModelName" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="tbModelName"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="图标" Text="图标：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="255" id="tbIconUrl" runat="server" /><br>
（图标必须位于SiteFiles\bairong\Icons\tree文件夹下,可以为空）</td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="辅助表类型" Text="辅助表类型：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:RadioButtonList ID="rblTableType" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblTableType_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:RadioButtonList></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="辅助表名称" Text="辅助表名称：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:DropDownList ID="ddlTableName" runat="server"></asp:DropDownList></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="模型简介。" Text="模型简介：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="350" Rows="4" MaxLength="200" TextMode="MultiLine" id="tbDescription" runat="server" /></td>
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
