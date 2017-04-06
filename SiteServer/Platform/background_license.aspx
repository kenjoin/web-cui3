<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundLicense" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <asp:Repeater ID="MyRepeater" runat="server">
    <itemtemplate>
      <DIV class="column">
        <div class="columntitle">
          <asp:Literal ID="ltlProductName" runat="server"></asp:Literal>
          许可证</div>
        <table width="95%" align="center" cellpadding="3" cellspacing="3">
          <tr>
            <td align="left" style="line-height:28px;"><asp:Literal ID="ltlLicense" runat="server"></asp:Literal></td>
          </tr>
        </table>
      </DIV>
    </itemtemplate>
  </asp:Repeater>
</form>
</body>
</HTML>
