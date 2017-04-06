<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.Modal.SelectImage" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>选择图片</title>
<script language="javascript" type="text/javascript">
function selectImage(textBoxUrl, imageUrl) {

	window.parent.document.getElementById('<%=Request.QueryString["TextBoxClientID"]%>').value = textBoxUrl;
	window.parent.document.getElementById('preview_<%=Request.QueryString["TextBoxClientID"]%>').src = imageUrl;
	window.parent.hidePopWin();
}
</script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form style="margin:0" runat="server">
  <div class="column" style="width:100%;">
    <TABLE width="100%" cellSpacing=0 cellPadding=0 border=0 style="line-height:28px;">
      <TBODY>
        <TR>
          <TD width="50"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/back.gif" CommandName="NavigationBar" CommandArgument="Back" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
          <TD width="50"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/up.gif" CommandName="NavigationBar" CommandArgument="Up" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
          <TD width="50"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/reload.gif" CommandName="NavigationBar" CommandArgument="Reload" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
          <TD width="5"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/seperator.gif"></asp:ImageButton></TD>
          <TD width="80"><nobr>
            <asp:HyperLink ID="UploadLink" runat="server">
              <asp:ImageButton  runat="server" ImageUrl="~/sitefiles/bairong/icons/add.gif" ImageAlign="AbsBottom"></asp:ImageButton>
              上传图片</asp:HyperLink>
            </nobr></TD>
          <TD align="right"><SPAN>当前目录：
            <bairong:NoTagText id="CurrentDirectory" runat="server" />
            &nbsp;</SPAN></TD>
        </TR>
      </TBODY>
    </TABLE>
  </div>
  <table width="100%" align="center" cellspacing="0" cellpadding="0">
    <tr>
      <td></td>
    </tr>
  </table>
  <div class="column" style="width:100%;">
    <div class="columntitle">文件列表</div>
    <bairong:NoTagText id="FileSystems" runat="server" enableViewState="false" />
  </div>
</form>
</body>
</html>