<%@ Page Language="C#" Inherits="SiteServer.Express.BackgroundPages.BackgroundConfiguration" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="column">
    <div class="columntitle">企业黄页设置</div>
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="设置产品分类级别" Text="产品分类级别：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="CategoryLevel"
			RepeatDirection="Horizontal"
			runat="server">
            <asp:ListItem Text="一级" Value="1" />
            <asp:ListItem Text="二级" Value="2" Selected="True"/>
          </asp:RadioButtonList></td>
      </tr>
    </table>
    <br>
    <table width="95%" align="center" cellspacing="0" cellpadding="0" >
      <tr>
        <td align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server"/></td>
      </tr>
    </table>
  </div>
  <br />
</form>
</body>
</HTML>
