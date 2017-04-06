<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserMerge" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">合并用户组</div>
    <div class="tips">合并用户组会将当前用户组下的所有用户合并到目标用户组中去, 同时删除当前用户组的所有信息<br>
      目标用户组为积分用户组时，原用户组下的用户积分将发生相应变化</div>
    <table cellspacing="3" cellpadding="4" width="400" align="center">
      <tr>
        <td width="25%" align="center" valign="middle"> 原用户组:</td>
        <td width="25%" align="center" valign="middle"><asp:DropDownList ID="ddlGroupSource" runat="server"></asp:DropDownList></td>
        <td width="25%" align="center" valign="middle">合并到用户组:&nbsp;</td>
        <td width="25%" align="center" valign="middle"><asp:DropDownList ID="ddlGroupDestination" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td colspan="4" align="center" valign="middle"><asp:Button OnClick="Button1_OnClick" class="button" Text="提 交" runat="server" /></td>
      </tr>
    </table>
  </DIV>
  <br>
  <DIV class="column">
    <div class="columntitle">合并用户</div>
    <div class="tips">合并用户将会把原用户的投稿、评论、反馈等全部转入目标用户, 同时删除原用户</div>
    <table cellspacing="3" cellpadding="4" width="550" align="center">
      <tr>
        <td width="25%" align="center" valign="middle">原用户名1:&nbsp;</td>
        <td width="25%" align="center" valign="middle"><asp:TextBox ID="tbUserID1" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="150"></asp:TextBox></td>
        <td width="25%" align="center" valign="middle">原用户名2:&nbsp;</td>
        <td width="25%" align="center" valign="middle"><asp:TextBox ID="tbUserID2" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="150"></asp:TextBox></td>
      </tr>
      <tr>
        <td align="center" valign="middle">原用户名3:&nbsp;</td>
        <td align="center" valign="middle"><asp:TextBox ID="tbUserID3" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="150"></asp:TextBox></td>
        <td align="center" valign="middle">合并到目标用户:&nbsp;</td>
        <td align="center" valign="middle"><asp:TextBox ID="tbUserIDDestination" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="150"></asp:TextBox></td>
      </tr>
      <tr>
        <td colspan="4" align="center" valign="middle"><asp:Button OnClick="Button2_OnClick" class="button" Text="提 交" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</html>