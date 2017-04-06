<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundConfigurationTemplate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</HEAD>
<body>
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
  <div class="columntitle">模板生成设置</div> <br> 
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      
       <tr>
        <td width="170" align="left"><bairong:help HelpText="是否开启双击生成功能" Text="是否开启双击生成：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="IsCreateDoubleClick" AutoPostBack="false"  RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="开启" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="不开启" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
