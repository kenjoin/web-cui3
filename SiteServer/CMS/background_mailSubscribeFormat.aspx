<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundMailSubscribeFormat" %>
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
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">邮件格式设置</div>
    <div class="tips">提示：邮件订阅功能在模板中使用&lt;stl:action type=&quot;MailSubscribe&quot;&gt;&lt;/stl:action&gt;实现，邮件格式在此配置</div>
    <table width="95%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td align="left" width="100"><bairong:help HelpText="设置邮件标题" Text="邮件标题：" runat="server" ></bairong:help></td>
        <td align="left" width="190"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="MailSubscribeTitle" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="MailSubscribeTitle"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/></td>
        <td align="left">系统发送的邮件标题，不支持 HTML。</td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置邮件正文" Text="邮件正文：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Rows="8" Columns="60" id="MailSubscribeContent" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="MailSubscribeContent"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/></td>
        <td align="left">系统发送的邮件正文。标题内容均支持变量替换，可以使用如下变量:<BR>
          {receiver} : 邮件接收者<BR>
          {time} :   订阅时间<BR>
          {sitename} : 站点名称<br>
          {siteurl}
          : 站点地址<br>
          {unsubscribeurl}
          : 退订地址</td>
      </tr>
      <tr>
        <td colspan="3" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
