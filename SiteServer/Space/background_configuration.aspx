<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.LiveServerConfiguration" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD><body>
<form id="MyForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">全局设置</div>
    <br>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="设置空间名称" Text="空间名称：" runat="server" ></bairong:help>        </td>
        <td align="left"><asp:TextBox ID="StringPersonalSpace" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" runat="server"></asp:TextBox>        </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
        	<asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" />        </td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
