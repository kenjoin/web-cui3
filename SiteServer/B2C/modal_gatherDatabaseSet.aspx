<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.GatherDatabaseSet" Trace="false"%>
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
  <table cellpadding="5" cellspacing="3" width="100%" align="center">
    <tr align="left">
      <td colspan="2"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center;" runat="server" /></td>
    </tr>
    <tr>
      <td width="110" align="left"><bairong:help HelpText="选择栏目，采集到的内容将添加到此栏目中" Text="采集到栏目：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList ID="NodeIDDropDownList" runat="server"></asp:DropDownList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="需要采集的内容数，0代表采集所有内容" Text="采集内容数：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="4" MaxLength="4" id="GatherNum" Style="text-align:right" Text="10" runat="server"/>
        （0代表不限定）
        <asp:RequiredFieldValidator
					ControlToValidate="GatherNum"
					ErrorMessage="*"
					Display="Dynamic"
					runat="server"/>
        <asp:RegularExpressionValidator
					ControlToValidate="GatherNum"
					ValidationExpression="\d+"
					ErrorMessage="采集数只能是数字"
					Display="Dynamic"
					runat="server"/></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="开始采集" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
