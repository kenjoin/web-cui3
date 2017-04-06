<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundDisplayModeTranslate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">显示方式转移</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="选择需要将显示方式转移到的栏目" Text="转移到：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="PublishmentSystemIDDropDownList" DataTextField="PublishmentSystemName" DataValueField="PublishmentSystemID" runat="server"> </asp:DropDownList>
          <asp:RequiredFieldValidator
			ControlToValidate="PublishmentSystemIDDropDownList"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="唯一标识此显示方式的字符串" Text="显示方式标识：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="tbDisplayModeENName" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator
			ControlToValidate="tbDisplayModeENName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/></td>
      </tr>
    </table>
  </DIV>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td ></td>
      <td align="center" ><asp:Button class="button" id="Submit" text="转 移" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;&nbsp;
        <input type=button class="button" onClick="location.href='background_displayMode.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
      <td ></td>
    </tr>
  </table>
</form>
</body>
</html>