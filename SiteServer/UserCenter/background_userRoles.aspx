<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserRoles" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<style>
.RolesListBox { width:200px; height:250px; border: solid 1px #000000; }
</style>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">用户角色</div>
    <table border="0" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="200" align="center"><bairong:help HelpText="请选择要分配给用户的角色（可多选）" Text="可用角色：" runat="server" ></bairong:help></td>
        <td width="50"><asp:Label ID="MessageLabel" runat="server"></asp:Label></td>
        <td width="200" align="center"><bairong:help HelpText="当前用户已经拥有的角色（可多选）" Text="用户拥有的角色：" runat="server" ></bairong:help></td>
      </tr>
      <tr>
        <td align="right" valign="top"><asp:ListBox ID="ListAvailableRoles" runat="server" SelectionMode="Multiple" Rows="14" class="RolesListBox"></asp:ListBox></td>
        <td height="100%"><table height="100%" cols="1" cellpadding="0" width="100%">
            <tr>
              <td align="center" valign="middle"><p>
                  <asp:Button class="button" id="AddRole" text=" -> " onclick="AddRole_OnClick" runat="server" />
                </p>
                <p>
                  <asp:Button class="button" id="DeleteRole" text=" <- " onclick="DeleteRole_OnClick" runat="server" />
                </p>
                <p>
                  <asp:Button class="button" id="AddRoles" text=" >> " onclick="AddRoles_OnClick" runat="server" />
                </p>
                <p>
                  <asp:Button class="button" id="DeleteRoles" text=" << " onclick="DeleteRoles_OnClick" runat="server" />
                </p></td>
            </tr>
          </table></td>
        <td valign="top" ><asp:ListBox ID="ListAssignedRoles" runat="server" SelectionMode="Multiple" Rows="14" class="RolesListBox"></asp:ListBox></td>
      </tr>
      <tr>
        <td colspan="3" height="30" align="center"><input type=button class="button" onClick="location.href='background_administrator.aspx';" value="确 定" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>