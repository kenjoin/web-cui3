<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundAnnouncementAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />
      公告</div>
    <table cellpadding="5" cellspacing="5" border="0" width="100%">
      <tr>
        <td width="80px" align="right"> 公告标题： </td>
        <td align="left"><asp:TextBox ID="Title" class="colorblur"  style="height:20px; padding:2px; vertical-align:middle;" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60"  runat="server" Width="600px"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="Title"
                            ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
        <td align="right"> 公告内容： </td>
        <td align="left"><bairong:BaiRongEditor id="Content" runat="server"></bairong:BaiRongEditor></td>
      </tr>
    </table>
  </DIV>
  <table width="100%" align="center">
    <tr>
      <td width="2%"></td>
      <td align="left"><asp:Button ID="Submit" Text="添 加" class="button" runat="server" OnClick="Submit_Click" />
        <input type="button" id="cancel" class="button" value="返 回" onclick="location.href='background_announcement.aspx'" /></td>
    </tr>
  </table>
</form>
</body>
</html>
