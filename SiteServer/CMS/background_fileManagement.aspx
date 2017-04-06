<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundFileManagement" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<br>
<form style="margin:0" runat="server">
  <DIV class="column" style="width:96%;">
  <div id="columntitle" class="columntitle"><trans>文件列表</trans>&nbsp;<a href="http://help.siteserver.cn/function/164/376.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看站点文件管理帮助" align="absmiddle"></a></div>

    <TABLE style=" line-height:28px;" width="100%" cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
                <TR>
                  <TD width="50"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/back.gif" CommandName="NavigationBar" CommandArgument="Back" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
                  <TD width="50"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/up.gif" CommandName="NavigationBar" CommandArgument="Up" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
                  <TD width="50"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/reload.gif" CommandName="NavigationBar" CommandArgument="Reload" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
                  <TD width="5"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/seperator.gif"></asp:ImageButton></TD>
                  <TD width="50"><asp:DropDownList ID="ListType" runat="server" OnSelectedIndexChanged="ListType_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></TD>
                  <TD width="5"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/seperator.gif"></asp:ImageButton></TD>
                  <asp:PlaceHolder ID="phInsert" runat="server">
                  <TD width="55"><nobr>
                    <asp:HyperLink ID="UploadLink" NavigateUrl="javascript:undefined;" runat="server">
                      <asp:ImageButton  runat="server" ImageUrl="~/sitefiles/bairong/icons/add.gif" ImageAlign="AbsBottom"></asp:ImageButton>
                      上传文件</asp:HyperLink>&nbsp;
                    </nobr></TD>
				  <TD width="55"><nobr>
                    <asp:HyperLink ID="WriteLink" NavigateUrl="javascript:undefined;" runat="server">
                      <asp:ImageButton  runat="server" ImageUrl="~/sitefiles/bairong/icons/write.gif" ImageAlign="AbsBottom"></asp:ImageButton>
                      新建文件</asp:HyperLink>&nbsp;
                    </nobr></TD>
                  </asp:PlaceHolder>
                  <TD width="50"><asp:ImageButton ID="CreateButton" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/create.gif"></asp:ImageButton></TD>
                  <TD width="50"><asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/delete.gif" CommandName="NavigationBar" CommandArgument="Delete" OnCommand="LinkButton_Command"></asp:ImageButton></TD>
				  <td></td>
                </TR>
                <TR>
                  <td width="55">&nbsp;<input id="CheckAll" type="checkbox" onClick="_checkFormAll(this.checked);"><label for="CheckAll">全选</label></td>
				  <TD colspan="10" align="left"><asp:ImageButton runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/seperator.gif" ImageAlign="AbsMiddle"></asp:ImageButton>&nbsp;当前目录：
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
