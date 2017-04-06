<%@ Page Language="C#" validateRequest="false" Inherits="BaiRong.BackgroundPages.BackgroundDBSqlExecute" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">执行SQL命令</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="需要执行的SQL语句，此SQL语句将直接对数据库进行操作。" Text="SQL命令：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" Rows="6" id="CmdString" TextMode="MultiLine" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="CmdString" ErrorMessage="*" Display="Dynamic"
                                    runat="server" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="在系统配置文件中分配的加密字符串，必须有此验证码管理员才可执行SQL命令。" Text="验证码：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" id="CheckCode" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="CheckCode" ErrorMessage="*" Display="Dynamic"
                                    runat="server" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="执 行" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
