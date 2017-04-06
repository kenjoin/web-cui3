<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.CrossSiteTransEdit" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>跨站转发设置</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="98%" align="center">
    <tr>
      <td width="150" align="left"><bairong:help HelpText="跨站转发类型" Text="跨站转发类型：" runat="server"></bairong:help></td>
      <td align="left"><asp:DropDownList ID="TransType" AutoPostBack="true" OnSelectedIndexChanged="TransType_OnSelectedIndexChanged" runat="server"> </asp:DropDownList></td>
    </tr>
    <asp:PlaceHolder ID="PlaceHolder_PublishmentSystem" Visible="false" runat="server">
      <tr>
        <td width="150" align="left"><bairong:help HelpText="指定跨站转发站点" Text="指定跨站转发站点：" runat="server"></bairong:help></td>
        <td align="left"><asp:DropDownList ID="PublishmentSystemIDCollection" AutoPostBack="true" OnSelectedIndexChanged="PublishmentSystemIDCollection_OnSelectedIndexChanged" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="150" align="left"><bairong:help HelpText="选择可跨站转发的栏目" Text="选择可跨站转发的栏目：" runat="server"></bairong:help></td>
        <td align="left"><asp:ListBox ID="NodeIDCollection" SelectionMode="Multiple" Rows="12" runat="server"></asp:ListBox></td>
      </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder_NodeNames" Visible="false" runat="server">
      <tr>
        <td width="150" align="left"><bairong:help HelpText="设置可跨站转发的栏目名称" Text="设置可跨站转发的栏目名称：" runat="server"></bairong:help></td>
        <td align="left"><asp:TextBox ID="NodeNames" TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" runat="server"></asp:TextBox>
          <br />
          多个栏目以,分隔，不添加栏目代表可以对所有栏目进行跨站转发。 </td>
      </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder_IsAutomatic" Visible="false" runat="server">
      <tr>
        <td width="150" align="left"><bairong:help HelpText="设置是否自动转发内容" Text="是否自动转发内容：" runat="server"></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsAutomatic" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" id="Ok" text="确 定" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
