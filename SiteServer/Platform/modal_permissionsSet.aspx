<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.Modal.PermissionsSet" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>权限设置</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body style="background-color:#FFFFFF">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="140" align="left"><bairong:help HelpText="设置管理员的级别" Text="管理员级别：" runat="server" ></bairong:help></td>
      <td  align="left"><asp:DropDownList ID="PredefinedRole" AutoPostBack="true" OnSelectedIndexChanged="PredefinedRole_SelectedIndexChanged" runat="server"></asp:DropDownList></td>
    </tr>
    <tr id="RolesRow" runat="server">
      <td colspan="2" align="left"><table border="0" width="100%" align="center" cellpadding="3" cellspacing="3">
          <tr>
            <td align="right"><bairong:help HelpText="请选择要分配给用户的角色（可多选）" Text="可用的角色：" runat="server" ></bairong:help></td>
            <td width="50">&nbsp;</td>
            <td align="left"><bairong:help HelpText="当前用户已经拥有的角色（可多选）" Text="用户拥有的角色：" runat="server" ></bairong:help></td>
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
        </table></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
