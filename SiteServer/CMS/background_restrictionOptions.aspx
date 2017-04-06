<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundRestrictionOptions" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" src="../Inc/auxiliary.js"></script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">访问限制配置 </div>
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td width="220" align="left"><bairong:help HelpText="选择是否启用页面访问限制功能" Text="是否启用页面访问限制功能：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsRestriction" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsRestriction_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
    </table>
    <asp:PlaceHolder ID="PlaceHolder_Options" Visible="false" runat="server">
      <div class="tips">提示：在此设置各栏目页面访问限制规则，修改设置后需要重新生成页面才能使规则生效</div>
      <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
        <tr class="summary-title" align="Center" style="height:22px;">
          <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栏目名</td>
          <td align="left" style="width:100px;">栏目页访问限制</td>
          <td align="left" style="width:100px;">内容页访问限制</td>
          <td align="center" style="width:50px;">&nbsp;</td>
        </tr>
        <asp:Repeater ID="MyRepeater" runat="server">
          <itemtemplate>
            <bairong:NoTagText id="TrHtml" runat="server" />
            
              <td align="left"><nobr>
                <bairong:NoTagText id="NodeTitle" runat="server" />
                </nobr></td>
              <td align="left" style="width:100px;"><nobr>
                <bairong:NoTagText id="RestrictionTypeOfChannel" runat="server" />
                </nobr></td>
              <td align="left" style="width:100px;"><nobr>
                <bairong:NoTagText id="RestrictionTypeOfContent" runat="server" />
                </nobr></td>
              <td align="center" style="width:50px;"><bairong:NoTagText id="EditLink" runat="server" /></td>
            </tr>
          </itemtemplate>
        </asp:Repeater>
      </table>
    </asp:PlaceHolder>
  </div>
</form>
</body>
</HTML>
