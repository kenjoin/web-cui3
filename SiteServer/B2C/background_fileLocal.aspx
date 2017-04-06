<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundFileLocal" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form style="margin:0" runat="server">
  <DIV class="column" style="width:96%;">
    <div class="columntitle">
      <div style="float:left">
        <asp:Literal ID="MachineName" runat="server"></asp:Literal>
      </div>
      <div style="clear:both"></div>
    </div>
    <TABLE style=" line-height:28px;" width="100%" cellSpacing=1 cellPadding=1 border=0>
      <TBODY>
        <TR>
          <TD width="50"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/up.gif" CommandName="NavigationBar" CommandArgument="Up" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
          <TD width="50"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/reload.gif" CommandName="NavigationBar" CommandArgument="Reload" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
          <TD width="5"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/seperator.gif"></asp:ImageButton></TD>
          <TD width="50"><nobr>
            <asp:HyperLink ID="UploadLink" NavigateUrl="javascript:undefined;" runat="server">
              <asp:ImageButton  runat="server" ImageUrl="~/sitefiles/bairong/icons/add.gif" ImageAlign="AbsBottom"></asp:ImageButton>
              上传文件</asp:HyperLink>
            </nobr></TD>
          <TD width="50"><asp:ImageButton ID="CreateButton" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/create.gif"></asp:ImageButton></TD>
          <TD width="50"><asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/delete.gif" CommandName="NavigationBar" CommandArgument="Delete" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
          <TD width="5"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/seperator.gif"></asp:ImageButton></TD>
          <TD width="50"><asp:ImageButton ID="SendButton" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/toRight.gif"></asp:ImageButton></TD>
          <td>&nbsp;</td>
        </TR>
        <TR>
          <td width="50">&nbsp;
            <input id="CheckAll" type="checkbox" onClick="_checkFormAll(this.checked);">
            <label for="CheckAll">全选</label></td>
          <TD colspan="10" align="left">&nbsp;
            <asp:DropDownList ID="ListType" runat="server" OnSelectedIndexChanged="ListType_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            &nbsp;&nbsp;当前目录：
            <bairong:NoTagText id="CurrentDirectory" runat="server" />
            &nbsp;</TD>
        </TR>
      </TBODY>
    </TABLE>
    <bairong:NoTagText id="FileSystems" runat="server" enableViewState="false" />
  </DIV>
</form>
</body>
</html>
