<%@ Page Language="C#" Inherits="UserCenter.System.Platform.FileManagement" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />

<script language="javascript" charset="gb2312" src="/sitefiles/bairong/scripts/global.v1.3.5.js"></script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="Form1" style="margin:0" runat="server">
  <table cellspacing="0" cellpadding="0" style="width:100%;"class="O2">
    <tr>
      <td style="padding:1px 0 1px 5px;" width="60">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/back.gif" CommandName="NavigationBar" CommandArgument="Back" OnCommand="LinkButton_Command"></asp:ImageButton>
      </td>
      <td style="width:60px;padding:0;">
      <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/up.gif" CommandName="NavigationBar" CommandArgument="Up" OnCommand="LinkButton_Command"></asp:ImageButton>
      </td>
      <td style="width:60px;padding:0;">
      <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/reload.gif" CommandName="NavigationBar" CommandArgument="Reload" OnCommand="LinkButton_Command"></asp:ImageButton>
      </td>
      <td class="o_title2" style="width:6px;font-size:1px;padding:0;">&nbsp;</td>
      <td style="width:110px;padding:0;" align="center">
      <asp:DropDownList ID="ListType" runat="server" OnSelectedIndexChanged="ListType_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
      </td>
      <td class="o_title2" style="width:6px;font-size:1px;padding:0;">&nbsp;</td>
      <td style="width:100px;padding:0;" align="center">
      <asp:HyperLink ID="UploadLink" NavigateUrl="javascript:undefined;" style="text-decoration:none" runat="server">
            <asp:ImageButton ID="ImageButton4"  runat="server" ImageUrl="~/sitefiles/bairong/icons/add.gif" ImageAlign="AbsBottom"></asp:ImageButton>
            上传文件</asp:HyperLink>
      </td>
      <td class="o_title2" style="width:6px;font-size:1px;padding:0;">&nbsp;</td>
      <td style="width:160px;padding:0;">
      <asp:ImageButton ID="CreateButton" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/create.gif"></asp:ImageButton><asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="~/sitefiles/bairong/icons/filesystem/management/delete.gif" CommandName="NavigationBar" CommandArgument="Delete" OnCommand="LinkButton_Command"></asp:ImageButton>
      </td>
      <td></td>
    </tr>
    <tr>
      <td style="padding:1px 0 1px 5px;" height="30" width="60">
        <input id="CheckAll" type="checkbox" onClick="_checkFormAll(this.checked);">
          <label for="CheckAll">全选</label>
      </td>
      <td colspan="9" class="o_title2" align="left">当前目录：<asp:Literal ID="ltlCurrentDirectory" runat="server"></asp:Literal></td>
    </tr>
  </table>
<br>

  <DIV class="column" style="width:100%;">
    <asp:Literal id="ltlFileSystems" runat="server"></asp:Literal>
  </DIV>
</form>
</body>
</html>
